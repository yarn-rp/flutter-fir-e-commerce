import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_fir_e_commerce/src/category/data/error/category_exceptions.dart';
import 'package:flutter_fir_e_commerce/src/category/data/models/category_model/category_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class CategoryRemoteDataSource {
  CategoryRemoteDataSource(FirebaseFirestore firestore)
      : _firestore = firestore,
        categoriesCollection =
            firestore.collection('category').withConverter<CategoryModel>(
                  fromFirestore: CategoryModel.fromFirestore,
                  toFirestore: (c, options) => c.toJson(),
                );

  late final CollectionReference<CategoryModel> categoriesCollection;
  late final FirebaseFirestore _firestore;

  Future<CategoryModel> createCategory({
    required CategoryModel category,
  }) async {
    try {
      final categoryExists = await anyCategoryWithName(category.name);
      if (!categoryExists) {
        final doc = categoriesCollection.doc(category.name);
        await doc.set(category);
        return (await doc.get()).data()!;
      } else {
        throw CategoryAlreadyExistedException();
      }
    } catch (e) {
      //TODO(yarn): should catch the firebase exception and transformed it into an internal exception
      rethrow;
    }
  }

  Future<void> deleteCategory({
    required String categoryId,
  }) async {
    log('Deleting category: ${categoryId}');
    try {
      final categoryExists = await anyCategoryWithName(categoryId);
      log('Ctegory with name${categoryId} exists? $categoryExists');
      if (categoryExists) {
        await categoriesCollection.doc(categoryId).get();
        final doc = categoriesCollection.doc(categoryId);
        return _firestore.runTransaction(
          //TODO: add remove all products with categoryID = to category
          (transaction) => doc.delete(),
        );
      } else {
        throw CategoryNoExistedException();
      }
    } catch (e) {
      //TODO(yarn): should catch the firebase exception and transformed it into an internal exception
      rethrow;
    }
  }

  Future<bool> anyCategoryWithName(String name) async {
    final doc = await categoriesCollection.doc(name).get();
    return doc.exists;
  }

  Future<CategoryModel> getCategoryWithId(String id) =>
      (categoriesCollection.doc(id).get()).then((value) {
        if (value.exists) {
          return value.data()!;
        }
        throw CategoryNoExistedException();
      });

  Future<Iterable<CategoryModel>> getCategories({
    required String query,
    required int skip,
    required int take,
  }) async {
    try {
      final categoriesQuery = categoriesCollection
          .where('name', isGreaterThanOrEqualTo: query)
          .where(
            'name',
            isLessThan: '${query}z',
          )
          .orderBy('name')
          .startAfter([skip]).limit(take);
      return (await categoriesQuery.get()).docs.map(
            (e) => e.data(),
          );
    } catch (e) {
      //TODO(yarn): should catch the firebase exception and transformed it into an internal exception
      rethrow;
    }
  }
}

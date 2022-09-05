import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_fir_e_commerce/src/category/data/models/category_read_model/category_read_model.dart';
import 'package:flutter_fir_e_commerce/src/category/data/models/category_write_model/category_write_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class CategoryRemoteDataSource {
  CategoryRemoteDataSource()
      : categoriesCollection =
            FirebaseFirestore.instance.collection('category');

  late final CollectionReference categoriesCollection;

  Future<void> createCategory({required CategoryWriteModel category}) async {
    try {
      final _ = await categoriesCollection.add(category.toJson());
    } catch (e) {
      //TODO(yarn): should catch the firebase exception and transformed it into an internal exception
      rethrow;
    }
  }

  Future<Iterable<CategoryReadModel>> getCategories({
    required String query,
    required int skip,
    required int take,
  }) async {
    try {
      final categoriesQuery = categoriesCollection
          .where('fieldName', isGreaterThanOrEqualTo: query)
          .where(
            'fieldName',
            isLessThan: '${query}z',
          )
          .startAfter([skip]).limit(take);
      return (await categoriesQuery.get()).docs.map(
            (e) => CategoryReadModel.fromJson(e.data() as Map<String, dynamic>),
          );
    } catch (e) {
      //TODO(yarn): should catch the firebase exception and transformed it into an internal exception
      rethrow;
    }
  }
}

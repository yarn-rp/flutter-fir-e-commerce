import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_fir_e_commerce/src/product/data/error/product_exceptions.dart';
import 'package:flutter_fir_e_commerce/src/product/data/models/product_model.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_product_details_usecase.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProductRemoteDataSource {
  ProductRemoteDataSource(FirebaseFirestore firestore)
      : _firestore = firestore,
        productsCollection =
            firestore.collection('product').withConverter<ProductModel>(
                  fromFirestore: ProductModel.fromFirestore,
                  toFirestore: (c, options) => c.toJson(),
                );

  late final CollectionReference<ProductModel> productsCollection;

  late final FirebaseFirestore _firestore;

  Future<ProductModel> createProduct({
    required ProductModel product,
  }) async {
    try {
      final doc = productsCollection.doc();
      await doc.set(product.withId(doc.id));
      return (await doc.get()).data()!;
    } catch (e) {
      //TODO(yarn): should catch the firebase exception and transformed it into an internal exception
      rethrow;
    }
  }

  Future<bool> anyProductWithId(String id) async {
    final doc = await productsCollection.doc(id).get();
    return doc.exists;
  }

  Stream<Iterable<ProductModel>> get favoriteProductsStream =>
      productsCollection.where('isFavorite', isEqualTo: true).snapshots().map(
            (event) => event.docs.map(
              (e) => e.data(),
            ),
          );

  Future<ProductModel> getProductDetails(String productId) async {
    try {
      final productExists = await anyProductWithId(productId);

      if (productExists) {
        return (await productsCollection.doc(productId).get()).data()!;
      } else {
        throw ProductNoExistedException();
      }
    } catch (e) {
      //TODO(yarn): should catch the firebase exception and transformed it into an internal exception
      rethrow;
    }
  }

  Future<void> addProductToFavorites(String productId) =>
      _setProductIsFavorite(productId, true);

  Future<void> removeProductFromFavorites(String productId) =>
      _setProductIsFavorite(productId, false);

  Future<void> deleteProduct({
    required String productId,
  }) async {
    try {
      final productExists = await anyProductWithId(productId);

      if (productExists) {
        await productsCollection.doc(productId).get();
        final doc = productsCollection.doc(productId);
        await doc.delete();
      } else {
        throw ProductNoExistedException();
      }
    } catch (e) {
      //TODO(yarn): should catch the firebase exception and transformed it into an internal exception
      rethrow;
    }
  }

  Future<Iterable<ProductModel>> getProducts({
    required String query,
    required int skip,
    required int take,
  }) async {
    try {
      final productsQuery = productsCollection
          .where('name', isGreaterThanOrEqualTo: query)
          .where(
            'name',
            isLessThan: '${query}z',
          )
          .orderBy('name')
          .startAfter([skip]).limit(take);
      return (await productsQuery.get()).docs.map(
            (e) => e.data(),
          );
    } catch (e) {
      //TODO(yarn): should catch the firebase exception and transformed it into an internal exception
      rethrow;
    }
  }

  Future<void> _setProductIsFavorite(String productId, bool value) async {
    try {
      final productExists = await anyProductWithId(productId);
      log('Putting product favorite in ${value}');
      if (productExists) {
        return productsCollection.doc(productId).update({'isFavorite': value});
      } else {
        throw ProductNoExistedException();
      }
    } catch (e) {
      //TODO(yarn): should catch the firebase exception and transformed it into an internal exception
      rethrow;
    }
  }
}

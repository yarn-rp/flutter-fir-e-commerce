import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/usecases/remove_product_from_favorites.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/usecases/remove_product_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRemovableProductRepository extends Mock
    implements RemovableProductRepository {}

void main() {
  group('RemoveProductUseCase', () {
    final mockRepository = MockRemovableProductRepository();
    final removeProduct = RemoveProductUseCase(mockRepository);
    test('should return Right(unit) in case everything goes ', () {
      // Test that object meets criteria x when condition y is met.
    });

    test('should p when q', () {
      // Test that object meets criteria p when condition q is met.
    });
  });
}

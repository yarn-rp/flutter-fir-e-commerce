import 'package:bloc/bloc.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_product_details_usecase.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_products_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_details_state.dart';
part 'product_details_cubit.freezed.dart';

@injectable
class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit(this.getProductsUseCase)
      : super(const ProductDetailsState.initial());

  final GetProductDetailsUseCase getProductsUseCase;

  Future<void> getProductDetails(String productId) async {
    emit(const ProductDetailsState.loading());

    final productOrFailure =
        await getProductsUseCase(GetProductDetailsParams(id: productId));

    emit(
      productOrFailure.fold(
        (failure) => ProductDetailsState.error(failure: failure),
        (r) => ProductDetailsState.success(product: r),
      ),
    );
  }
}

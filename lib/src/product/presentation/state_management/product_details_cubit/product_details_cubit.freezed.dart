// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Product? product) loading,
    required TResult Function(Product product) success,
    required TResult Function(Failure failure, Product? product) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Product? product)? loading,
    TResult Function(Product product)? success,
    TResult Function(Failure failure, Product? product)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Product? product)? loading,
    TResult Function(Product product)? success,
    TResult Function(Failure failure, Product? product)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsInitial value) initial,
    required TResult Function(ProductDetailsLoading value) loading,
    required TResult Function(ProductDetailsSuccess value) success,
    required TResult Function(ProductDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsStateCopyWith<$Res> {
  factory $ProductDetailsStateCopyWith(
          ProductDetailsState value, $Res Function(ProductDetailsState) then) =
      _$ProductDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._value, this._then);

  final ProductDetailsState _value;
  // ignore: unused_field
  final $Res Function(ProductDetailsState) _then;
}

/// @nodoc
abstract class _$$ProductDetailsInitialCopyWith<$Res> {
  factory _$$ProductDetailsInitialCopyWith(_$ProductDetailsInitial value,
          $Res Function(_$ProductDetailsInitial) then) =
      __$$ProductDetailsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductDetailsInitialCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res>
    implements _$$ProductDetailsInitialCopyWith<$Res> {
  __$$ProductDetailsInitialCopyWithImpl(_$ProductDetailsInitial _value,
      $Res Function(_$ProductDetailsInitial) _then)
      : super(_value, (v) => _then(v as _$ProductDetailsInitial));

  @override
  _$ProductDetailsInitial get _value => super._value as _$ProductDetailsInitial;
}

/// @nodoc

class _$ProductDetailsInitial implements ProductDetailsInitial {
  const _$ProductDetailsInitial();

  @override
  String toString() {
    return 'ProductDetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductDetailsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Product? product) loading,
    required TResult Function(Product product) success,
    required TResult Function(Failure failure, Product? product) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Product? product)? loading,
    TResult Function(Product product)? success,
    TResult Function(Failure failure, Product? product)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Product? product)? loading,
    TResult Function(Product product)? success,
    TResult Function(Failure failure, Product? product)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsInitial value) initial,
    required TResult Function(ProductDetailsLoading value) loading,
    required TResult Function(ProductDetailsSuccess value) success,
    required TResult Function(ProductDetailsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsInitial implements ProductDetailsState {
  const factory ProductDetailsInitial() = _$ProductDetailsInitial;
}

/// @nodoc
abstract class _$$ProductDetailsLoadingCopyWith<$Res> {
  factory _$$ProductDetailsLoadingCopyWith(_$ProductDetailsLoading value,
          $Res Function(_$ProductDetailsLoading) then) =
      __$$ProductDetailsLoadingCopyWithImpl<$Res>;
  $Res call({Product? product});
}

/// @nodoc
class __$$ProductDetailsLoadingCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res>
    implements _$$ProductDetailsLoadingCopyWith<$Res> {
  __$$ProductDetailsLoadingCopyWithImpl(_$ProductDetailsLoading _value,
      $Res Function(_$ProductDetailsLoading) _then)
      : super(_value, (v) => _then(v as _$ProductDetailsLoading));

  @override
  _$ProductDetailsLoading get _value => super._value as _$ProductDetailsLoading;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$ProductDetailsLoading(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$ProductDetailsLoading implements ProductDetailsLoading {
  const _$ProductDetailsLoading({this.product});

  @override
  final Product? product;

  @override
  String toString() {
    return 'ProductDetailsState.loading(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsLoading &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$ProductDetailsLoadingCopyWith<_$ProductDetailsLoading> get copyWith =>
      __$$ProductDetailsLoadingCopyWithImpl<_$ProductDetailsLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Product? product) loading,
    required TResult Function(Product product) success,
    required TResult Function(Failure failure, Product? product) error,
  }) {
    return loading(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Product? product)? loading,
    TResult Function(Product product)? success,
    TResult Function(Failure failure, Product? product)? error,
  }) {
    return loading?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Product? product)? loading,
    TResult Function(Product product)? success,
    TResult Function(Failure failure, Product? product)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsInitial value) initial,
    required TResult Function(ProductDetailsLoading value) loading,
    required TResult Function(ProductDetailsSuccess value) success,
    required TResult Function(ProductDetailsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsLoading implements ProductDetailsState {
  const factory ProductDetailsLoading({final Product? product}) =
      _$ProductDetailsLoading;

  Product? get product;
  @JsonKey(ignore: true)
  _$$ProductDetailsLoadingCopyWith<_$ProductDetailsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailsSuccessCopyWith<$Res> {
  factory _$$ProductDetailsSuccessCopyWith(_$ProductDetailsSuccess value,
          $Res Function(_$ProductDetailsSuccess) then) =
      __$$ProductDetailsSuccessCopyWithImpl<$Res>;
  $Res call({Product product});
}

/// @nodoc
class __$$ProductDetailsSuccessCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res>
    implements _$$ProductDetailsSuccessCopyWith<$Res> {
  __$$ProductDetailsSuccessCopyWithImpl(_$ProductDetailsSuccess _value,
      $Res Function(_$ProductDetailsSuccess) _then)
      : super(_value, (v) => _then(v as _$ProductDetailsSuccess));

  @override
  _$ProductDetailsSuccess get _value => super._value as _$ProductDetailsSuccess;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$ProductDetailsSuccess(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$ProductDetailsSuccess implements ProductDetailsSuccess {
  const _$ProductDetailsSuccess({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductDetailsState.success(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsSuccess &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$ProductDetailsSuccessCopyWith<_$ProductDetailsSuccess> get copyWith =>
      __$$ProductDetailsSuccessCopyWithImpl<_$ProductDetailsSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Product? product) loading,
    required TResult Function(Product product) success,
    required TResult Function(Failure failure, Product? product) error,
  }) {
    return success(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Product? product)? loading,
    TResult Function(Product product)? success,
    TResult Function(Failure failure, Product? product)? error,
  }) {
    return success?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Product? product)? loading,
    TResult Function(Product product)? success,
    TResult Function(Failure failure, Product? product)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsInitial value) initial,
    required TResult Function(ProductDetailsLoading value) loading,
    required TResult Function(ProductDetailsSuccess value) success,
    required TResult Function(ProductDetailsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsSuccess implements ProductDetailsState {
  const factory ProductDetailsSuccess({required final Product product}) =
      _$ProductDetailsSuccess;

  Product get product;
  @JsonKey(ignore: true)
  _$$ProductDetailsSuccessCopyWith<_$ProductDetailsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailsErrorCopyWith<$Res> {
  factory _$$ProductDetailsErrorCopyWith(_$ProductDetailsError value,
          $Res Function(_$ProductDetailsError) then) =
      __$$ProductDetailsErrorCopyWithImpl<$Res>;
  $Res call({Failure failure, Product? product});
}

/// @nodoc
class __$$ProductDetailsErrorCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res>
    implements _$$ProductDetailsErrorCopyWith<$Res> {
  __$$ProductDetailsErrorCopyWithImpl(
      _$ProductDetailsError _value, $Res Function(_$ProductDetailsError) _then)
      : super(_value, (v) => _then(v as _$ProductDetailsError));

  @override
  _$ProductDetailsError get _value => super._value as _$ProductDetailsError;

  @override
  $Res call({
    Object? failure = freezed,
    Object? product = freezed,
  }) {
    return _then(_$ProductDetailsError(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$ProductDetailsError implements ProductDetailsError {
  const _$ProductDetailsError({required this.failure, this.product});

  @override
  final Failure failure;
  @override
  final Product? product;

  @override
  String toString() {
    return 'ProductDetailsState.error(failure: $failure, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsError &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$ProductDetailsErrorCopyWith<_$ProductDetailsError> get copyWith =>
      __$$ProductDetailsErrorCopyWithImpl<_$ProductDetailsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Product? product) loading,
    required TResult Function(Product product) success,
    required TResult Function(Failure failure, Product? product) error,
  }) {
    return error(failure, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Product? product)? loading,
    TResult Function(Product product)? success,
    TResult Function(Failure failure, Product? product)? error,
  }) {
    return error?.call(failure, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Product? product)? loading,
    TResult Function(Product product)? success,
    TResult Function(Failure failure, Product? product)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsInitial value) initial,
    required TResult Function(ProductDetailsLoading value) loading,
    required TResult Function(ProductDetailsSuccess value) success,
    required TResult Function(ProductDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsInitial value)? initial,
    TResult Function(ProductDetailsLoading value)? loading,
    TResult Function(ProductDetailsSuccess value)? success,
    TResult Function(ProductDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsError implements ProductDetailsState {
  const factory ProductDetailsError(
      {required final Failure failure,
      final Product? product}) = _$ProductDetailsError;

  Failure get failure;
  Product? get product;
  @JsonKey(ignore: true)
  _$$ProductDetailsErrorCopyWith<_$ProductDetailsError> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Product>? products, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Product> products) loaded,
    required TResult Function(Iterable<Product>? products) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? loaded,
    TResult Function(Iterable<Product>? products)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? loaded,
    TResult Function(Iterable<Product>? products)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsLoaded value) loaded,
    required TResult Function(ProductsLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoaded value)? loaded,
    TResult Function(ProductsLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoaded value)? loaded,
    TResult Function(ProductsLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;
}

/// @nodoc
abstract class _$$ProductsErrorCopyWith<$Res> {
  factory _$$ProductsErrorCopyWith(
          _$ProductsError value, $Res Function(_$ProductsError) then) =
      __$$ProductsErrorCopyWithImpl<$Res>;
  $Res call({Iterable<Product>? products, Failure failure});
}

/// @nodoc
class __$$ProductsErrorCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$ProductsErrorCopyWith<$Res> {
  __$$ProductsErrorCopyWithImpl(
      _$ProductsError _value, $Res Function(_$ProductsError) _then)
      : super(_value, (v) => _then(v as _$ProductsError));

  @override
  _$ProductsError get _value => super._value as _$ProductsError;

  @override
  $Res call({
    Object? products = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$ProductsError(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Iterable<Product>?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ProductsError extends ProductsError {
  const _$ProductsError({this.products, required this.failure}) : super._();

  @override
  final Iterable<Product>? products;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'ProductState.error(products: $products, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsError &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$ProductsErrorCopyWith<_$ProductsError> get copyWith =>
      __$$ProductsErrorCopyWithImpl<_$ProductsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Product>? products, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Product> products) loaded,
    required TResult Function(Iterable<Product>? products) loading,
  }) {
    return error(products, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? loaded,
    TResult Function(Iterable<Product>? products)? loading,
  }) {
    return error?.call(products, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? loaded,
    TResult Function(Iterable<Product>? products)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(products, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsLoaded value) loaded,
    required TResult Function(ProductsLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoaded value)? loaded,
    TResult Function(ProductsLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoaded value)? loaded,
    TResult Function(ProductsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductsError extends ProductState {
  const factory ProductsError(
      {final Iterable<Product>? products,
      required final Failure failure}) = _$ProductsError;
  const ProductsError._() : super._();

  Iterable<Product>? get products;
  Failure get failure;
  @JsonKey(ignore: true)
  _$$ProductsErrorCopyWith<_$ProductsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Product>? products, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Product> products) loaded,
    required TResult Function(Iterable<Product>? products) loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? loaded,
    TResult Function(Iterable<Product>? products)? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? loaded,
    TResult Function(Iterable<Product>? products)? loading,
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
    required TResult Function(ProductsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsLoaded value) loaded,
    required TResult Function(ProductsLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoaded value)? loaded,
    TResult Function(ProductsLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoaded value)? loaded,
    TResult Function(ProductsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ProductState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$ProductsLoadedCopyWith<$Res> {
  factory _$$ProductsLoadedCopyWith(
          _$ProductsLoaded value, $Res Function(_$ProductsLoaded) then) =
      __$$ProductsLoadedCopyWithImpl<$Res>;
  $Res call({Iterable<Product> products});
}

/// @nodoc
class __$$ProductsLoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$ProductsLoadedCopyWith<$Res> {
  __$$ProductsLoadedCopyWithImpl(
      _$ProductsLoaded _value, $Res Function(_$ProductsLoaded) _then)
      : super(_value, (v) => _then(v as _$ProductsLoaded));

  @override
  _$ProductsLoaded get _value => super._value as _$ProductsLoaded;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$ProductsLoaded(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Iterable<Product>,
    ));
  }
}

/// @nodoc

class _$ProductsLoaded extends ProductsLoaded {
  const _$ProductsLoaded({required this.products}) : super._();

  @override
  final Iterable<Product> products;

  @override
  String toString() {
    return 'ProductState.loaded(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLoaded &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$$ProductsLoadedCopyWith<_$ProductsLoaded> get copyWith =>
      __$$ProductsLoadedCopyWithImpl<_$ProductsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Product>? products, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Product> products) loaded,
    required TResult Function(Iterable<Product>? products) loading,
  }) {
    return loaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? loaded,
    TResult Function(Iterable<Product>? products)? loading,
  }) {
    return loaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? loaded,
    TResult Function(Iterable<Product>? products)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsLoaded value) loaded,
    required TResult Function(ProductsLoading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoaded value)? loaded,
    TResult Function(ProductsLoading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoaded value)? loaded,
    TResult Function(ProductsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProductsLoaded extends ProductState {
  const factory ProductsLoaded({required final Iterable<Product> products}) =
      _$ProductsLoaded;
  const ProductsLoaded._() : super._();

  Iterable<Product> get products;
  @JsonKey(ignore: true)
  _$$ProductsLoadedCopyWith<_$ProductsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsLoadingCopyWith<$Res> {
  factory _$$ProductsLoadingCopyWith(
          _$ProductsLoading value, $Res Function(_$ProductsLoading) then) =
      __$$ProductsLoadingCopyWithImpl<$Res>;
  $Res call({Iterable<Product>? products});
}

/// @nodoc
class __$$ProductsLoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$ProductsLoadingCopyWith<$Res> {
  __$$ProductsLoadingCopyWithImpl(
      _$ProductsLoading _value, $Res Function(_$ProductsLoading) _then)
      : super(_value, (v) => _then(v as _$ProductsLoading));

  @override
  _$ProductsLoading get _value => super._value as _$ProductsLoading;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$ProductsLoading(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Iterable<Product>?,
    ));
  }
}

/// @nodoc

class _$ProductsLoading extends ProductsLoading {
  const _$ProductsLoading({this.products}) : super._();

  @override
  final Iterable<Product>? products;

  @override
  String toString() {
    return 'ProductState.loading(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLoading &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$$ProductsLoadingCopyWith<_$ProductsLoading> get copyWith =>
      __$$ProductsLoadingCopyWithImpl<_$ProductsLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Product>? products, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Product> products) loaded,
    required TResult Function(Iterable<Product>? products) loading,
  }) {
    return loading(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? loaded,
    TResult Function(Iterable<Product>? products)? loading,
  }) {
    return loading?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? loaded,
    TResult Function(Iterable<Product>? products)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsLoaded value) loaded,
    required TResult Function(ProductsLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoaded value)? loaded,
    TResult Function(ProductsLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoaded value)? loaded,
    TResult Function(ProductsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductsLoading extends ProductState {
  const factory ProductsLoading({final Iterable<Product>? products}) =
      _$ProductsLoading;
  const ProductsLoading._() : super._();

  Iterable<Product>? get products;
  @JsonKey(ignore: true)
  _$$ProductsLoadingCopyWith<_$ProductsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

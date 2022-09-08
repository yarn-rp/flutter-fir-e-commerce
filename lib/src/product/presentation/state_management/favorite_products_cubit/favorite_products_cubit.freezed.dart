// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Product>? products, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Product> products) success,
    required TResult Function(Iterable<Product>? products) processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? success,
    TResult Function(Iterable<Product>? products)? processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? success,
    TResult Function(Iterable<Product>? products)? processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteProductsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(FavoriteProductsSuccess value) success,
    required TResult Function(FavoriteProductsProcessing value) processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoriteProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteProductsSuccess value)? success,
    TResult Function(FavoriteProductsProcessing value)? processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteProductsSuccess value)? success,
    TResult Function(FavoriteProductsProcessing value)? processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteProductsStateCopyWith<$Res> {
  factory $FavoriteProductsStateCopyWith(FavoriteProductsState value,
          $Res Function(FavoriteProductsState) then) =
      _$FavoriteProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteProductsStateCopyWithImpl<$Res>
    implements $FavoriteProductsStateCopyWith<$Res> {
  _$FavoriteProductsStateCopyWithImpl(this._value, this._then);

  final FavoriteProductsState _value;
  // ignore: unused_field
  final $Res Function(FavoriteProductsState) _then;
}

/// @nodoc
abstract class _$$FavoriteProductsErrorCopyWith<$Res> {
  factory _$$FavoriteProductsErrorCopyWith(_$FavoriteProductsError value,
          $Res Function(_$FavoriteProductsError) then) =
      __$$FavoriteProductsErrorCopyWithImpl<$Res>;
  $Res call({Iterable<Product>? products, Failure failure});
}

/// @nodoc
class __$$FavoriteProductsErrorCopyWithImpl<$Res>
    extends _$FavoriteProductsStateCopyWithImpl<$Res>
    implements _$$FavoriteProductsErrorCopyWith<$Res> {
  __$$FavoriteProductsErrorCopyWithImpl(_$FavoriteProductsError _value,
      $Res Function(_$FavoriteProductsError) _then)
      : super(_value, (v) => _then(v as _$FavoriteProductsError));

  @override
  _$FavoriteProductsError get _value => super._value as _$FavoriteProductsError;

  @override
  $Res call({
    Object? products = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$FavoriteProductsError(
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

class _$FavoriteProductsError extends FavoriteProductsError {
  const _$FavoriteProductsError({this.products, required this.failure})
      : super._();

  @override
  final Iterable<Product>? products;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'FavoriteProductsState.error(products: $products, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteProductsError &&
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
  _$$FavoriteProductsErrorCopyWith<_$FavoriteProductsError> get copyWith =>
      __$$FavoriteProductsErrorCopyWithImpl<_$FavoriteProductsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Product>? products, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Product> products) success,
    required TResult Function(Iterable<Product>? products) processing,
  }) {
    return error(products, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? success,
    TResult Function(Iterable<Product>? products)? processing,
  }) {
    return error?.call(products, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? success,
    TResult Function(Iterable<Product>? products)? processing,
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
    required TResult Function(FavoriteProductsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(FavoriteProductsSuccess value) success,
    required TResult Function(FavoriteProductsProcessing value) processing,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoriteProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteProductsSuccess value)? success,
    TResult Function(FavoriteProductsProcessing value)? processing,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteProductsSuccess value)? success,
    TResult Function(FavoriteProductsProcessing value)? processing,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoriteProductsError extends FavoriteProductsState {
  const factory FavoriteProductsError(
      {final Iterable<Product>? products,
      required final Failure failure}) = _$FavoriteProductsError;
  const FavoriteProductsError._() : super._();

  Iterable<Product>? get products;
  Failure get failure;
  @JsonKey(ignore: true)
  _$$FavoriteProductsErrorCopyWith<_$FavoriteProductsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FavoriteProductsStateCopyWithImpl<$Res>
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
    return 'FavoriteProductsState.initial()';
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
    required TResult Function(Iterable<Product> products) success,
    required TResult Function(Iterable<Product>? products) processing,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? success,
    TResult Function(Iterable<Product>? products)? processing,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? success,
    TResult Function(Iterable<Product>? products)? processing,
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
    required TResult Function(FavoriteProductsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(FavoriteProductsSuccess value) success,
    required TResult Function(FavoriteProductsProcessing value) processing,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoriteProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteProductsSuccess value)? success,
    TResult Function(FavoriteProductsProcessing value)? processing,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteProductsSuccess value)? success,
    TResult Function(FavoriteProductsProcessing value)? processing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends FavoriteProductsState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$FavoriteProductsSuccessCopyWith<$Res> {
  factory _$$FavoriteProductsSuccessCopyWith(_$FavoriteProductsSuccess value,
          $Res Function(_$FavoriteProductsSuccess) then) =
      __$$FavoriteProductsSuccessCopyWithImpl<$Res>;
  $Res call({Iterable<Product> products});
}

/// @nodoc
class __$$FavoriteProductsSuccessCopyWithImpl<$Res>
    extends _$FavoriteProductsStateCopyWithImpl<$Res>
    implements _$$FavoriteProductsSuccessCopyWith<$Res> {
  __$$FavoriteProductsSuccessCopyWithImpl(_$FavoriteProductsSuccess _value,
      $Res Function(_$FavoriteProductsSuccess) _then)
      : super(_value, (v) => _then(v as _$FavoriteProductsSuccess));

  @override
  _$FavoriteProductsSuccess get _value =>
      super._value as _$FavoriteProductsSuccess;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$FavoriteProductsSuccess(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Iterable<Product>,
    ));
  }
}

/// @nodoc

class _$FavoriteProductsSuccess extends FavoriteProductsSuccess {
  const _$FavoriteProductsSuccess({required this.products}) : super._();

  @override
  final Iterable<Product> products;

  @override
  String toString() {
    return 'FavoriteProductsState.success(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteProductsSuccess &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$$FavoriteProductsSuccessCopyWith<_$FavoriteProductsSuccess> get copyWith =>
      __$$FavoriteProductsSuccessCopyWithImpl<_$FavoriteProductsSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Product>? products, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Product> products) success,
    required TResult Function(Iterable<Product>? products) processing,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? success,
    TResult Function(Iterable<Product>? products)? processing,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? success,
    TResult Function(Iterable<Product>? products)? processing,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteProductsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(FavoriteProductsSuccess value) success,
    required TResult Function(FavoriteProductsProcessing value) processing,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoriteProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteProductsSuccess value)? success,
    TResult Function(FavoriteProductsProcessing value)? processing,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteProductsSuccess value)? success,
    TResult Function(FavoriteProductsProcessing value)? processing,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FavoriteProductsSuccess extends FavoriteProductsState {
  const factory FavoriteProductsSuccess(
      {required final Iterable<Product> products}) = _$FavoriteProductsSuccess;
  const FavoriteProductsSuccess._() : super._();

  Iterable<Product> get products;
  @JsonKey(ignore: true)
  _$$FavoriteProductsSuccessCopyWith<_$FavoriteProductsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteProductsProcessingCopyWith<$Res> {
  factory _$$FavoriteProductsProcessingCopyWith(
          _$FavoriteProductsProcessing value,
          $Res Function(_$FavoriteProductsProcessing) then) =
      __$$FavoriteProductsProcessingCopyWithImpl<$Res>;
  $Res call({Iterable<Product>? products});
}

/// @nodoc
class __$$FavoriteProductsProcessingCopyWithImpl<$Res>
    extends _$FavoriteProductsStateCopyWithImpl<$Res>
    implements _$$FavoriteProductsProcessingCopyWith<$Res> {
  __$$FavoriteProductsProcessingCopyWithImpl(
      _$FavoriteProductsProcessing _value,
      $Res Function(_$FavoriteProductsProcessing) _then)
      : super(_value, (v) => _then(v as _$FavoriteProductsProcessing));

  @override
  _$FavoriteProductsProcessing get _value =>
      super._value as _$FavoriteProductsProcessing;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$FavoriteProductsProcessing(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Iterable<Product>?,
    ));
  }
}

/// @nodoc

class _$FavoriteProductsProcessing extends FavoriteProductsProcessing {
  const _$FavoriteProductsProcessing({this.products}) : super._();

  @override
  final Iterable<Product>? products;

  @override
  String toString() {
    return 'FavoriteProductsState.processing(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteProductsProcessing &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$$FavoriteProductsProcessingCopyWith<_$FavoriteProductsProcessing>
      get copyWith => __$$FavoriteProductsProcessingCopyWithImpl<
          _$FavoriteProductsProcessing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Product>? products, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Product> products) success,
    required TResult Function(Iterable<Product>? products) processing,
  }) {
    return processing(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? success,
    TResult Function(Iterable<Product>? products)? processing,
  }) {
    return processing?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Product>? products, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Product> products)? success,
    TResult Function(Iterable<Product>? products)? processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteProductsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(FavoriteProductsSuccess value) success,
    required TResult Function(FavoriteProductsProcessing value) processing,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoriteProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteProductsSuccess value)? success,
    TResult Function(FavoriteProductsProcessing value)? processing,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteProductsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteProductsSuccess value)? success,
    TResult Function(FavoriteProductsProcessing value)? processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class FavoriteProductsProcessing extends FavoriteProductsState {
  const factory FavoriteProductsProcessing(
      {final Iterable<Product>? products}) = _$FavoriteProductsProcessing;
  const FavoriteProductsProcessing._() : super._();

  Iterable<Product>? get products;
  @JsonKey(ignore: true)
  _$$FavoriteProductsProcessingCopyWith<_$FavoriteProductsProcessing>
      get copyWith => throw _privateConstructorUsedError;
}

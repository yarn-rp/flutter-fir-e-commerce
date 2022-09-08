// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shopping_items_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<Category, Iterable<Product>>? items, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Map<Category, Iterable<Product>> items) loaded,
    required TResult Function(Map<Category, Iterable<Product>>? items) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<Category, Iterable<Product>>? items, Failure failure)?
        error,
    TResult Function()? initial,
    TResult Function(Map<Category, Iterable<Product>> items)? loaded,
    TResult Function(Map<Category, Iterable<Product>>? items)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Category, Iterable<Product>>? items, Failure failure)?
        error,
    TResult Function()? initial,
    TResult Function(Map<Category, Iterable<Product>> items)? loaded,
    TResult Function(Map<Category, Iterable<Product>>? items)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoppingItemsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(ShoppingItemsLoaded value) loaded,
    required TResult Function(ShoppingItemsLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShoppingItemsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ShoppingItemsLoaded value)? loaded,
    TResult Function(ShoppingItemsLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingItemsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ShoppingItemsLoaded value)? loaded,
    TResult Function(ShoppingItemsLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingItemsStateCopyWith<$Res> {
  factory $ShoppingItemsStateCopyWith(
          ShoppingItemsState value, $Res Function(ShoppingItemsState) then) =
      _$ShoppingItemsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShoppingItemsStateCopyWithImpl<$Res>
    implements $ShoppingItemsStateCopyWith<$Res> {
  _$ShoppingItemsStateCopyWithImpl(this._value, this._then);

  final ShoppingItemsState _value;
  // ignore: unused_field
  final $Res Function(ShoppingItemsState) _then;
}

/// @nodoc
abstract class _$$ShoppingItemsErrorCopyWith<$Res> {
  factory _$$ShoppingItemsErrorCopyWith(_$ShoppingItemsError value,
          $Res Function(_$ShoppingItemsError) then) =
      __$$ShoppingItemsErrorCopyWithImpl<$Res>;
  $Res call({Map<Category, Iterable<Product>>? items, Failure failure});
}

/// @nodoc
class __$$ShoppingItemsErrorCopyWithImpl<$Res>
    extends _$ShoppingItemsStateCopyWithImpl<$Res>
    implements _$$ShoppingItemsErrorCopyWith<$Res> {
  __$$ShoppingItemsErrorCopyWithImpl(
      _$ShoppingItemsError _value, $Res Function(_$ShoppingItemsError) _then)
      : super(_value, (v) => _then(v as _$ShoppingItemsError));

  @override
  _$ShoppingItemsError get _value => super._value as _$ShoppingItemsError;

  @override
  $Res call({
    Object? items = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$ShoppingItemsError(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<Category, Iterable<Product>>?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ShoppingItemsError extends ShoppingItemsError {
  const _$ShoppingItemsError(
      {final Map<Category, Iterable<Product>>? items, required this.failure})
      : _items = items,
        super._();

  final Map<Category, Iterable<Product>>? _items;
  @override
  Map<Category, Iterable<Product>>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ShoppingItemsState.error(items: $items, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingItemsError &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$ShoppingItemsErrorCopyWith<_$ShoppingItemsError> get copyWith =>
      __$$ShoppingItemsErrorCopyWithImpl<_$ShoppingItemsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<Category, Iterable<Product>>? items, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Map<Category, Iterable<Product>> items) loaded,
    required TResult Function(Map<Category, Iterable<Product>>? items) loading,
  }) {
    return error(items, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<Category, Iterable<Product>>? items, Failure failure)?
        error,
    TResult Function()? initial,
    TResult Function(Map<Category, Iterable<Product>> items)? loaded,
    TResult Function(Map<Category, Iterable<Product>>? items)? loading,
  }) {
    return error?.call(items, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Category, Iterable<Product>>? items, Failure failure)?
        error,
    TResult Function()? initial,
    TResult Function(Map<Category, Iterable<Product>> items)? loaded,
    TResult Function(Map<Category, Iterable<Product>>? items)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(items, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoppingItemsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(ShoppingItemsLoaded value) loaded,
    required TResult Function(ShoppingItemsLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShoppingItemsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ShoppingItemsLoaded value)? loaded,
    TResult Function(ShoppingItemsLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingItemsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ShoppingItemsLoaded value)? loaded,
    TResult Function(ShoppingItemsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ShoppingItemsError extends ShoppingItemsState {
  const factory ShoppingItemsError(
      {final Map<Category, Iterable<Product>>? items,
      required final Failure failure}) = _$ShoppingItemsError;
  const ShoppingItemsError._() : super._();

  Map<Category, Iterable<Product>>? get items;
  Failure get failure;
  @JsonKey(ignore: true)
  _$$ShoppingItemsErrorCopyWith<_$ShoppingItemsError> get copyWith =>
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
    extends _$ShoppingItemsStateCopyWithImpl<$Res>
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
    return 'ShoppingItemsState.initial()';
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
    required TResult Function(
            Map<Category, Iterable<Product>>? items, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Map<Category, Iterable<Product>> items) loaded,
    required TResult Function(Map<Category, Iterable<Product>>? items) loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<Category, Iterable<Product>>? items, Failure failure)?
        error,
    TResult Function()? initial,
    TResult Function(Map<Category, Iterable<Product>> items)? loaded,
    TResult Function(Map<Category, Iterable<Product>>? items)? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Category, Iterable<Product>>? items, Failure failure)?
        error,
    TResult Function()? initial,
    TResult Function(Map<Category, Iterable<Product>> items)? loaded,
    TResult Function(Map<Category, Iterable<Product>>? items)? loading,
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
    required TResult Function(ShoppingItemsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(ShoppingItemsLoaded value) loaded,
    required TResult Function(ShoppingItemsLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShoppingItemsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ShoppingItemsLoaded value)? loaded,
    TResult Function(ShoppingItemsLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingItemsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ShoppingItemsLoaded value)? loaded,
    TResult Function(ShoppingItemsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ShoppingItemsState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$ShoppingItemsLoadedCopyWith<$Res> {
  factory _$$ShoppingItemsLoadedCopyWith(_$ShoppingItemsLoaded value,
          $Res Function(_$ShoppingItemsLoaded) then) =
      __$$ShoppingItemsLoadedCopyWithImpl<$Res>;
  $Res call({Map<Category, Iterable<Product>> items});
}

/// @nodoc
class __$$ShoppingItemsLoadedCopyWithImpl<$Res>
    extends _$ShoppingItemsStateCopyWithImpl<$Res>
    implements _$$ShoppingItemsLoadedCopyWith<$Res> {
  __$$ShoppingItemsLoadedCopyWithImpl(
      _$ShoppingItemsLoaded _value, $Res Function(_$ShoppingItemsLoaded) _then)
      : super(_value, (v) => _then(v as _$ShoppingItemsLoaded));

  @override
  _$ShoppingItemsLoaded get _value => super._value as _$ShoppingItemsLoaded;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$ShoppingItemsLoaded(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<Category, Iterable<Product>>,
    ));
  }
}

/// @nodoc

class _$ShoppingItemsLoaded extends ShoppingItemsLoaded {
  const _$ShoppingItemsLoaded(
      {required final Map<Category, Iterable<Product>> items})
      : _items = items,
        super._();

  final Map<Category, Iterable<Product>> _items;
  @override
  Map<Category, Iterable<Product>> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  @override
  String toString() {
    return 'ShoppingItemsState.loaded(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingItemsLoaded &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$ShoppingItemsLoadedCopyWith<_$ShoppingItemsLoaded> get copyWith =>
      __$$ShoppingItemsLoadedCopyWithImpl<_$ShoppingItemsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<Category, Iterable<Product>>? items, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Map<Category, Iterable<Product>> items) loaded,
    required TResult Function(Map<Category, Iterable<Product>>? items) loading,
  }) {
    return loaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<Category, Iterable<Product>>? items, Failure failure)?
        error,
    TResult Function()? initial,
    TResult Function(Map<Category, Iterable<Product>> items)? loaded,
    TResult Function(Map<Category, Iterable<Product>>? items)? loading,
  }) {
    return loaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Category, Iterable<Product>>? items, Failure failure)?
        error,
    TResult Function()? initial,
    TResult Function(Map<Category, Iterable<Product>> items)? loaded,
    TResult Function(Map<Category, Iterable<Product>>? items)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoppingItemsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(ShoppingItemsLoaded value) loaded,
    required TResult Function(ShoppingItemsLoading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShoppingItemsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ShoppingItemsLoaded value)? loaded,
    TResult Function(ShoppingItemsLoading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingItemsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ShoppingItemsLoaded value)? loaded,
    TResult Function(ShoppingItemsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ShoppingItemsLoaded extends ShoppingItemsState {
  const factory ShoppingItemsLoaded(
          {required final Map<Category, Iterable<Product>> items}) =
      _$ShoppingItemsLoaded;
  const ShoppingItemsLoaded._() : super._();

  Map<Category, Iterable<Product>> get items;
  @JsonKey(ignore: true)
  _$$ShoppingItemsLoadedCopyWith<_$ShoppingItemsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShoppingItemsLoadingCopyWith<$Res> {
  factory _$$ShoppingItemsLoadingCopyWith(_$ShoppingItemsLoading value,
          $Res Function(_$ShoppingItemsLoading) then) =
      __$$ShoppingItemsLoadingCopyWithImpl<$Res>;
  $Res call({Map<Category, Iterable<Product>>? items});
}

/// @nodoc
class __$$ShoppingItemsLoadingCopyWithImpl<$Res>
    extends _$ShoppingItemsStateCopyWithImpl<$Res>
    implements _$$ShoppingItemsLoadingCopyWith<$Res> {
  __$$ShoppingItemsLoadingCopyWithImpl(_$ShoppingItemsLoading _value,
      $Res Function(_$ShoppingItemsLoading) _then)
      : super(_value, (v) => _then(v as _$ShoppingItemsLoading));

  @override
  _$ShoppingItemsLoading get _value => super._value as _$ShoppingItemsLoading;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$ShoppingItemsLoading(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<Category, Iterable<Product>>?,
    ));
  }
}

/// @nodoc

class _$ShoppingItemsLoading extends ShoppingItemsLoading {
  const _$ShoppingItemsLoading({final Map<Category, Iterable<Product>>? items})
      : _items = items,
        super._();

  final Map<Category, Iterable<Product>>? _items;
  @override
  Map<Category, Iterable<Product>>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ShoppingItemsState.loading(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingItemsLoading &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$ShoppingItemsLoadingCopyWith<_$ShoppingItemsLoading> get copyWith =>
      __$$ShoppingItemsLoadingCopyWithImpl<_$ShoppingItemsLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<Category, Iterable<Product>>? items, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Map<Category, Iterable<Product>> items) loaded,
    required TResult Function(Map<Category, Iterable<Product>>? items) loading,
  }) {
    return loading(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<Category, Iterable<Product>>? items, Failure failure)?
        error,
    TResult Function()? initial,
    TResult Function(Map<Category, Iterable<Product>> items)? loaded,
    TResult Function(Map<Category, Iterable<Product>>? items)? loading,
  }) {
    return loading?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Category, Iterable<Product>>? items, Failure failure)?
        error,
    TResult Function()? initial,
    TResult Function(Map<Category, Iterable<Product>> items)? loaded,
    TResult Function(Map<Category, Iterable<Product>>? items)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoppingItemsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(ShoppingItemsLoaded value) loaded,
    required TResult Function(ShoppingItemsLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShoppingItemsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ShoppingItemsLoaded value)? loaded,
    TResult Function(ShoppingItemsLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingItemsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(ShoppingItemsLoaded value)? loaded,
    TResult Function(ShoppingItemsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ShoppingItemsLoading extends ShoppingItemsState {
  const factory ShoppingItemsLoading(
      {final Map<Category, Iterable<Product>>? items}) = _$ShoppingItemsLoading;
  const ShoppingItemsLoading._() : super._();

  Map<Category, Iterable<Product>>? get items;
  @JsonKey(ignore: true)
  _$$ShoppingItemsLoadingCopyWith<_$ShoppingItemsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

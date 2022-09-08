// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<SearchItem>? items, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<SearchItem> items) loaded,
    required TResult Function(Iterable<SearchItem>? items) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<SearchItem>? items, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<SearchItem> items)? loaded,
    TResult Function(Iterable<SearchItem>? items)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<SearchItem>? items, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<SearchItem> items)? loaded,
    TResult Function(Iterable<SearchItem>? items)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchsLoaded value) loaded,
    required TResult Function(SearchsLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(SearchsLoaded value)? loaded,
    TResult Function(SearchsLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(SearchsLoaded value)? loaded,
    TResult Function(SearchsLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$$SearchsErrorCopyWith<$Res> {
  factory _$$SearchsErrorCopyWith(
          _$SearchsError value, $Res Function(_$SearchsError) then) =
      __$$SearchsErrorCopyWithImpl<$Res>;
  $Res call({Iterable<SearchItem>? items, Failure failure});
}

/// @nodoc
class __$$SearchsErrorCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchsErrorCopyWith<$Res> {
  __$$SearchsErrorCopyWithImpl(
      _$SearchsError _value, $Res Function(_$SearchsError) _then)
      : super(_value, (v) => _then(v as _$SearchsError));

  @override
  _$SearchsError get _value => super._value as _$SearchsError;

  @override
  $Res call({
    Object? items = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$SearchsError(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Iterable<SearchItem>?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SearchsError extends SearchsError {
  const _$SearchsError({this.items, required this.failure}) : super._();

  @override
  final Iterable<SearchItem>? items;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'SearchState.error(items: $items, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchsError &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$SearchsErrorCopyWith<_$SearchsError> get copyWith =>
      __$$SearchsErrorCopyWithImpl<_$SearchsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<SearchItem>? items, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<SearchItem> items) loaded,
    required TResult Function(Iterable<SearchItem>? items) loading,
  }) {
    return error(items, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<SearchItem>? items, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<SearchItem> items)? loaded,
    TResult Function(Iterable<SearchItem>? items)? loading,
  }) {
    return error?.call(items, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<SearchItem>? items, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<SearchItem> items)? loaded,
    TResult Function(Iterable<SearchItem>? items)? loading,
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
    required TResult Function(SearchsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchsLoaded value) loaded,
    required TResult Function(SearchsLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(SearchsLoaded value)? loaded,
    TResult Function(SearchsLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(SearchsLoaded value)? loaded,
    TResult Function(SearchsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchsError extends SearchState {
  const factory SearchsError(
      {final Iterable<SearchItem>? items,
      required final Failure failure}) = _$SearchsError;
  const SearchsError._() : super._();

  Iterable<SearchItem>? get items;
  Failure get failure;
  @JsonKey(ignore: true)
  _$$SearchsErrorCopyWith<_$SearchsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
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
    return 'SearchState.initial()';
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
    required TResult Function(Iterable<SearchItem>? items, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<SearchItem> items) loaded,
    required TResult Function(Iterable<SearchItem>? items) loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<SearchItem>? items, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<SearchItem> items)? loaded,
    TResult Function(Iterable<SearchItem>? items)? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<SearchItem>? items, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<SearchItem> items)? loaded,
    TResult Function(Iterable<SearchItem>? items)? loading,
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
    required TResult Function(SearchsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchsLoaded value) loaded,
    required TResult Function(SearchsLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(SearchsLoaded value)? loaded,
    TResult Function(SearchsLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(SearchsLoaded value)? loaded,
    TResult Function(SearchsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SearchState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$SearchsLoadedCopyWith<$Res> {
  factory _$$SearchsLoadedCopyWith(
          _$SearchsLoaded value, $Res Function(_$SearchsLoaded) then) =
      __$$SearchsLoadedCopyWithImpl<$Res>;
  $Res call({Iterable<SearchItem> items});
}

/// @nodoc
class __$$SearchsLoadedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchsLoadedCopyWith<$Res> {
  __$$SearchsLoadedCopyWithImpl(
      _$SearchsLoaded _value, $Res Function(_$SearchsLoaded) _then)
      : super(_value, (v) => _then(v as _$SearchsLoaded));

  @override
  _$SearchsLoaded get _value => super._value as _$SearchsLoaded;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$SearchsLoaded(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Iterable<SearchItem>,
    ));
  }
}

/// @nodoc

class _$SearchsLoaded extends SearchsLoaded {
  const _$SearchsLoaded({required this.items}) : super._();

  @override
  final Iterable<SearchItem> items;

  @override
  String toString() {
    return 'SearchState.loaded(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchsLoaded &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$$SearchsLoadedCopyWith<_$SearchsLoaded> get copyWith =>
      __$$SearchsLoadedCopyWithImpl<_$SearchsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<SearchItem>? items, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<SearchItem> items) loaded,
    required TResult Function(Iterable<SearchItem>? items) loading,
  }) {
    return loaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<SearchItem>? items, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<SearchItem> items)? loaded,
    TResult Function(Iterable<SearchItem>? items)? loading,
  }) {
    return loaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<SearchItem>? items, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<SearchItem> items)? loaded,
    TResult Function(Iterable<SearchItem>? items)? loading,
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
    required TResult Function(SearchsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchsLoaded value) loaded,
    required TResult Function(SearchsLoading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(SearchsLoaded value)? loaded,
    TResult Function(SearchsLoading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(SearchsLoaded value)? loaded,
    TResult Function(SearchsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchsLoaded extends SearchState {
  const factory SearchsLoaded({required final Iterable<SearchItem> items}) =
      _$SearchsLoaded;
  const SearchsLoaded._() : super._();

  Iterable<SearchItem> get items;
  @JsonKey(ignore: true)
  _$$SearchsLoadedCopyWith<_$SearchsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchsLoadingCopyWith<$Res> {
  factory _$$SearchsLoadingCopyWith(
          _$SearchsLoading value, $Res Function(_$SearchsLoading) then) =
      __$$SearchsLoadingCopyWithImpl<$Res>;
  $Res call({Iterable<SearchItem>? items});
}

/// @nodoc
class __$$SearchsLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchsLoadingCopyWith<$Res> {
  __$$SearchsLoadingCopyWithImpl(
      _$SearchsLoading _value, $Res Function(_$SearchsLoading) _then)
      : super(_value, (v) => _then(v as _$SearchsLoading));

  @override
  _$SearchsLoading get _value => super._value as _$SearchsLoading;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$SearchsLoading(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Iterable<SearchItem>?,
    ));
  }
}

/// @nodoc

class _$SearchsLoading extends SearchsLoading {
  const _$SearchsLoading({this.items}) : super._();

  @override
  final Iterable<SearchItem>? items;

  @override
  String toString() {
    return 'SearchState.loading(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchsLoading &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$$SearchsLoadingCopyWith<_$SearchsLoading> get copyWith =>
      __$$SearchsLoadingCopyWithImpl<_$SearchsLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<SearchItem>? items, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<SearchItem> items) loaded,
    required TResult Function(Iterable<SearchItem>? items) loading,
  }) {
    return loading(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<SearchItem>? items, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<SearchItem> items)? loaded,
    TResult Function(Iterable<SearchItem>? items)? loading,
  }) {
    return loading?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<SearchItem>? items, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<SearchItem> items)? loaded,
    TResult Function(Iterable<SearchItem>? items)? loading,
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
    required TResult Function(SearchsError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchsLoaded value) loaded,
    required TResult Function(SearchsLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(SearchsLoaded value)? loaded,
    TResult Function(SearchsLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchsError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(SearchsLoaded value)? loaded,
    TResult Function(SearchsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchsLoading extends SearchState {
  const factory SearchsLoading({final Iterable<SearchItem>? items}) =
      _$SearchsLoading;
  const SearchsLoading._() : super._();

  Iterable<SearchItem>? get items;
  @JsonKey(ignore: true)
  _$$SearchsLoadingCopyWith<_$SearchsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

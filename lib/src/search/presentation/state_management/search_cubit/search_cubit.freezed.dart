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
    required TResult Function(SearchError value) error,
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchError value)? error,
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchError value)? error,
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchLoading value)? loading,
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
abstract class _$$SearchErrorCopyWith<$Res> {
  factory _$$SearchErrorCopyWith(
          _$SearchError value, $Res Function(_$SearchError) then) =
      __$$SearchErrorCopyWithImpl<$Res>;
  $Res call({Iterable<SearchItem>? items, Failure failure});
}

/// @nodoc
class __$$SearchErrorCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchErrorCopyWith<$Res> {
  __$$SearchErrorCopyWithImpl(
      _$SearchError _value, $Res Function(_$SearchError) _then)
      : super(_value, (v) => _then(v as _$SearchError));

  @override
  _$SearchError get _value => super._value as _$SearchError;

  @override
  $Res call({
    Object? items = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$SearchError(
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

class _$SearchError extends SearchError {
  const _$SearchError({this.items, required this.failure}) : super._();

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
            other is _$SearchError &&
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
  _$$SearchErrorCopyWith<_$SearchError> get copyWith =>
      __$$SearchErrorCopyWithImpl<_$SearchError>(this, _$identity);

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
    required TResult Function(SearchError value) error,
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchError value)? error,
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchError value)? error,
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchError extends SearchState {
  const factory SearchError(
      {final Iterable<SearchItem>? items,
      required final Failure failure}) = _$SearchError;
  const SearchError._() : super._();

  Iterable<SearchItem>? get items;
  Failure get failure;
  @JsonKey(ignore: true)
  _$$SearchErrorCopyWith<_$SearchError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchInitialCopyWith<$Res> {
  factory _$$SearchInitialCopyWith(
          _$SearchInitial value, $Res Function(_$SearchInitial) then) =
      __$$SearchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchInitialCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchInitialCopyWith<$Res> {
  __$$SearchInitialCopyWithImpl(
      _$SearchInitial _value, $Res Function(_$SearchInitial) _then)
      : super(_value, (v) => _then(v as _$SearchInitial));

  @override
  _$SearchInitial get _value => super._value as _$SearchInitial;
}

/// @nodoc

class _$SearchInitial extends SearchInitial {
  const _$SearchInitial() : super._();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchInitial);
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
    required TResult Function(SearchError value) error,
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchError value)? error,
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchError value)? error,
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchInitial extends SearchState {
  const factory SearchInitial() = _$SearchInitial;
  const SearchInitial._() : super._();
}

/// @nodoc
abstract class _$$SearchLoadedCopyWith<$Res> {
  factory _$$SearchLoadedCopyWith(
          _$SearchLoaded value, $Res Function(_$SearchLoaded) then) =
      __$$SearchLoadedCopyWithImpl<$Res>;
  $Res call({Iterable<SearchItem> items});
}

/// @nodoc
class __$$SearchLoadedCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchLoadedCopyWith<$Res> {
  __$$SearchLoadedCopyWithImpl(
      _$SearchLoaded _value, $Res Function(_$SearchLoaded) _then)
      : super(_value, (v) => _then(v as _$SearchLoaded));

  @override
  _$SearchLoaded get _value => super._value as _$SearchLoaded;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$SearchLoaded(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Iterable<SearchItem>,
    ));
  }
}

/// @nodoc

class _$SearchLoaded extends SearchLoaded {
  const _$SearchLoaded({required this.items}) : super._();

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
            other is _$SearchLoaded &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$$SearchLoadedCopyWith<_$SearchLoaded> get copyWith =>
      __$$SearchLoadedCopyWithImpl<_$SearchLoaded>(this, _$identity);

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
    required TResult Function(SearchError value) error,
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchLoading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchError value)? error,
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchLoading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchError value)? error,
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchLoaded extends SearchState {
  const factory SearchLoaded({required final Iterable<SearchItem> items}) =
      _$SearchLoaded;
  const SearchLoaded._() : super._();

  Iterable<SearchItem> get items;
  @JsonKey(ignore: true)
  _$$SearchLoadedCopyWith<_$SearchLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadingCopyWith<$Res> {
  factory _$$SearchLoadingCopyWith(
          _$SearchLoading value, $Res Function(_$SearchLoading) then) =
      __$$SearchLoadingCopyWithImpl<$Res>;
  $Res call({Iterable<SearchItem>? items});
}

/// @nodoc
class __$$SearchLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchLoadingCopyWith<$Res> {
  __$$SearchLoadingCopyWithImpl(
      _$SearchLoading _value, $Res Function(_$SearchLoading) _then)
      : super(_value, (v) => _then(v as _$SearchLoading));

  @override
  _$SearchLoading get _value => super._value as _$SearchLoading;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$SearchLoading(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Iterable<SearchItem>?,
    ));
  }
}

/// @nodoc

class _$SearchLoading extends SearchLoading {
  const _$SearchLoading({this.items}) : super._();

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
            other is _$SearchLoading &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$$SearchLoadingCopyWith<_$SearchLoading> get copyWith =>
      __$$SearchLoadingCopyWithImpl<_$SearchLoading>(this, _$identity);

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
    required TResult Function(SearchError value) error,
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchError value)? error,
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchError value)? error,
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading extends SearchState {
  const factory SearchLoading({final Iterable<SearchItem>? items}) =
      _$SearchLoading;
  const SearchLoading._() : super._();

  Iterable<SearchItem>? get items;
  @JsonKey(ignore: true)
  _$$SearchLoadingCopyWith<_$SearchLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

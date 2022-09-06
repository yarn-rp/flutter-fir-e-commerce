// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Category>? categories, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Category> categories) loaded,
    required TResult Function(Iterable<Category>? categories) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Category>? categories, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Category> categories)? loaded,
    TResult Function(Iterable<Category>? categories)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Category>? categories, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Category> categories)? loaded,
    TResult Function(Iterable<Category>? categories)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoaded value) loaded,
    required TResult Function(CategoriesLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoriesError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoaded value)? loaded,
    TResult Function(CategoriesLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoaded value)? loaded,
    TResult Function(CategoriesLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;
}

/// @nodoc
abstract class _$$CategoriesErrorCopyWith<$Res> {
  factory _$$CategoriesErrorCopyWith(
          _$CategoriesError value, $Res Function(_$CategoriesError) then) =
      __$$CategoriesErrorCopyWithImpl<$Res>;
  $Res call({Iterable<Category>? categories, Failure failure});
}

/// @nodoc
class __$$CategoriesErrorCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$$CategoriesErrorCopyWith<$Res> {
  __$$CategoriesErrorCopyWithImpl(
      _$CategoriesError _value, $Res Function(_$CategoriesError) _then)
      : super(_value, (v) => _then(v as _$CategoriesError));

  @override
  _$CategoriesError get _value => super._value as _$CategoriesError;

  @override
  $Res call({
    Object? categories = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$CategoriesError(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Iterable<Category>?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CategoriesError extends CategoriesError {
  const _$CategoriesError({this.categories, required this.failure}) : super._();

  @override
  final Iterable<Category>? categories;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'CategoryState.error(categories: $categories, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesError &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$CategoriesErrorCopyWith<_$CategoriesError> get copyWith =>
      __$$CategoriesErrorCopyWithImpl<_$CategoriesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Category>? categories, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Category> categories) loaded,
    required TResult Function(Iterable<Category>? categories) loading,
  }) {
    return error(categories, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Category>? categories, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Category> categories)? loaded,
    TResult Function(Iterable<Category>? categories)? loading,
  }) {
    return error?.call(categories, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Category>? categories, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Category> categories)? loaded,
    TResult Function(Iterable<Category>? categories)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(categories, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoaded value) loaded,
    required TResult Function(CategoriesLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoriesError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoaded value)? loaded,
    TResult Function(CategoriesLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoaded value)? loaded,
    TResult Function(CategoriesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoriesError extends CategoryState {
  const factory CategoriesError(
      {final Iterable<Category>? categories,
      required final Failure failure}) = _$CategoriesError;
  const CategoriesError._() : super._();

  Iterable<Category>? get categories;
  Failure get failure;
  @JsonKey(ignore: true)
  _$$CategoriesErrorCopyWith<_$CategoriesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$CategoryStateCopyWithImpl<$Res>
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
    return 'CategoryState.initial()';
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
    required TResult Function(Iterable<Category>? categories, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Category> categories) loaded,
    required TResult Function(Iterable<Category>? categories) loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Category>? categories, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Category> categories)? loaded,
    TResult Function(Iterable<Category>? categories)? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Category>? categories, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Category> categories)? loaded,
    TResult Function(Iterable<Category>? categories)? loading,
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
    required TResult Function(CategoriesError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoaded value) loaded,
    required TResult Function(CategoriesLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoriesError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoaded value)? loaded,
    TResult Function(CategoriesLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoaded value)? loaded,
    TResult Function(CategoriesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends CategoryState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$CategoriesLoadedCopyWith<$Res> {
  factory _$$CategoriesLoadedCopyWith(
          _$CategoriesLoaded value, $Res Function(_$CategoriesLoaded) then) =
      __$$CategoriesLoadedCopyWithImpl<$Res>;
  $Res call({Iterable<Category> categories});
}

/// @nodoc
class __$$CategoriesLoadedCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$$CategoriesLoadedCopyWith<$Res> {
  __$$CategoriesLoadedCopyWithImpl(
      _$CategoriesLoaded _value, $Res Function(_$CategoriesLoaded) _then)
      : super(_value, (v) => _then(v as _$CategoriesLoaded));

  @override
  _$CategoriesLoaded get _value => super._value as _$CategoriesLoaded;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$CategoriesLoaded(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Iterable<Category>,
    ));
  }
}

/// @nodoc

class _$CategoriesLoaded extends CategoriesLoaded {
  const _$CategoriesLoaded({required this.categories}) : super._();

  @override
  final Iterable<Category> categories;

  @override
  String toString() {
    return 'CategoryState.loaded(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesLoaded &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  _$$CategoriesLoadedCopyWith<_$CategoriesLoaded> get copyWith =>
      __$$CategoriesLoadedCopyWithImpl<_$CategoriesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Category>? categories, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Category> categories) loaded,
    required TResult Function(Iterable<Category>? categories) loading,
  }) {
    return loaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Category>? categories, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Category> categories)? loaded,
    TResult Function(Iterable<Category>? categories)? loading,
  }) {
    return loaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Category>? categories, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Category> categories)? loaded,
    TResult Function(Iterable<Category>? categories)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoaded value) loaded,
    required TResult Function(CategoriesLoading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoriesError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoaded value)? loaded,
    TResult Function(CategoriesLoading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoaded value)? loaded,
    TResult Function(CategoriesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoaded extends CategoryState {
  const factory CategoriesLoaded(
      {required final Iterable<Category> categories}) = _$CategoriesLoaded;
  const CategoriesLoaded._() : super._();

  Iterable<Category> get categories;
  @JsonKey(ignore: true)
  _$$CategoriesLoadedCopyWith<_$CategoriesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesLoadingCopyWith<$Res> {
  factory _$$CategoriesLoadingCopyWith(
          _$CategoriesLoading value, $Res Function(_$CategoriesLoading) then) =
      __$$CategoriesLoadingCopyWithImpl<$Res>;
  $Res call({Iterable<Category>? categories});
}

/// @nodoc
class __$$CategoriesLoadingCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$$CategoriesLoadingCopyWith<$Res> {
  __$$CategoriesLoadingCopyWithImpl(
      _$CategoriesLoading _value, $Res Function(_$CategoriesLoading) _then)
      : super(_value, (v) => _then(v as _$CategoriesLoading));

  @override
  _$CategoriesLoading get _value => super._value as _$CategoriesLoading;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$CategoriesLoading(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Iterable<Category>?,
    ));
  }
}

/// @nodoc

class _$CategoriesLoading extends CategoriesLoading {
  const _$CategoriesLoading({this.categories}) : super._();

  @override
  final Iterable<Category>? categories;

  @override
  String toString() {
    return 'CategoryState.loading(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesLoading &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  _$$CategoriesLoadingCopyWith<_$CategoriesLoading> get copyWith =>
      __$$CategoriesLoadingCopyWithImpl<_$CategoriesLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<Category>? categories, Failure failure)
        error,
    required TResult Function() initial,
    required TResult Function(Iterable<Category> categories) loaded,
    required TResult Function(Iterable<Category>? categories) loading,
  }) {
    return loading(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<Category>? categories, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Category> categories)? loaded,
    TResult Function(Iterable<Category>? categories)? loading,
  }) {
    return loading?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<Category>? categories, Failure failure)? error,
    TResult Function()? initial,
    TResult Function(Iterable<Category> categories)? loaded,
    TResult Function(Iterable<Category>? categories)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesError value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoaded value) loaded,
    required TResult Function(CategoriesLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoriesError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoaded value)? loaded,
    TResult Function(CategoriesLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesError value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoaded value)? loaded,
    TResult Function(CategoriesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoading extends CategoryState {
  const factory CategoriesLoading({final Iterable<Category>? categories}) =
      _$CategoriesLoading;
  const CategoriesLoading._() : super._();

  Iterable<Category>? get categories;
  @JsonKey(ignore: true)
  _$$CategoriesLoadingCopyWith<_$CategoriesLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

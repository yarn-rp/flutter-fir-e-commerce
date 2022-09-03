// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageRepresentation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List bytes) memory,
    required TResult Function(String imageUrl) url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List bytes)? memory,
    TResult Function(String imageUrl)? url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List bytes)? memory,
    TResult Function(String imageUrl)? url,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemoryImage value) memory,
    required TResult Function(UrlImage value) url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MemoryImage value)? memory,
    TResult Function(UrlImage value)? url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoryImage value)? memory,
    TResult Function(UrlImage value)? url,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageRepresentationCopyWith<$Res> {
  factory $ImageRepresentationCopyWith(
          ImageRepresentation value, $Res Function(ImageRepresentation) then) =
      _$ImageRepresentationCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageRepresentationCopyWithImpl<$Res>
    implements $ImageRepresentationCopyWith<$Res> {
  _$ImageRepresentationCopyWithImpl(this._value, this._then);

  final ImageRepresentation _value;
  // ignore: unused_field
  final $Res Function(ImageRepresentation) _then;
}

/// @nodoc
abstract class _$$MemoryImageCopyWith<$Res> {
  factory _$$MemoryImageCopyWith(
          _$MemoryImage value, $Res Function(_$MemoryImage) then) =
      __$$MemoryImageCopyWithImpl<$Res>;
  $Res call({Uint8List bytes});
}

/// @nodoc
class __$$MemoryImageCopyWithImpl<$Res>
    extends _$ImageRepresentationCopyWithImpl<$Res>
    implements _$$MemoryImageCopyWith<$Res> {
  __$$MemoryImageCopyWithImpl(
      _$MemoryImage _value, $Res Function(_$MemoryImage) _then)
      : super(_value, (v) => _then(v as _$MemoryImage));

  @override
  _$MemoryImage get _value => super._value as _$MemoryImage;

  @override
  $Res call({
    Object? bytes = freezed,
  }) {
    return _then(_$MemoryImage(
      bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$MemoryImage with DiagnosticableTreeMixin implements MemoryImage {
  const _$MemoryImage(this.bytes);

  @override
  final Uint8List bytes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageRepresentation.memory(bytes: $bytes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageRepresentation.memory'))
      ..add(DiagnosticsProperty('bytes', bytes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryImage &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @JsonKey(ignore: true)
  @override
  _$$MemoryImageCopyWith<_$MemoryImage> get copyWith =>
      __$$MemoryImageCopyWithImpl<_$MemoryImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List bytes) memory,
    required TResult Function(String imageUrl) url,
  }) {
    return memory(bytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List bytes)? memory,
    TResult Function(String imageUrl)? url,
  }) {
    return memory?.call(bytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List bytes)? memory,
    TResult Function(String imageUrl)? url,
    required TResult orElse(),
  }) {
    if (memory != null) {
      return memory(bytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemoryImage value) memory,
    required TResult Function(UrlImage value) url,
  }) {
    return memory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MemoryImage value)? memory,
    TResult Function(UrlImage value)? url,
  }) {
    return memory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoryImage value)? memory,
    TResult Function(UrlImage value)? url,
    required TResult orElse(),
  }) {
    if (memory != null) {
      return memory(this);
    }
    return orElse();
  }
}

abstract class MemoryImage implements ImageRepresentation {
  const factory MemoryImage(final Uint8List bytes) = _$MemoryImage;

  Uint8List get bytes;
  @JsonKey(ignore: true)
  _$$MemoryImageCopyWith<_$MemoryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UrlImageCopyWith<$Res> {
  factory _$$UrlImageCopyWith(
          _$UrlImage value, $Res Function(_$UrlImage) then) =
      __$$UrlImageCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class __$$UrlImageCopyWithImpl<$Res>
    extends _$ImageRepresentationCopyWithImpl<$Res>
    implements _$$UrlImageCopyWith<$Res> {
  __$$UrlImageCopyWithImpl(_$UrlImage _value, $Res Function(_$UrlImage) _then)
      : super(_value, (v) => _then(v as _$UrlImage));

  @override
  _$UrlImage get _value => super._value as _$UrlImage;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_$UrlImage(
      imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UrlImage with DiagnosticableTreeMixin implements UrlImage {
  const _$UrlImage(this.imageUrl);

  @override
  final String imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageRepresentation.url(imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageRepresentation.url'))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlImage &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$$UrlImageCopyWith<_$UrlImage> get copyWith =>
      __$$UrlImageCopyWithImpl<_$UrlImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List bytes) memory,
    required TResult Function(String imageUrl) url,
  }) {
    return url(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List bytes)? memory,
    TResult Function(String imageUrl)? url,
  }) {
    return url?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List bytes)? memory,
    TResult Function(String imageUrl)? url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemoryImage value) memory,
    required TResult Function(UrlImage value) url,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MemoryImage value)? memory,
    TResult Function(UrlImage value)? url,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoryImage value)? memory,
    TResult Function(UrlImage value)? url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }
}

abstract class UrlImage implements ImageRepresentation {
  const factory UrlImage(final String imageUrl) = _$UrlImage;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$$UrlImageCopyWith<_$UrlImage> get copyWith =>
      throw _privateConstructorUsedError;
}

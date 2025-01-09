// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function(PhotoDetail photo) isLoaded,
    required TResult Function(String message) isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function(PhotoDetail photo)? isLoaded,
    TResult? Function(String message)? isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function(PhotoDetail photo)? isLoaded,
    TResult Function(String message)? isError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(isLoading value) isLoading,
    required TResult Function(isLoaded value) isLoaded,
    required TResult Function(isError value) isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(isLoading value)? isLoading,
    TResult? Function(isLoaded value)? isLoaded,
    TResult? Function(isError value)? isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(isLoading value)? isLoading,
    TResult Function(isLoaded value)? isLoaded,
    TResult Function(isError value)? isError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDetailStateCopyWith<$Res> {
  factory $ImageDetailStateCopyWith(
          ImageDetailState value, $Res Function(ImageDetailState) then) =
      _$ImageDetailStateCopyWithImpl<$Res, ImageDetailState>;
}

/// @nodoc
class _$ImageDetailStateCopyWithImpl<$Res, $Val extends ImageDetailState>
    implements $ImageDetailStateCopyWith<$Res> {
  _$ImageDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$isLoadingImplCopyWith<$Res> {
  factory _$$isLoadingImplCopyWith(
          _$isLoadingImpl value, $Res Function(_$isLoadingImpl) then) =
      __$$isLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$isLoadingImplCopyWithImpl<$Res>
    extends _$ImageDetailStateCopyWithImpl<$Res, _$isLoadingImpl>
    implements _$$isLoadingImplCopyWith<$Res> {
  __$$isLoadingImplCopyWithImpl(
      _$isLoadingImpl _value, $Res Function(_$isLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$isLoadingImpl implements isLoading {
  const _$isLoadingImpl();

  @override
  String toString() {
    return 'ImageDetailState.isLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$isLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function(PhotoDetail photo) isLoaded,
    required TResult Function(String message) isError,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function(PhotoDetail photo)? isLoaded,
    TResult? Function(String message)? isError,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function(PhotoDetail photo)? isLoaded,
    TResult Function(String message)? isError,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(isLoading value) isLoading,
    required TResult Function(isLoaded value) isLoaded,
    required TResult Function(isError value) isError,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(isLoading value)? isLoading,
    TResult? Function(isLoaded value)? isLoaded,
    TResult? Function(isError value)? isError,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(isLoading value)? isLoading,
    TResult Function(isLoaded value)? isLoaded,
    TResult Function(isError value)? isError,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class isLoading implements ImageDetailState {
  const factory isLoading() = _$isLoadingImpl;
}

/// @nodoc
abstract class _$$isLoadedImplCopyWith<$Res> {
  factory _$$isLoadedImplCopyWith(
          _$isLoadedImpl value, $Res Function(_$isLoadedImpl) then) =
      __$$isLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PhotoDetail photo});
}

/// @nodoc
class __$$isLoadedImplCopyWithImpl<$Res>
    extends _$ImageDetailStateCopyWithImpl<$Res, _$isLoadedImpl>
    implements _$$isLoadedImplCopyWith<$Res> {
  __$$isLoadedImplCopyWithImpl(
      _$isLoadedImpl _value, $Res Function(_$isLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$isLoadedImpl(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as PhotoDetail,
    ));
  }
}

/// @nodoc

class _$isLoadedImpl implements isLoaded {
  const _$isLoadedImpl({required this.photo});

  @override
  final PhotoDetail photo;

  @override
  String toString() {
    return 'ImageDetailState.isLoaded(photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$isLoadedImpl &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$isLoadedImplCopyWith<_$isLoadedImpl> get copyWith =>
      __$$isLoadedImplCopyWithImpl<_$isLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function(PhotoDetail photo) isLoaded,
    required TResult Function(String message) isError,
  }) {
    return isLoaded(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function(PhotoDetail photo)? isLoaded,
    TResult? Function(String message)? isError,
  }) {
    return isLoaded?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function(PhotoDetail photo)? isLoaded,
    TResult Function(String message)? isError,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(isLoading value) isLoading,
    required TResult Function(isLoaded value) isLoaded,
    required TResult Function(isError value) isError,
  }) {
    return isLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(isLoading value)? isLoading,
    TResult? Function(isLoaded value)? isLoaded,
    TResult? Function(isError value)? isError,
  }) {
    return isLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(isLoading value)? isLoading,
    TResult Function(isLoaded value)? isLoaded,
    TResult Function(isError value)? isError,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(this);
    }
    return orElse();
  }
}

abstract class isLoaded implements ImageDetailState {
  const factory isLoaded({required final PhotoDetail photo}) = _$isLoadedImpl;

  PhotoDetail get photo;

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$isLoadedImplCopyWith<_$isLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$isErrorImplCopyWith<$Res> {
  factory _$$isErrorImplCopyWith(
          _$isErrorImpl value, $Res Function(_$isErrorImpl) then) =
      __$$isErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$isErrorImplCopyWithImpl<$Res>
    extends _$ImageDetailStateCopyWithImpl<$Res, _$isErrorImpl>
    implements _$$isErrorImplCopyWith<$Res> {
  __$$isErrorImplCopyWithImpl(
      _$isErrorImpl _value, $Res Function(_$isErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$isErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$isErrorImpl implements isError {
  const _$isErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ImageDetailState.isError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$isErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$isErrorImplCopyWith<_$isErrorImpl> get copyWith =>
      __$$isErrorImplCopyWithImpl<_$isErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function(PhotoDetail photo) isLoaded,
    required TResult Function(String message) isError,
  }) {
    return isError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function(PhotoDetail photo)? isLoaded,
    TResult? Function(String message)? isError,
  }) {
    return isError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function(PhotoDetail photo)? isLoaded,
    TResult Function(String message)? isError,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(isLoading value) isLoading,
    required TResult Function(isLoaded value) isLoaded,
    required TResult Function(isError value) isError,
  }) {
    return isError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(isLoading value)? isLoading,
    TResult? Function(isLoaded value)? isLoaded,
    TResult? Function(isError value)? isError,
  }) {
    return isError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(isLoading value)? isLoading,
    TResult Function(isLoaded value)? isLoaded,
    TResult Function(isError value)? isError,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class isError implements ImageDetailState {
  const factory isError({required final String message}) = _$isErrorImpl;

  String get message;

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$isErrorImplCopyWith<_$isErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

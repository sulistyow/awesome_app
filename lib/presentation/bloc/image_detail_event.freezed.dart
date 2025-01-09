// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageDetailEvent {
  String get photoId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String photoId) fetchImageDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String photoId)? fetchImageDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String photoId)? fetchImageDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchImageDetail value) fetchImageDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchImageDetail value)? fetchImageDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchImageDetail value)? fetchImageDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageDetailEventCopyWith<ImageDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDetailEventCopyWith<$Res> {
  factory $ImageDetailEventCopyWith(
          ImageDetailEvent value, $Res Function(ImageDetailEvent) then) =
      _$ImageDetailEventCopyWithImpl<$Res, ImageDetailEvent>;
  @useResult
  $Res call({String photoId});
}

/// @nodoc
class _$ImageDetailEventCopyWithImpl<$Res, $Val extends ImageDetailEvent>
    implements $ImageDetailEventCopyWith<$Res> {
  _$ImageDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoId = null,
  }) {
    return _then(_value.copyWith(
      photoId: null == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchImageDetailImplCopyWith<$Res>
    implements $ImageDetailEventCopyWith<$Res> {
  factory _$$FetchImageDetailImplCopyWith(_$FetchImageDetailImpl value,
          $Res Function(_$FetchImageDetailImpl) then) =
      __$$FetchImageDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String photoId});
}

/// @nodoc
class __$$FetchImageDetailImplCopyWithImpl<$Res>
    extends _$ImageDetailEventCopyWithImpl<$Res, _$FetchImageDetailImpl>
    implements _$$FetchImageDetailImplCopyWith<$Res> {
  __$$FetchImageDetailImplCopyWithImpl(_$FetchImageDetailImpl _value,
      $Res Function(_$FetchImageDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoId = null,
  }) {
    return _then(_$FetchImageDetailImpl(
      null == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchImageDetailImpl implements FetchImageDetail {
  const _$FetchImageDetailImpl(this.photoId);

  @override
  final String photoId;

  @override
  String toString() {
    return 'ImageDetailEvent.fetchImageDetail(photoId: $photoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImageDetailImpl &&
            (identical(other.photoId, photoId) || other.photoId == photoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photoId);

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImageDetailImplCopyWith<_$FetchImageDetailImpl> get copyWith =>
      __$$FetchImageDetailImplCopyWithImpl<_$FetchImageDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String photoId) fetchImageDetail,
  }) {
    return fetchImageDetail(photoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String photoId)? fetchImageDetail,
  }) {
    return fetchImageDetail?.call(photoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String photoId)? fetchImageDetail,
    required TResult orElse(),
  }) {
    if (fetchImageDetail != null) {
      return fetchImageDetail(photoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchImageDetail value) fetchImageDetail,
  }) {
    return fetchImageDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchImageDetail value)? fetchImageDetail,
  }) {
    return fetchImageDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchImageDetail value)? fetchImageDetail,
    required TResult orElse(),
  }) {
    if (fetchImageDetail != null) {
      return fetchImageDetail(this);
    }
    return orElse();
  }
}

abstract class FetchImageDetail implements ImageDetailEvent {
  const factory FetchImageDetail(final String photoId) = _$FetchImageDetailImpl;

  @override
  String get photoId;

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchImageDetailImplCopyWith<_$FetchImageDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

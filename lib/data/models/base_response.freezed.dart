// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseModel<T> _$BaseResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseResponseModel<T> {
  @JsonKey(name: 'object')
  T? get object => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'statusCode')
  String? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'messageFields')
  List<dynamic>? get messageFields => throw _privateConstructorUsedError;
  @JsonKey(name: 'messageObjects')
  List<dynamic>? get messageObjects => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseModelCopyWith<T, BaseResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseModelCopyWith<T, $Res> {
  factory $BaseResponseModelCopyWith(BaseResponseModel<T> value,
          $Res Function(BaseResponseModel<T>) then) =
      _$BaseResponseModelCopyWithImpl<T, $Res, BaseResponseModel<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: 'object') T? object,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'statusCode') String? statusCode,
      @JsonKey(name: 'messageFields') List<dynamic>? messageFields,
      @JsonKey(name: 'messageObjects') List<dynamic>? messageObjects});
}

/// @nodoc
class _$BaseResponseModelCopyWithImpl<T, $Res,
        $Val extends BaseResponseModel<T>>
    implements $BaseResponseModelCopyWith<T, $Res> {
  _$BaseResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? messageFields = freezed,
    Object? messageObjects = freezed,
  }) {
    return _then(_value.copyWith(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as T?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      messageFields: freezed == messageFields
          ? _value.messageFields
          : messageFields // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      messageObjects: freezed == messageObjects
          ? _value.messageObjects
          : messageObjects // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseModelImplCopyWith<T, $Res>
    implements $BaseResponseModelCopyWith<T, $Res> {
  factory _$$BaseResponseModelImplCopyWith(_$BaseResponseModelImpl<T> value,
          $Res Function(_$BaseResponseModelImpl<T>) then) =
      __$$BaseResponseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'object') T? object,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'statusCode') String? statusCode,
      @JsonKey(name: 'messageFields') List<dynamic>? messageFields,
      @JsonKey(name: 'messageObjects') List<dynamic>? messageObjects});
}

/// @nodoc
class __$$BaseResponseModelImplCopyWithImpl<T, $Res>
    extends _$BaseResponseModelCopyWithImpl<T, $Res, _$BaseResponseModelImpl<T>>
    implements _$$BaseResponseModelImplCopyWith<T, $Res> {
  __$$BaseResponseModelImplCopyWithImpl(_$BaseResponseModelImpl<T> _value,
      $Res Function(_$BaseResponseModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? messageFields = freezed,
    Object? messageObjects = freezed,
  }) {
    return _then(_$BaseResponseModelImpl<T>(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as T?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      messageFields: freezed == messageFields
          ? _value._messageFields
          : messageFields // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      messageObjects: freezed == messageObjects
          ? _value._messageObjects
          : messageObjects // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BaseResponseModelImpl<T> implements _BaseResponseModel<T> {
  _$BaseResponseModelImpl(
      {@JsonKey(name: 'object') this.object,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'statusCode') this.statusCode,
      @JsonKey(name: 'messageFields') final List<dynamic>? messageFields,
      @JsonKey(name: 'messageObjects') final List<dynamic>? messageObjects})
      : _messageFields = messageFields,
        _messageObjects = messageObjects;

  factory _$BaseResponseModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BaseResponseModelImplFromJson(json, fromJsonT);

  @override
  @JsonKey(name: 'object')
  final T? object;
  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'statusCode')
  final String? statusCode;
  final List<dynamic>? _messageFields;
  @override
  @JsonKey(name: 'messageFields')
  List<dynamic>? get messageFields {
    final value = _messageFields;
    if (value == null) return null;
    if (_messageFields is EqualUnmodifiableListView) return _messageFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _messageObjects;
  @override
  @JsonKey(name: 'messageObjects')
  List<dynamic>? get messageObjects {
    final value = _messageObjects;
    if (value == null) return null;
    if (_messageObjects is EqualUnmodifiableListView) return _messageObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BaseResponseModel<$T>(object: $object, error: $error, status: $status, message: $message, statusCode: $statusCode, messageFields: $messageFields, messageObjects: $messageObjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseModelImpl<T> &&
            const DeepCollectionEquality().equals(other.object, object) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality()
                .equals(other._messageFields, _messageFields) &&
            const DeepCollectionEquality()
                .equals(other._messageObjects, _messageObjects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(object),
      error,
      status,
      message,
      statusCode,
      const DeepCollectionEquality().hash(_messageFields),
      const DeepCollectionEquality().hash(_messageObjects));

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseModelImplCopyWith<T, _$BaseResponseModelImpl<T>>
      get copyWith =>
          __$$BaseResponseModelImplCopyWithImpl<T, _$BaseResponseModelImpl<T>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseResponseModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseResponseModel<T> implements BaseResponseModel<T> {
  factory _BaseResponseModel(
      {@JsonKey(name: 'object') final T? object,
      @JsonKey(name: 'error') final String? error,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'statusCode') final String? statusCode,
      @JsonKey(name: 'messageFields') final List<dynamic>? messageFields,
      @JsonKey(name: 'messageObjects')
      final List<dynamic>? messageObjects}) = _$BaseResponseModelImpl<T>;

  factory _BaseResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BaseResponseModelImpl<T>.fromJson;

  @override
  @JsonKey(name: 'object')
  T? get object;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'statusCode')
  String? get statusCode;
  @override
  @JsonKey(name: 'messageFields')
  List<dynamic>? get messageFields;
  @override
  @JsonKey(name: 'messageObjects')
  List<dynamic>? get messageObjects;

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseModelImplCopyWith<T, _$BaseResponseModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

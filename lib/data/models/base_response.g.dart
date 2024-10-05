// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseResponseModel<T> _$$_BaseResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_BaseResponseModel<T>(
      object: _$nullableGenericFromJson(json['object'], fromJsonT),
      error: json['error'] as String?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as String?,
      messageFields: json['messageFields'] as List<dynamic>?,
      messageObjects: json['messageObjects'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_BaseResponseModelToJson<T>(
  _$_BaseResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': _$nullableGenericToJson(instance.object, toJsonT),
      'error': instance.error,
      'status': instance.status,
      'message': instance.message,
      'statusCode': instance.statusCode,
      'messageFields': instance.messageFields,
      'messageObjects': instance.messageObjects,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

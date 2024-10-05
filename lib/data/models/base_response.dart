import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@Freezed(genericArgumentFactories: true)
class BaseResponseModel<T> with _$BaseResponseModel<T> {
  factory BaseResponseModel({
    @JsonKey(name: 'object') final T? object,
    @JsonKey(name: 'error') final String? error,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'message') final String? message,
    @JsonKey(name: 'statusCode') final String? statusCode,
    @JsonKey(name: 'messageFields') final List? messageFields,
    @JsonKey(name: 'messageObjects') final List? messageObjects,
  }) = _BaseResponseModel;

  factory BaseResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BaseResponseModelFromJson(json, fromJsonT);
}

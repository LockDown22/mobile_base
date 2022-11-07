// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<D> _$BaseResponseFromJson<D>(
  Map<String, dynamic> json,
  D Function(Object? json) fromJsonD,
) =>
    BaseResponse<D>(
      json['status'] as String,
    )..data = _$nullableGenericFromJson(json['data'], fromJsonD);

Map<String, dynamic> _$BaseResponseToJson<D>(
  BaseResponse<D> instance,
  Object? Function(D value) toJsonD,
) =>
    <String, dynamic>{
      'status': instance.status,
      'data': _$nullableGenericToJson(instance.data, toJsonD),
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

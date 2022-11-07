import 'package:json_annotation/json_annotation.dart';
part 'base_response_list.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponseList<T> {
  final String status;
  List<T>? data;

  BaseResponseList( this.status);

  factory BaseResponseList.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) =>
      _$BaseResponseListFromJson(json, fromJsonT);
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseListToJson(this, toJsonT);
}

import 'package:json_annotation/json_annotation.dart';

import '../../constants/app_constants.dart';
part 'base_response.g.dart';

@JsonSerializable(
    genericArgumentFactories: true
)
class BaseResponse<D> {

  final String status;
  D? data;

  BaseResponse(this.status);

  factory BaseResponse.fromJson(Map<String, dynamic> json, D Function(Object? json) fromJsonT)
  => _$BaseResponseFromJson(json, fromJsonT);

  bool get isSuccess => status == KeyBase.success;

}

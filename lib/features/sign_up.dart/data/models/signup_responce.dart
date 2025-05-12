import 'package:json_annotation/json_annotation.dart';
part 'signup_responce.g.dart';

@JsonSerializable()
class SignupResponce {
  String? message;
  @JsonKey(name: "data")
  DataResponce? dataResponce;
  bool? status;
  int? code;
  SignupResponce({this.message, this.dataResponce, this.status, this.code});

  factory SignupResponce.fromJson(Map<String, dynamic> json) =>
      _$SignupResponceFromJson(json);
}

@JsonSerializable()
class DataResponce {
  String? token;
  @JsonKey(name: "username")
  String? userName;

  DataResponce({this.token, this.userName});
  factory DataResponce.fromJson(Map<String, dynamic> json) =>
      _$DataResponceFromJson(json);
}

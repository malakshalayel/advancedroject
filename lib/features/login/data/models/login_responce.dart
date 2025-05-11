import 'package:json_annotation/json_annotation.dart';

part 'login_responce.g.dart';

@JsonSerializable()
class LoginResponce {
  final String? message;
  @JsonKey(name: "data")
  final UserData? userData;
  final bool? status;
  final int? code;
  LoginResponce({this.code, this.userData, this.message, this.status});

  factory LoginResponce.fromJson(Map<String, dynamic> json) =>
      _$LoginResponceFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: "username")
  String? userName;

  UserData({this.token, this.userName});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

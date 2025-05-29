import 'package:json_annotation/json_annotation.dart';
part 'signup_request.g.dart';

@JsonSerializable()
class SignupRequest {
  final String email;
  final String password;
  final String name;
  final String phone;
  final int gender;
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;

  SignupRequest({
    required this.phone,
    required this.passwordConfirmation,
    required this.email,
    required this.password,
    required this.name,
    this.gender = 0,
  });
  Map<String, dynamic> toJson() => _$SignupRequestToJson(this);
}

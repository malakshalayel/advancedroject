// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequest _$SignupRequestFromJson(Map<String, dynamic> json) =>
    SignupRequest(
      phone: json['phone'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      gender: (json['gender'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SignupRequestToJson(SignupRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'phone': instance.phone,
      'gender': instance.gender,
      'password_confirmation': instance.passwordConfirmation,
    };

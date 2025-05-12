// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponce _$SignupResponceFromJson(Map<String, dynamic> json) =>
    SignupResponce(
      message: json['message'] as String?,
      dataResponce:
          json['data'] == null
              ? null
              : DataResponce.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SignupResponceToJson(SignupResponce instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.dataResponce,
      'status': instance.status,
      'code': instance.code,
    };

DataResponce _$DataResponceFromJson(Map<String, dynamic> json) => DataResponce(
  token: json['token'] as String?,
  userName: json['username'] as String?,
);

Map<String, dynamic> _$DataResponceToJson(DataResponce instance) =>
    <String, dynamic>{'token': instance.token, 'username': instance.userName};

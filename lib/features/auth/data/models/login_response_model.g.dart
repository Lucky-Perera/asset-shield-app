// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    _LoginResponseModel(
      success: json['success'] as bool,
      data: LoginDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseModelToJson(_LoginResponseModel instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) =>
    _LoginDataModel(
      accessToken: json['accessToken'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      expiresIn: (json['expiresIn'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginDataModelToJson(_LoginDataModel instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'user': instance.user,
      'expiresIn': instance.expiresIn,
    };

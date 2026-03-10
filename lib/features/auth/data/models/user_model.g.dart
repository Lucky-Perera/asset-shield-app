// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  role: $enumDecode(_$RoleEnumMap, json['role']),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': _$RoleEnumMap[instance.role]!,
    };

const _$RoleEnumMap = {
  Role.superAdmin: 'SuperAdmin',
  Role.admin: 'Admin',
  Role.integrityEngineer: 'IntegrityEngineer',
  Role.technician: 'Technician',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_ref_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ComponentRefDataModel _$ComponentRefDataModelFromJson(
  Map<String, dynamic> json,
) => _ComponentRefDataModel(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  category: json['category'] as String,
  value: json['value'] as String,
  displayValue: json['displayValue'] as String?,
);

Map<String, dynamic> _$ComponentRefDataModelToJson(
  _ComponentRefDataModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'category': instance.category,
  'value': instance.value,
  'displayValue': instance.displayValue,
};

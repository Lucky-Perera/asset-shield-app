// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EquipmentModel _$EquipmentModelFromJson(Map<String, dynamic> json) =>
    _EquipmentModel(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      equipmentId: json['equipmentId'] as String,
      name: json['name'] as String,
      cmmsSystem: json['cmmsSystem'] as String,
      isCorrosionLoopAvailable: json['isCorrosionLoopAvailable'] as bool,
      corrosionLoopId: json['corrosionLoopId'] as String?,
      isDeleted: json['isDeleted'] as bool,
      corrosionLoop: json['corrosionLoop'] == null
          ? null
          : CorrosionLoopModel.fromJson(
              json['corrosionLoop'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$EquipmentModelToJson(_EquipmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'equipmentId': instance.equipmentId,
      'name': instance.name,
      'cmmsSystem': instance.cmmsSystem,
      'isCorrosionLoopAvailable': instance.isCorrosionLoopAvailable,
      'corrosionLoopId': instance.corrosionLoopId,
      'isDeleted': instance.isDeleted,
      'corrosionLoop': instance.corrosionLoop,
    };

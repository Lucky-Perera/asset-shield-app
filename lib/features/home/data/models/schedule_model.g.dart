// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleModel _$ScheduleModelFromJson(Map<String, dynamic> json) =>
    _ScheduleModel(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      scheduleID: json['scheduleID'] as String,
      equipmentId: json['equipmentId'] as String,
      description: json['description'] as String,
      scheduleTypeId: json['scheduleTypeId'] as String,
      status: json['status'] as String,
      dueDate: json['dueDate'] as String,
      operationId: json['operationId'] as String,
      isRBISchedule: json['isRBISchedule'] as bool,
      isRecurring: json['isRecurring'] as bool,
      inspectionInterval: (json['inspectionInterval'] as num).toInt(),
      isScopeAttached: json['isScopeAttached'] as bool,
      comments: json['comments'] as String,
      aiSummary: json['aiSummary'] as String?,
      isDeleted: json['isDeleted'] as bool,
      equipment: json['equipment'] == null
          ? null
          : EquipmentModel.fromJson(json['equipment'] as Map<String, dynamic>),
      components: (json['components'] as List<dynamic>)
          .map(
            (e) => ScheduleComponentModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      scheduleType: json['scheduleType'] == null
          ? null
          : RefDataModel.fromJson(json['scheduleType'] as Map<String, dynamic>),
      operation: json['operation'] == null
          ? null
          : RefDataModel.fromJson(json['operation'] as Map<String, dynamic>),
      attachments: json['attachments'] as List<dynamic>,
      linkedItems: json['linkedItems'] as List<dynamic>,
    );

Map<String, dynamic> _$ScheduleModelToJson(_ScheduleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'scheduleID': instance.scheduleID,
      'equipmentId': instance.equipmentId,
      'description': instance.description,
      'scheduleTypeId': instance.scheduleTypeId,
      'status': instance.status,
      'dueDate': instance.dueDate,
      'operationId': instance.operationId,
      'isRBISchedule': instance.isRBISchedule,
      'isRecurring': instance.isRecurring,
      'inspectionInterval': instance.inspectionInterval,
      'isScopeAttached': instance.isScopeAttached,
      'comments': instance.comments,
      'aiSummary': instance.aiSummary,
      'isDeleted': instance.isDeleted,
      'equipment': instance.equipment,
      'components': instance.components,
      'scheduleType': instance.scheduleType,
      'operation': instance.operation,
      'attachments': instance.attachments,
      'linkedItems': instance.linkedItems,
    };

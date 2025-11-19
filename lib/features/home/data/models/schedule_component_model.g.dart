// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_component_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleComponentModel _$ScheduleComponentModelFromJson(
  Map<String, dynamic> json,
) => _ScheduleComponentModel(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  scheduleId: json['scheduleId'] as String,
  componentId: json['componentId'] as String,
  component: json['component'] == null
      ? null
      : ComponentModel.fromJson(json['component'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ScheduleComponentModelToJson(
  _ScheduleComponentModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'scheduleId': instance.scheduleId,
  'componentId': instance.componentId,
  'component': instance.component,
};

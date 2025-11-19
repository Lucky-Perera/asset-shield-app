// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleResponseModel _$ScheduleResponseModelFromJson(
  Map<String, dynamic> json,
) => _ScheduleResponseModel(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => ScheduleModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ScheduleResponseModelToJson(
  _ScheduleResponseModel instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

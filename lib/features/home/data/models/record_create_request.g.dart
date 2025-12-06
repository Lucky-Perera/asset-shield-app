// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordCreateRequest _$RecordCreateRequestFromJson(Map<String, dynamic> json) =>
    _RecordCreateRequest(
      equipmentID: json['equipmentID'] as String,
      description: json['description'] as String,
      creditedItemIDs: (json['creditedItemIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      recordCreatedDate: DateTime.parse(json['recordCreatedDate'] as String),
      inspectedComponentIDs: (json['inspectedComponentIDs'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      scheduleTypeID: json['scheduleTypeID'] as String,
      status: json['status'] as String,
      inspectionDate: DateTime.parse(json['inspectionDate'] as String),
      actionCreated: json['actionCreated'] as String,
      attachmentIDs: (json['attachmentIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$RecordCreateRequestToJson(
  _RecordCreateRequest instance,
) => <String, dynamic>{
  'equipmentID': instance.equipmentID,
  'description': instance.description,
  'creditedItemIDs': instance.creditedItemIDs,
  'recordCreatedDate': instance.recordCreatedDate.toIso8601String(),
  'inspectedComponentIDs': instance.inspectedComponentIDs,
  'scheduleTypeID': instance.scheduleTypeID,
  'status': instance.status,
  'inspectionDate': instance.inspectionDate.toIso8601String(),
  'actionCreated': instance.actionCreated,
  'attachmentIDs': instance.attachmentIDs,
  'comments': instance.comments,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttachmentResponse _$AttachmentResponseFromJson(Map<String, dynamic> json) =>
    _AttachmentResponse(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      documentID: json['documentID'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      description: json['description'] as String?,
      comments: json['comments'] as String?,
      isDeleted: json['isDeleted'] as bool,
      equipmentId: json['equipmentId'] as String?,
      scheduleId: json['scheduleId'] as String?,
      scopeImageScheduleId: json['scopeImageScheduleId'] as String?,
      checklistAnswerId: json['checklistAnswerId'] as String?,
      recordId: json['recordId'] as String?,
    );

Map<String, dynamic> _$AttachmentResponseToJson(_AttachmentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'documentID': instance.documentID,
      'name': instance.name,
      'url': instance.url,
      'description': instance.description,
      'comments': instance.comments,
      'isDeleted': instance.isDeleted,
      'equipmentId': instance.equipmentId,
      'scheduleId': instance.scheduleId,
      'scopeImageScheduleId': instance.scopeImageScheduleId,
      'checklistAnswerId': instance.checklistAnswerId,
      'recordId': instance.recordId,
    };

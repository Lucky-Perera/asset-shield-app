// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordApiResponse _$RecordApiResponseFromJson(Map<String, dynamic> json) =>
    _RecordApiResponse(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : RecordResponse.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$RecordApiResponseToJson(_RecordApiResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'error': instance.error,
    };

_RecordResponse _$RecordResponseFromJson(Map<String, dynamic> json) =>
    _RecordResponse(
      id: json['id'] as String,
      recordID: json['recordID'] as String,
      equipmentId: json['equipmentId'] as String,
      description: json['description'] as String?,
      creditedItems: (json['creditedItems'] as List<dynamic>?)
          ?.map((e) => CreditedItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      recordCreatedDate: json['recordCreatedDate'] == null
          ? null
          : DateTime.parse(json['recordCreatedDate'] as String),
      inspectedComponents: (json['inspectedComponents'] as List<dynamic>?)
          ?.map((e) => RecordComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      scheduleType: json['scheduleType'] as Map<String, dynamic>?,
      status: json['status'] as String?,
      inspectionDate: json['inspectionDate'] == null
          ? null
          : DateTime.parse(json['inspectionDate'] as String),
      actionCreated: json['actionCreated'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$RecordResponseToJson(_RecordResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordID': instance.recordID,
      'equipmentId': instance.equipmentId,
      'description': instance.description,
      'creditedItems': instance.creditedItems,
      'recordCreatedDate': instance.recordCreatedDate?.toIso8601String(),
      'inspectedComponents': instance.inspectedComponents,
      'scheduleType': instance.scheduleType,
      'status': instance.status,
      'inspectionDate': instance.inspectionDate?.toIso8601String(),
      'actionCreated': instance.actionCreated,
      'attachments': instance.attachments,
      'comments': instance.comments,
    };

_RecordComponent _$RecordComponentFromJson(Map<String, dynamic> json) =>
    _RecordComponent(
      id: json['id'] as String,
      componentId: json['componentId'] as String?,
    );

Map<String, dynamic> _$RecordComponentToJson(_RecordComponent instance) =>
    <String, dynamic>{'id': instance.id, 'componentId': instance.componentId};

_CreditedItem _$CreditedItemFromJson(Map<String, dynamic> json) =>
    _CreditedItem(
      id: json['id'] as String,
      scheduleV2Id: json['scheduleV2Id'] as String?,
    );

Map<String, dynamic> _$CreditedItemToJson(_CreditedItem instance) =>
    <String, dynamic>{'id': instance.id, 'scheduleV2Id': instance.scheduleV2Id};

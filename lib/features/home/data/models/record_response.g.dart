// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordResponse _$RecordResponseFromJson(Map<String, dynamic> json) =>
    _RecordResponse(
      id: json['id'] as String,
      recordID: json['recordID'] as String?,
      equipmentId: json['equipmentId'] as String,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      creditedItems: (json['creditedItems'] as List<dynamic>?)
          ?.map((e) => CreditedItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      recordCreatedDate: json['recordCreatedDate'] == null
          ? null
          : DateTime.parse(json['recordCreatedDate'] as String),
      inspectedComponents: (json['inspectedComponents'] as List<dynamic>?)
          ?.map((e) => InspectedComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      scheduleType: json['scheduleType'] as Map<String, dynamic>?,
      status: $enumDecodeNullable(_$RecordStatusEnumMap, json['status']),
      inspectionDate: json['inspectionDate'] == null
          ? null
          : DateTime.parse(json['inspectionDate'] as String),
      actionCreated: json['actionCreated'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      comments: json['comments'] as String?,
      rejectionReason: json['rejectionReason'] as String?,
      approvedAt: json['approvedAt'] == null
          ? null
          : DateTime.parse(json['approvedAt'] as String),
      reviewedAt: json['reviewedAt'] == null
          ? null
          : DateTime.parse(json['reviewedAt'] as String),
      isDeleted: json['isDeleted'] as bool?,
      scheduleId: json['scheduleId'] as String?,
      referenceDataId: json['referenceDataId'] as String?,
      scheduleTypeId: json['scheduleTypeId'] as String?,
      submittedById: json['submittedById'] as String?,
      reviewedById: json['reviewedById'] as String?,
      approvedById: json['approvedById'] as String?,
    );

Map<String, dynamic> _$RecordResponseToJson(_RecordResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordID': instance.recordID,
      'equipmentId': instance.equipmentId,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'creditedItems': instance.creditedItems,
      'recordCreatedDate': instance.recordCreatedDate?.toIso8601String(),
      'inspectedComponents': instance.inspectedComponents,
      'scheduleType': instance.scheduleType,
      'status': _$RecordStatusEnumMap[instance.status],
      'inspectionDate': instance.inspectionDate?.toIso8601String(),
      'actionCreated': instance.actionCreated,
      'attachments': instance.attachments,
      'comments': instance.comments,
      'rejectionReason': instance.rejectionReason,
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'reviewedAt': instance.reviewedAt?.toIso8601String(),
      'isDeleted': instance.isDeleted,
      'scheduleId': instance.scheduleId,
      'referenceDataId': instance.referenceDataId,
      'scheduleTypeId': instance.scheduleTypeId,
      'submittedById': instance.submittedById,
      'reviewedById': instance.reviewedById,
      'approvedById': instance.approvedById,
    };

const _$RecordStatusEnumMap = {
  RecordStatus.rejected: 'Rejected',
  RecordStatus.pendingApproval: 'PendingApproval',
  RecordStatus.approved: 'Approved',
  RecordStatus.draft: 'Draft',
};

_InspectedComponent _$InspectedComponentFromJson(Map<String, dynamic> json) =>
    _InspectedComponent(
      id: json['id'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      recordId: json['recordId'] as String?,
      componentId: json['componentId'] as String?,
      component: json['component'] == null
          ? null
          : ComponentDetail.fromJson(json['component'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InspectedComponentToJson(_InspectedComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'recordId': instance.recordId,
      'componentId': instance.componentId,
      'component': instance.component,
    };

_ComponentDetail _$ComponentDetailFromJson(Map<String, dynamic> json) =>
    _ComponentDetail(
      id: json['id'] as String,
      componentID: json['componentID'] as String,
      name: json['name'] as String,
      componentRefData: json['componentRefData'] == null
          ? null
          : ComponentRefData.fromJson(
              json['componentRefData'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ComponentDetailToJson(_ComponentDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'componentID': instance.componentID,
      'name': instance.name,
      'componentRefData': instance.componentRefData,
    };

_ComponentRefData _$ComponentRefDataFromJson(Map<String, dynamic> json) =>
    _ComponentRefData(
      id: json['id'] as String,
      value: json['value'] as String,
      displayValue: json['displayValue'] as String?,
    );

Map<String, dynamic> _$ComponentRefDataToJson(_ComponentRefData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'displayValue': instance.displayValue,
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

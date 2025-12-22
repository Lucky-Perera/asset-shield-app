// ignore_for_file: invalid_annotation_target

import 'package:asset_shield/core/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_response.freezed.dart';
part 'record_response.g.dart';

@freezed
abstract class RecordResponse with _$RecordResponse {
  const factory RecordResponse({
    required String id,
    String? recordID,
    required String equipmentId,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: 'creditedItems') List<CreditedItem>? creditedItems,
    @JsonKey(name: 'recordCreatedDate') DateTime? recordCreatedDate,
    @JsonKey(name: 'inspectedComponents')
    List<InspectedComponent>? inspectedComponents,
    @JsonKey(name: 'scheduleType') Map<String, dynamic>? scheduleType,
    RecordStatus? status,
    @JsonKey(name: 'inspectionDate') DateTime? inspectionDate,
    String? actionCreated,
    @JsonKey(name: 'attachments') List<Map<String, dynamic>>? attachments,
    String? comments,
    String? rejectionReason,
    DateTime? approvedAt,
    DateTime? reviewedAt,
    bool? isDeleted,
    String? scheduleId,
    String? referenceDataId,
    String? scheduleTypeId,
    String? submittedById,
    String? reviewedById,
    String? approvedById,
  }) = _RecordResponse;

  factory RecordResponse.fromJson(Map<String, dynamic> json) =>
      _$RecordResponseFromJson(json);
}

@freezed
abstract class InspectedComponent with _$InspectedComponent {
  const factory InspectedComponent({
    required String id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? recordId,
    String? componentId,
    ComponentDetail? component,
  }) = _InspectedComponent;

  factory InspectedComponent.fromJson(Map<String, dynamic> json) =>
      _$InspectedComponentFromJson(json);
}

@freezed
abstract class ComponentDetail with _$ComponentDetail {
  const factory ComponentDetail({
    required String id,
    required String componentID,
    required String name,
    ComponentRefData? componentRefData,
  }) = _ComponentDetail;

  factory ComponentDetail.fromJson(Map<String, dynamic> json) =>
      _$ComponentDetailFromJson(json);
}

@freezed
abstract class ComponentRefData with _$ComponentRefData {
  const factory ComponentRefData({
    required String id,
    required String value,
    String? displayValue,
  }) = _ComponentRefData;

  factory ComponentRefData.fromJson(Map<String, dynamic> json) =>
      _$ComponentRefDataFromJson(json);
}

@freezed
abstract class RecordComponent with _$RecordComponent {
  const factory RecordComponent({
    required String id,
    @JsonKey(name: 'componentId') String? componentId,
  }) = _RecordComponent;

  factory RecordComponent.fromJson(Map<String, dynamic> json) =>
      _$RecordComponentFromJson(json);
}

@freezed
abstract class CreditedItem with _$CreditedItem {
  const factory CreditedItem({
    required String id,
    @JsonKey(name: 'scheduleV2Id') String? scheduleV2Id,
  }) = _CreditedItem;

  factory CreditedItem.fromJson(Map<String, dynamic> json) =>
      _$CreditedItemFromJson(json);
}

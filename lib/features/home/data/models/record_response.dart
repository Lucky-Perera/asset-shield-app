// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_response.freezed.dart';
part 'record_response.g.dart';

@freezed
abstract class RecordApiResponse with _$RecordApiResponse {
  const factory RecordApiResponse({
    required bool success,
    RecordResponse? data,
    String? error,
  }) = _RecordApiResponse;

  factory RecordApiResponse.fromJson(Map<String, dynamic> json) =>
      _$RecordApiResponseFromJson(json);
}

@freezed
abstract class RecordResponse with _$RecordResponse {
  const factory RecordResponse({
    required String id,
    required String recordID,
    required String equipmentId,
    String? description,
    @JsonKey(name: 'creditedItems') List<CreditedItem>? creditedItems,
    @JsonKey(name: 'recordCreatedDate') DateTime? recordCreatedDate,
    @JsonKey(name: 'inspectedComponents')
    List<RecordComponent>? inspectedComponents,
    @JsonKey(name: 'scheduleType') Map<String, dynamic>? scheduleType,
    String? status,
    @JsonKey(name: 'inspectionDate') DateTime? inspectionDate,
    String? actionCreated,
    @JsonKey(name: 'attachments') List<Map<String, dynamic>>? attachments,
    String? comments,
  }) = _RecordResponse;

  factory RecordResponse.fromJson(Map<String, dynamic> json) =>
      _$RecordResponseFromJson(json);
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

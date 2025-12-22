// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_create_request.freezed.dart';
part 'record_create_request.g.dart';

@freezed
abstract class RecordCreateRequest with _$RecordCreateRequest {
  const factory RecordCreateRequest({
    @JsonKey(name: 'equipmentID') required String equipmentID,
    required String description,
    @JsonKey(name: 'creditedItemIDs') List<String>? creditedItemIDs,
    @JsonKey(name: 'recordCreatedDate') required DateTime recordCreatedDate,
    @JsonKey(name: 'inspectedComponentIDs')
    required List<String> inspectedComponentIDs,
    @JsonKey(name: 'scheduleTypeID') required String scheduleTypeID,
    @JsonKey(name: 'inspectionDate') required DateTime inspectionDate,
    @JsonKey(name: 'actionCreated') required String actionCreated,
    @JsonKey(name: 'attachmentIDs') List<String>? attachmentIDs,
    String? comments,
    @JsonKey(name: 'checklistAnswers')
    List<ChecklistAnswerItem>? checklistAnswers,
    required String submittedBy,
    bool? isDraft,
  }) = _RecordCreateRequest;

  factory RecordCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$RecordCreateRequestFromJson(json);
}

@freezed
abstract class ChecklistAnswerItem with _$ChecklistAnswerItem {
  const factory ChecklistAnswerItem({
    required String questionId,
    required String value,
    required String note,
    @Default([]) List<String> attachmentIds,
  }) = _ChecklistAnswerItem;

  factory ChecklistAnswerItem.fromJson(Map<String, dynamic> json) =>
      _$ChecklistAnswerItemFromJson(json);
}

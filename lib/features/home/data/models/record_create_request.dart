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

    /// Use server enum names as Strings (e.g. "NEW", "COMPLETED").
    required String status,
    @JsonKey(name: 'inspectionDate') required DateTime inspectionDate,
    @JsonKey(name: 'actionCreated') required String actionCreated,
    @JsonKey(name: 'attachmentIDs') List<String>? attachmentIDs,
    String? comments,
  }) = _RecordCreateRequest;

  factory RecordCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$RecordCreateRequestFromJson(json);
}

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_response.freezed.dart';
part 'record_response.g.dart';

@freezed
abstract class RecordResponse with _$RecordResponse {
  const factory RecordResponse({
    required String id,
    required String recordID,
    required String equipmentId,
    required String description,
    @JsonKey(name: 'creditedItems') List<Map<String, dynamic>>? creditedItems,
    @JsonKey(name: 'recordCreatedDate') DateTime? recordCreatedDate,
    @JsonKey(name: 'inspectedComponents')
    List<Map<String, dynamic>>? inspectedComponents,
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

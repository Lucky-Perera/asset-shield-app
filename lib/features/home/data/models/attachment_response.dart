import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment_response.freezed.dart';
part 'attachment_response.g.dart';

@freezed
abstract class AttachmentResponse with _$AttachmentResponse {
  const factory AttachmentResponse({
    required String id,

    required DateTime createdAt,
    required DateTime updatedAt,

    required String documentID,
    required String name,
    required String url,

    String? description,
    String? comments,

    required bool isDeleted,

    String? equipmentId,
    String? scheduleId,
    String? scopeImageScheduleId,
    String? checklistAnswerId,
    String? recordId,
  }) = _AttachmentResponse;

  factory AttachmentResponse.fromJson(Map<String, dynamic> json) =>
      _$AttachmentResponseFromJson(json);
}

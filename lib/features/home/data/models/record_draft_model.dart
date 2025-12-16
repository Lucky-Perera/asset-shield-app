import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_draft_model.freezed.dart';
part 'record_draft_model.g.dart';

/// Model to represent a draft record stored in secure storage
@freezed
abstract class RecordDraftModel with _$RecordDraftModel {
  const factory RecordDraftModel({
    String? description,
    String? actionCreated,
    String? comments,
    DateTime? recordCreatedDate,
    DateTime? inspectionDate,
    @Default([]) List<String> selectedInspectedComponents,
    @Default({}) Map<String, ChecklistAnswerDraft> checklistAnswers,
    @Default({}) Map<String, List<AttachmentDraft>> questionAttachments,
  }) = _RecordDraftModel;

  const RecordDraftModel._();

  factory RecordDraftModel.fromJson(Map<String, dynamic> json) =>
      _$RecordDraftModelFromJson(json);

  String toJsonString() => jsonEncode(toJson());

  factory RecordDraftModel.fromJsonString(String jsonString) =>
      RecordDraftModel.fromJson(jsonDecode(jsonString));
}

/// Model to represent checklist answer in draft
@freezed
abstract class ChecklistAnswerDraft with _$ChecklistAnswerDraft {
  const factory ChecklistAnswerDraft({
    @Default('') String value,
    @Default('') String note,
  }) = _ChecklistAnswerDraft;

  factory ChecklistAnswerDraft.fromJson(Map<String, dynamic> json) =>
      _$ChecklistAnswerDraftFromJson(json);
}

/// Model to represent attachment metadata in draft
@freezed
abstract class AttachmentDraft with _$AttachmentDraft {
  const factory AttachmentDraft({
    @Default('') String id,
    @Default('') String name,
  }) = _AttachmentDraft;

  factory AttachmentDraft.fromJson(Map<String, dynamic> json) =>
      _$AttachmentDraftFromJson(json);
}

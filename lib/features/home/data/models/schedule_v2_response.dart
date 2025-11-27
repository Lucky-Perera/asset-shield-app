import 'package:asset_shield/features/home/data/models/schedule_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_v2_response.freezed.dart';
part 'schedule_v2_response.g.dart';

@freezed
abstract class ScheduleV2Response with _$ScheduleV2Response {
  const factory ScheduleV2Response({
    required bool success,
    required ScheduleV2Data data,
  }) = _ScheduleV2Response;

  factory ScheduleV2Response.fromJson(Map<String, dynamic> json) =>
      _$ScheduleV2ResponseFromJson(json);
}

@freezed
abstract class ScheduleV2Data with _$ScheduleV2Data {
  const factory ScheduleV2Data({
    required List<ScheduleV2> data,
    required Pagination pagination,
  }) = _ScheduleV2Data;

  factory ScheduleV2Data.fromJson(Map<String, dynamic> json) =>
      _$ScheduleV2DataFromJson(json);
}

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    required int total,
    required int page,
    required int limit,
    required int totalPages,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

@freezed
abstract class ScheduleV2 with _$ScheduleV2 {
  const factory ScheduleV2({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String scheduleID,
    required String status,
    required String scheduleTypeId,
    ReferenceData? scheduleType,
    required String operationId,
    ReferenceData? operation,
    required String createdById,
    User? createdBy,
    String? submittedById,
    User? submittedBy,
    String? reviewedById,
    User? reviewedBy,
    String? approvedById,
    User? approvedBy,
    required String equipmentId,
    Equipment? equipment,
    @Default([]) List<ScheduleComponentV2> components,
    required String description,
    required DateTime dueDate,
    @Default([]) List<ChecklistQuestionV2> checklistQuestions,
    @Default([]) List<InspectionMethodV2> inspectionMethods,
    @Default([]) List<PotentialEmergentWorkV2> potentialEmergentWorks,
    @Default([]) List<AttachmentV2> scopeImages,
    DateTime? inspectionDate,
    String? comments,
    @Default([]) List<AttachmentV2> attachments,
    bool? isDeleted,
  }) = _ScheduleV2;

  factory ScheduleV2.fromJson(Map<String, dynamic> json) =>
      _$ScheduleV2FromJson(json);
}

@freezed
abstract class ScheduleComponentV2 with _$ScheduleComponentV2 {
  const factory ScheduleComponentV2({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? scheduleV2Id,
    String? componentId,
    Component? component,
  }) = _ScheduleComponentV2;

  factory ScheduleComponentV2.fromJson(Map<String, dynamic> json) =>
      _$ScheduleComponentV2FromJson(json);
}

@freezed
abstract class ChecklistQuestionV2 with _$ChecklistQuestionV2 {
  const factory ChecklistQuestionV2({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? scheduleV2Id,
    String? inspectionType,
    String? question,
    String? helpText,
    String? responseType,
    String? value,
    String? note,
    DateTime? completedAt,
    String? completedById,
    User? completedBy,
    @Default([]) List<AttachmentV2> attachments,
    bool? isDeleted,
  }) = _ChecklistQuestionV2;

  factory ChecklistQuestionV2.fromJson(Map<String, dynamic> json) =>
      _$ChecklistQuestionV2FromJson(json);
}

@freezed
abstract class InspectionMethodV2 with _$InspectionMethodV2 {
  const factory InspectionMethodV2({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? scheduleV2Id,
    String? methodId,
    ReferenceData? method,
    String? specialAccessId,
    ReferenceData? specialAccess,
    String? insulationRemovalId,
    ReferenceData? insulationRemoval,
    String? cleaningId,
    ReferenceData? cleaning,
    String? location,
    String? notes,
    bool? isDeleted,
  }) = _InspectionMethodV2;

  factory InspectionMethodV2.fromJson(Map<String, dynamic> json) =>
      _$InspectionMethodV2FromJson(json);
}

@freezed
abstract class PotentialEmergentWorkV2 with _$PotentialEmergentWorkV2 {
  const factory PotentialEmergentWorkV2({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? scheduleV2Id,
    String? potentialEmergentWorkId,
    ReferenceData? potentialEmergentWork,
    String? likelihoodId,
    ReferenceData? likelihood,
    String? notes,
    bool? isDeleted,
  }) = _PotentialEmergentWorkV2;

  factory PotentialEmergentWorkV2.fromJson(Map<String, dynamic> json) =>
      _$PotentialEmergentWorkV2FromJson(json);
}

@freezed
abstract class AttachmentV2 with _$AttachmentV2 {
  const factory AttachmentV2({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? documentID,
    String? name,
    String? url,
    String? description,
    String? comments,
    String? equipmentId,
    String? scheduleV2Id,
    String? scopeScheduleV2Id,
    String? checklistQuestionV2Id,
    bool? isDeleted,
  }) = _AttachmentV2;

  factory AttachmentV2.fromJson(Map<String, dynamic> json) =>
      _$AttachmentV2FromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String role,
    required String title,
    required String name,
    required String email,
    required String password,
    @Default([]) List<ScheduleV2> createdSchedulesV2,
    @Default([]) List<ScheduleV2> submittedSchedulesV2,
    @Default([]) List<ScheduleV2> reviewedSchedulesV2,
    @Default([]) List<ScheduleV2> approvedSchedulesV2,
    @Default([]) List<ChecklistQuestionV2> completedChecklistQuestionsV2,
    bool? isDeleted,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

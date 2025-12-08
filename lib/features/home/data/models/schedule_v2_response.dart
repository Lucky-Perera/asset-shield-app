import 'package:asset_shield/core/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_v2_response.freezed.dart';
part 'schedule_v2_response.g.dart';

/// ─────────────────────────────────────────────────────────
/// ROOT RESPONSE
/// ─────────────────────────────────────────────────────────
@freezed
abstract class ScheduleListResponse with _$ScheduleListResponse {
  const factory ScheduleListResponse({
    required bool success,
    required ScheduleListData data,
  }) = _ScheduleListResponse;

  factory ScheduleListResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleListResponseFromJson(json);
}

@freezed
abstract class ScheduleListData with _$ScheduleListData {
  const factory ScheduleListData({
    required List<ScheduleV2Response> data,
    required Pagination pagination,
  }) = _ScheduleListData;

  factory ScheduleListData.fromJson(Map<String, dynamic> json) =>
      _$ScheduleListDataFromJson(json);
}

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    required int page,
    required int limit,
    required int total,
    required int totalPages,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

/// ─────────────────────────────────────────────────────────
/// SCHEDULE V2 RESPONSE
/// ─────────────────────────────────────────────────────────
@freezed
abstract class ScheduleV2Response with _$ScheduleV2Response {
  const factory ScheduleV2Response({
    required String id,
    required String scheduleName,
    required String status,
    required String description,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime dueDate,
    DateTime? inspectionDate,
    required bool isRBISchedule,
    required bool isRecurring,
    int? inspectionInterval,
    String? damageMechanism,
    String? inspectionEffectiveness,
    String? aiSummary,
    String? comments,
    required bool isDeleted,
    required String scheduleTypeId,
    required String operationId,
    required String equipmentId,
    required String createdById,
    String? approvedById,
    String? reviewedById,
    required List<AttachmentV2> attachments,
    required List<AttachmentV2> scopeImages,
    required List<ChecklistQuestionTemplate> checklistQuestionTemplates,
    required List<InspectionMethodV2> inspectionMethods,
    required List<PotentialEmergentWorkV2> potentialEmergentWorks,
    required List<ScheduleComponent> components,
    User? approvedBy,
    User? createdBy,
    User? reviewedBy,
    Equipment? equipment,
    ReferenceData? operation,
    ReferenceData? scheduleType,
    RecordV2Response? record,
  }) = _ScheduleV2Response;

  factory ScheduleV2Response.fromJson(Map<String, dynamic> json) =>
      _$ScheduleV2ResponseFromJson(json);
}

/// ─────────────────────────────────────────────────────────
/// USERS
/// ─────────────────────────────────────────────────────────
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
    required bool isDeleted,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

/// ─────────────────────────────────────────────────────────
/// EQUIPMENT
/// ─────────────────────────────────────────────────────────
@freezed
abstract class Equipment with _$Equipment {
  const factory Equipment({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String equipmentId,
    required String name,
    required String cmmsSystem,
    required bool isCorrosionLoopAvailable,
    String? corrosionLoopId,
    required bool isDeleted,
  }) = _Equipment;

  factory Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);
}

/// ─────────────────────────────────────────────────────────
/// REFERENCE DATA (scheduleType, operation)
/// ─────────────────────────────────────────────────────────
@freezed
abstract class ReferenceData with _$ReferenceData {
  const factory ReferenceData({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String category,
    required String value,
    String? displayValue,
  }) = _ReferenceData;

  factory ReferenceData.fromJson(Map<String, dynamic> json) =>
      _$ReferenceDataFromJson(json);
}

/// ─────────────────────────────────────────────────────────
/// CHECKLIST QUESTION TEMPLATE
/// ─────────────────────────────────────────────────────────
@freezed
abstract class ChecklistQuestionTemplate with _$ChecklistQuestionTemplate {
  const factory ChecklistQuestionTemplate({
    required String id,
    String? inspectionType,
    required String question,
    String? helpText,
    required ResponseType responseType,
    required bool isDeleted,
    required String scheduleId,
    ChecklistAnswer? checklistAnswer,
  }) = _ChecklistQuestionTemplate;

  factory ChecklistQuestionTemplate.fromJson(Map<String, dynamic> json) =>
      _$ChecklistQuestionTemplateFromJson(json);
}

/// ─────────────────────────────────────────────────────────
/// CHECKLIST ANSWER
/// ─────────────────────────────────────────────────────────
@freezed
abstract class ChecklistAnswer with _$ChecklistAnswer {
  const factory ChecklistAnswer({
    required String id,
    String? value,
    String? note,
    DateTime? completedAt,
    required String recordId,
    required String questionId,
    List<AttachmentV2>? attachments,
  }) = _ChecklistAnswer;

  factory ChecklistAnswer.fromJson(Map<String, dynamic> json) =>
      _$ChecklistAnswerFromJson(json);
}

/// ─────────────────────────────────────────────────────────
/// ATTACHMENTS V2
/// ─────────────────────────────────────────────────────────
@freezed
abstract class AttachmentV2 with _$AttachmentV2 {
  const factory AttachmentV2({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String documentID,
    required String name,
    required String url,
    String? description,
    String? comments,
    bool? isDeleted,
    String? equipmentId,
    String? scheduleId,
    String? scopeImageScheduleId,
    String? checklistAnswerId,
    String? recordId,
  }) = _AttachmentV2;

  factory AttachmentV2.fromJson(Map<String, dynamic> json) =>
      _$AttachmentV2FromJson(json);
}

/// ─────────────────────────────────────────────────────────
/// RECORD V2
/// ─────────────────────────────────────────────────────────
@freezed
abstract class RecordV2Response with _$RecordV2Response {
  const factory RecordV2Response({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String description,
    required DateTime recordCreatedDate,
    required String status,
    required DateTime inspectionDate,
    required String actionCreated,
    String? comments,
    bool? isDeleted,
    required String scheduleId,
    String? referenceDataId,
    required String equipmentId,
    required String scheduleTypeId,
    String? submittedById,
    String? approvedById,
  }) = _RecordV2Response;

  factory RecordV2Response.fromJson(Map<String, dynamic> json) =>
      _$RecordV2ResponseFromJson(json);
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
abstract class ScheduleComponent with _$ScheduleComponent {
  const factory ScheduleComponent({
    required String id,
    required String scheduleId,
    required String componentId,
    required MinimalComponent component,
  }) = _ScheduleComponent;

  factory ScheduleComponent.fromJson(Map<String, dynamic> json) =>
      _$ScheduleComponentFromJson(json);
}

@freezed
abstract class MinimalComponent with _$MinimalComponent {
  const factory MinimalComponent({
    required String id,
    required String componentID,
    required String name,
  }) = _MinimalComponent;

  factory MinimalComponent.fromJson(Map<String, dynamic> json) =>
      _$MinimalComponentFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_response.freezed.dart';
part 'schedule_response.g.dart';

@freezed
abstract class ScheduleResponse with _$ScheduleResponse {
  const factory ScheduleResponse({
    required bool success,
    required ScheduleData data,
  }) = _ScheduleResponse;

  factory ScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseFromJson(json);
}

@freezed
abstract class ScheduleData with _$ScheduleData {
  const factory ScheduleData({
    required List<Schedule> data,
    required Pagination pagination,
  }) = _ScheduleData;

  factory ScheduleData.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDataFromJson(json);
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
abstract class Schedule with _$Schedule {
  const factory Schedule({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String scheduleID,
    required String equipmentId,
    Equipment? equipment,
    @Default([]) List<ScheduleComponent> components,
    required String description,
    required String scheduleTypeId,
    ReferenceData? scheduleType,
    required String status,
    required DateTime dueDate,
    required String operationId,
    ReferenceData? operation,
    required bool isRBISchedule,
    required bool isRecurring,
    int? inspectionInterval,
    required bool isScopeAttached,
    String? comments,
    String? aiSummary,
    @Default([]) List<Attachment> attachments,
    @Default([]) List<RecordCreditedItem> linkedItems,
    // Scope? scope,
    bool? isDeleted,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
abstract class Equipment with _$Equipment {
  const factory Equipment({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? equipmentId,
    String? name,
    String? cmmsSystem,
    bool? isCorrosionLoopAvailable,
    String? corrosionLoopId,
    CorrosionLoop? corrosionLoop,
    bool? isDeleted,
  }) = _Equipment;

  factory Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);
}

@freezed
abstract class CorrosionLoop with _$CorrosionLoop {
  const factory CorrosionLoop({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? loopId,
    String? from,
    String? to,
    String? riskLevel,
    String? degMechComments,
    bool? isDeleted,
  }) = _CorrosionLoop;

  factory CorrosionLoop.fromJson(Map<String, dynamic> json) =>
      _$CorrosionLoopFromJson(json);
}

@freezed
abstract class ScheduleComponent with _$ScheduleComponent {
  const factory ScheduleComponent({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? scheduleId,
    String? componentId,
    Component? component,
  }) = _ScheduleComponent;

  factory ScheduleComponent.fromJson(Map<String, dynamic> json) =>
      _$ScheduleComponentFromJson(json);
}

@freezed
abstract class Component with _$Component {
  const factory Component({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? equipmentComponentId,
    String? componentID,
    String? name,
    String? componentRefDataId,
    ReferenceData? componentRefData,
    String? equipmentId,
    String? familyId,
    ReferenceData? family,
    DateTime? dateInService,
    int? operatingPressure,
    int? operatingPressureShell,
    int? operatingTemperature,
    String? areaHumidityId,
    ReferenceData? areaHumidity,
    String? foundationTypeId,
    ReferenceData? foundationType,
    String? initialFluidPhaseId,
    ReferenceData? initialFluidPhase,
    bool? isToxicMixture,
    double? percentToxic,
    double? inventory,
    double? detectionTime,
    double? isolationTime,
    double? designPressure,
    double? designPressureShellSide,
    double? designTemperature,
    double? designTemperatureShellSide,
    double? diameter,
    double? length,
    double? fillHeight,
    double? norminalThickness,
    String? stressLookupTableId,
    ReferenceData? stressLookupTable,
    String? bmCode,
    String? bmYear,
    String? bmSpec,
    String? bmGrade,
    String? weldJointEffyId,
    ReferenceData? weldJointEffy,
    bool? isInsulated,
    String? insulationTypeId,
    ReferenceData? insulationType,
    double? pipingCircuitLength,
    bool? isPWHT,
    double? courseNumber,
    String? isEntryPossibleId,
    ReferenceData? isEntryPossible,
    String? corrosiveProduct,
    String? internalCorrosionTypeId,
    ReferenceData? internalCorrosionType,
    String? internalCorrosionTypeShellSideId,
    ReferenceData? internalCorrosionTypeShellSide,
    bool? isPredictableIntCorrLocation,
    bool? isPredictableIntCorrLocationShellSide,
    double? estimatedInternalCorrosionRate,
    double? estimatedExternalCorrosionRate,
    double? measuredExternalCorrosionRate,
    String? sourceOfCalculatedCorrosionRateId,
    ReferenceData? sourceOfCalculatedCorrosionRate,
    DateTime? lastKnownInspectionDate,
    String? onlineMonitoringFlagId,
    ReferenceData? onlineMonitoringFlag,
    String? keyProcessVariableId,
    ReferenceData? keyProcessVariable,
    String? electricalResistanceProbeId,
    ReferenceData? electricalResistanceProbe,
    String? corrosionCouponsId,
    ReferenceData? corrosionCoupons,
    DateTime? linerInstallationDate,
    String? linerConditionId,
    ReferenceData? linerCondition,
    String? immersionGradeCoatingQualityId,
    ReferenceData? immersionGradeCoatingQuality,
    bool? isDeleted,
  }) = _Component;

  factory Component.fromJson(Map<String, dynamic> json) =>
      _$ComponentFromJson(json);
}

@freezed
abstract class ReferenceData with _$ReferenceData {
  const factory ReferenceData({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? category,
    String? value,
    String? displayValue,
  }) = _ReferenceData;

  factory ReferenceData.fromJson(Map<String, dynamic> json) =>
      _$ReferenceDataFromJson(json);
}

@freezed
abstract class Attachment with _$Attachment {
  const factory Attachment({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? documentID,
    String? name,
    String? url,
    String? description,
    String? comments,
    String? equipmentId,
    String? scheduleId,
    String? recordId,
    String? scopeId,
    bool? isDeleted,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
}

@freezed
abstract class RecordCreditedItem with _$RecordCreditedItem {
  const factory RecordCreditedItem({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? recordId,
    String? scheduleId,
  }) = _RecordCreditedItem;

  factory RecordCreditedItem.fromJson(Map<String, dynamic> json) =>
      _$RecordCreditedItemFromJson(json);
}

// @freezed
// abstract class Scope with _$Scope {
//   const factory Scope({
//     String? id,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     String? scheduleId,
//     String? damageMechanism,
//     String? inspectionEffectiveness,
//     @Default([]) List<InspectionMethod> inspectionMethods,
//     @Default([]) List<Attachment> scopeImages,
//     @Default([]) List<PotentialEmergentWork> potentialEmergentWorks,
//     bool? isDeleted,
//   }) = _Scope;

//   factory Scope.fromJson(Map<String, dynamic> json) => _$ScopeFromJson(json);
// }

// @freezed
// abstract class InspectionMethod with _$InspectionMethod {
//   const factory InspectionMethod({
//     String? id,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     String? scopeId,
//     String? methodId,
//     ReferenceData? method,
//     String? specialAccessId,
//     ReferenceData? specialAccess,
//     String? insulationRemovalId,
//     ReferenceData? insulationRemoval,
//     String? cleaningId,
//     ReferenceData? cleaning,
//     String? location,
//     String? notes,
//     bool? isDeleted,
//   }) = _InspectionMethod;

//   factory InspectionMethod.fromJson(Map<String, dynamic> json) =>
//       _$InspectionMethodFromJson(json);
// }

// @freezed
// abstract class PotentialEmergentWork with _$PotentialEmergentWork {
//   const factory PotentialEmergentWork({
//     String? id,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     String? scopeId,
//     String? potentialEmergentWorkId,
//     ReferenceData? potentialEmergentWork,
//     String? likelihoodId,
//     ReferenceData? likelihood,
//     String? notes,
//     bool? isDeleted,
//   }) = _PotentialEmergentWork;

//   factory PotentialEmergentWork.fromJson(Map<String, dynamic> json) =>
//       _$PotentialEmergentWorkFromJson(json);
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'scope_model.freezed.dart';
part 'scope_model.g.dart';

@freezed
abstract class Scope with _$Scope {
  const factory Scope({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String scheduleId,
    required String damageMechanism,
    required String inspectionEffectiveness,
    required bool isDeleted,
    required List<InspectionMethod> inspectionMethods,
    required List<PotentialEmergentWork> potentialEmergentWorks,
  }) = _Scope;

  factory Scope.fromJson(Map<String, dynamic> json) => _$ScopeFromJson(json);
}

@freezed
abstract class ScopeResponse with _$ScopeResponse {
  const factory ScopeResponse({required bool success, Scope? data}) =
      _ScopeResponse;

  factory ScopeResponse.fromJson(Map<String, dynamic> json) =>
      _$ScopeResponseFromJson(json);
}

@freezed
abstract class ReferenceData with _$ReferenceData {
  const factory ReferenceData({
    required String id,
    required String value,
    String? displayValue,
  }) = _ReferenceData;

  factory ReferenceData.fromJson(Map<String, dynamic> json) =>
      _$ReferenceDataFromJson(json);
}

@freezed
abstract class InspectionMethod with _$InspectionMethod {
  const factory InspectionMethod({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String scopeId,
    required String methodId,
    required String specialAccessId,
    required String insulationRemovalId,
    required String cleaningId,
    required String location,
    required String notes,
    required bool isDeleted,
    required ReferenceData method,
    required ReferenceData specialAccess,
    required ReferenceData insulationRemoval,
    required ReferenceData cleaning,
  }) = _InspectionMethod;

  factory InspectionMethod.fromJson(Map<String, dynamic> json) =>
      _$InspectionMethodFromJson(json);
}

@freezed
abstract class PotentialEmergentWork with _$PotentialEmergentWork {
  const factory PotentialEmergentWork({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String scopeId,
    required String potentialEmergentWorkId,
    required String likelihoodId,
    required String notes,
    required bool isDeleted,
    required ReferenceData potentialEmergentWork,
    required ReferenceData likelihood,
  }) = _PotentialEmergentWork;

  factory PotentialEmergentWork.fromJson(Map<String, dynamic> json) =>
      _$PotentialEmergentWorkFromJson(json);
}

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'component.freezed.dart';
// part 'component.g.dart';

// @freezed
// abstract class Component with _$Component {
//   const factory Component({
//     required String id,
//     required DateTime createdAt,
//     required DateTime updatedAt,

//     required String equipmentComponentId,
//     required String componentID,
//     required String name,
//     required String componentRefDataId,
//     required String equipmentId,
//     required String familyId,
//     required DateTime dateInService,

//     required int operatingPressure,
//     required int operatingPressureShell,
//     required int operatingTemperature,

//     required String areaHumidityId,
//     String? foundationTypeId,
//     required String initialFluidPhaseId,

//     required bool isToxicMixture,
//     double? percentToxic,
//     double? inventory,
//     required double detectionTime,
//     required double isolationTime,

//     double? designPressure,
//     double? designPressureShellSide,
//     double? designTemperature,
//     double? designTemperatureShellSide,

//     double? diameter,
//     double? length,
//     double? fillHeight,
//     double? norminalThickness,

//     String? stressLookupTableId,
//     String? bmCode,
//     String? bmYear,
//     String? bmSpec,
//     String? bmGrade,
//     String? weldJointEffyId,

//     required bool isInsulated,
//     String? insulationTypeId,

//     double? pipingCircuitLength,
//     required bool isPWHT,
//     double? courseNumber,

//     required String isEntryPossibleId,
//     String? corrosiveProduct,

//     required String internalCorrosionTypeId,
//     required String internalCorrosionTypeShellSideId,

//     required bool isPredictableIntCorrLocation,
//     required bool isPredictableIntCorrLocationShellSide,

//     required double estimatedInternalCorrosionRate,
//     required double estimatedExternalCorrosionRate,
//     double? measuredExternalCorrosionRate,

//     String? sourceOfCalculatedCorrosionRateId,
//     DateTime? lastKnownInspectionDate,

//     required String onlineMonitoringFlagId,
//     String? keyProcessVariableId,
//     String? electricalResistanceProbeId,
//     String? corrosionCouponsId,

//     required DateTime linerInstallationDate,
//     required String linerConditionId,
//     required String immersionGradeCoatingQualityId,

//     bool? isDeleted,

//     // Arrays (IDs only – because API usually returns these flattened)
//     List<ComponentProcessFluidResponse>? processFluids,
//     List<ComponentToxicFluidResponse>? toxicFluids,
//   }) = _Component;

//   factory Component.fromJson(Map<String, dynamic> json) =>
//       _$ComponentFromJson(json);
// }

// /// ----------------------------------------------------------------------
// /// PROCESS FLUIDS
// /// ----------------------------------------------------------------------
// @freezed
// abstract class ComponentProcessFluidResponse
//     with _$ComponentProcessFluidResponse {
//   const factory ComponentProcessFluidResponse({
//     required String id,
//     required String componentId,
//     required String referenceDataId,
//   }) = _ComponentProcessFluidResponse;

//   factory ComponentProcessFluidResponse.fromJson(Map<String, dynamic> json) =>
//       _$ComponentProcessFluidResponseFromJson(json);
// }

// /// ----------------------------------------------------------------------
// /// TOXIC FLUIDS
// /// ----------------------------------------------------------------------
// @freezed
// abstract class ComponentToxicFluidResponse with _$ComponentToxicFluidResponse {
//   const factory ComponentToxicFluidResponse({
//     required String id,
//     required String componentId,
//     required String referenceDataId,
//   }) = _ComponentToxicFluidResponse;

//   factory ComponentToxicFluidResponse.fromJson(Map<String, dynamic> json) =>
//       _$ComponentToxicFluidResponseFromJson(json);
// }

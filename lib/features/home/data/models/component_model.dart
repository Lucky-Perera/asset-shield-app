import 'package:freezed_annotation/freezed_annotation.dart';
import 'component_ref_data_model.dart';

part 'component_model.freezed.dart';
part 'component_model.g.dart';

@freezed
abstract class ComponentModel with _$ComponentModel {
  const factory ComponentModel({
    required String id,
    required String createdAt,
    required String updatedAt,
    required String equipmentComponentId,
    required String componentID,
    required String name,
    required String componentRefDataId,
    required String equipmentId,
    required String familyId,
    required String dateInService,
    required int operatingPressure,
    required int operatingPressureShell,
    required int operatingTemperature,
    required String areaHumidityId,
    String? foundationTypeId,
    required String initialFluidPhaseId,
    required bool isToxicMixture,
    int? percentToxic,
    dynamic inventory,
    required int detectionTime,
    required int isolationTime,
    dynamic designPressure,
    dynamic designPressureShellSide,
    dynamic designTemperature,
    dynamic designTemperatureShellSide,
    dynamic diameter,
    dynamic length,
    dynamic fillHeight,
    dynamic norminalThickness,
    String? stressLookupTableId,
    String? bmCode,
    String? bmYear,
    String? bmSpec,
    String? bmGrade,
    String? weldJointEffyId,
    required bool isInsulated,
    String? insulationTypeId,
    required int pipingCircuitLength,
    required bool isPWHT,
    int? courseNumber,
    required String isEntryPossibleId,
    String? corrosiveProduct,
    required String internalCorrosionTypeId,
    required String internalCorrosionTypeShellSideId,
    required bool isPredictableIntCorrLocation,
    required bool isPredictableIntCorrLocationShellSide,
    required int estimatedInternalCorrosionRate,
    required int estimatedExternalCorrosionRate,
    dynamic measuredExternalCorrosionRate,
    String? sourceOfCalculatedCorrosionRateId,
    required String lastKnownInspectionDate,
    required String onlineMonitoringFlagId,
    required String keyProcessVariableId,
    required String electricalResistanceProbeId,
    required String corrosionCouponsId,
    required String linerInstallationDate,
    required String linerConditionId,
    required String immersionGradeCoatingQualityId,
    required bool isDeleted,
    ComponentRefDataModel? componentRefData,
  }) = _ComponentModel;

  factory ComponentModel.fromJson(Map<String, dynamic> json) =>
      _$ComponentModelFromJson(json);
}

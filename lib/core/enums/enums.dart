import 'package:freezed_annotation/freezed_annotation.dart';

enum ScheduleStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('OVERDUE')
  overdue,
  @JsonValue('CANCELLED')
  cancelled,
}

enum RecordStatus {
  @JsonValue('Rejected')
  rejected,
  @JsonValue('PendingApproval')
  pendingApproval,
  @JsonValue('Approved')
  approved,
  @JsonValue('Draft')
  draft,
}

// ignore: constant_identifier_names
enum ResponseType {
  @JsonValue('GoodFairPoorNA')
  goodFairPoorNA,
  @JsonValue('YesNo')
  yesNo,
  @JsonValue('CustomOptions')
  customOptions,
}

enum ScheduleV2Status {
  @JsonValue('Draft')
  draft,
  @JsonValue('Published')
  published,
  @JsonValue('UnderReview')
  underReview,
  @JsonValue('Approved')
  approved,
}

extension ScheduleV2StatusExtension on ScheduleV2Status {
  String get displayName {
    switch (this) {
      case ScheduleV2Status.draft:
        return 'Draft';
      case ScheduleV2Status.published:
        return 'Published';
      case ScheduleV2Status.underReview:
        return 'Under Review';
      case ScheduleV2Status.approved:
        return 'Approved';
    }
  }
}

enum InspectionType {
  @JsonValue('INTERNAL')
  internal,
  @JsonValue('EXTERNAL')
  external,
}

extension InspectionTypeExtension on InspectionType {
  String get displayName {
    switch (this) {
      case InspectionType.internal:
        return 'Internal';
      case InspectionType.external:
        return 'External';
    }
  }

  String get apiValue {
    switch (this) {
      case InspectionType.internal:
        return 'INTERNAL';
      case InspectionType.external:
        return 'EXTERNAL';
    }
  }
}

enum Role {
  @JsonValue('SuperAdmin')
  superAdmin,
  @JsonValue('Admin')
  admin,
  @JsonValue('IntegrityEngineer')
  integrityEngineer,
  @JsonValue('Technician')
  technician,
}

enum RefDataCategory {
  @JsonValue('Material')
  material,
  @JsonValue('DamageMechanism')
  damageMechanism,
  @JsonValue('ScheduleType')
  scheduleType,
  @JsonValue('ScheduleStatus')
  scheduleStatus,
  @JsonValue('Operation')
  operation,
  @JsonValue('Component')
  component,
  @JsonValue('ComponentFamily')
  componentFamily,
  @JsonValue('AreaHumidity')
  areaHumidity,
  @JsonValue('FoundationType')
  foundationType,
  @JsonValue('InitialFluidPhase')
  initialFluidPhase,
  @JsonValue('ProcessFluid')
  processFluid,
  @JsonValue('ToxicFluid')
  toxicFluid,
  @JsonValue('StressLookupTable')
  stressLookupTable,
  @JsonValue('WeldJointEffy')
  weldJointEffy,
  @JsonValue('InsulationType')
  insulationType,
  @JsonValue('IsEntryPossible')
  isEntryPossible,
  @JsonValue('InternalCorrosionType')
  internalCorrosionType,
  @JsonValue('CalculatedCorrosionRateSource')
  calculatedCorrosionRateSource,
  @JsonValue('OnlineMonitoringFlag')
  onlineMonitoringFlag,
  @JsonValue('KeyProcessVariable')
  keyProcessVariable,
  @JsonValue('ElectricalResistanceProbe')
  electricalResistanceProbe,
  @JsonValue('CorrosionCoupons')
  corrosionCoupons,
  @JsonValue('LinerCondition')
  linerCondition,
  @JsonValue('ImmersionGradeCoatingQuality')
  immersionGradeCoatingQuality,
  @JsonValue('InspectionMethod')
  inspectionMethod,
  @JsonValue('SpecialAccess')
  specialAccess,
  @JsonValue('InsulationRemoval')
  insulationRemoval,
  @JsonValue('Cleaning')
  cleaning,
  @JsonValue('PotentialEmergentWork')
  potentialEmergentWork,
  @JsonValue('Likelihood')
  likelihood,
  @JsonValue('Unknown')
  unknown,
}

enum ResponseValue {
  @JsonValue('Good')
  good,
  @JsonValue('Fair')
  fair,
  @JsonValue('Poor')
  poor,
  @JsonValue('NA')
  na,
  @JsonValue('Yes')
  yes,
  @JsonValue('No')
  no,
}

extension ResponseValueExtension on ResponseValue {
  String get displayName {
    switch (this) {
      case ResponseValue.good:
        return 'Good';
      case ResponseValue.fair:
        return 'Fair';
      case ResponseValue.poor:
        return 'Poor';
      case ResponseValue.na:
        return 'N/A';
      case ResponseValue.yes:
        return 'Yes';
      case ResponseValue.no:
        return 'No';
    }
  }

  String get apiValue {
    switch (this) {
      case ResponseValue.good:
        return 'Good';
      case ResponseValue.fair:
        return 'Fair';
      case ResponseValue.poor:
        return 'Poor';
      case ResponseValue.na:
        return 'NA';
      case ResponseValue.yes:
        return 'Yes';
      case ResponseValue.no:
        return 'No';
    }
  }
}

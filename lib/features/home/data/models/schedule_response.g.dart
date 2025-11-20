// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleResponse _$ScheduleResponseFromJson(Map<String, dynamic> json) =>
    _ScheduleResponse(
      success: json['success'] as bool,
      data: ScheduleData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScheduleResponseToJson(_ScheduleResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_ScheduleData _$ScheduleDataFromJson(Map<String, dynamic> json) =>
    _ScheduleData(
      data: (json['data'] as List<dynamic>)
          .map((e) => Schedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: Pagination.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ScheduleDataToJson(_ScheduleData instance) =>
    <String, dynamic>{'data': instance.data, 'pagination': instance.pagination};

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };

_Schedule _$ScheduleFromJson(Map<String, dynamic> json) => _Schedule(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  scheduleID: json['scheduleID'] as String,
  equipmentId: json['equipmentId'] as String,
  equipment: json['equipment'] == null
      ? null
      : Equipment.fromJson(json['equipment'] as Map<String, dynamic>),
  components:
      (json['components'] as List<dynamic>?)
          ?.map((e) => ScheduleComponent.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  description: json['description'] as String,
  scheduleTypeId: json['scheduleTypeId'] as String,
  scheduleType: json['scheduleType'] == null
      ? null
      : ReferenceData.fromJson(json['scheduleType'] as Map<String, dynamic>),
  status: json['status'] as String,
  dueDate: DateTime.parse(json['dueDate'] as String),
  operationId: json['operationId'] as String,
  operation: json['operation'] == null
      ? null
      : ReferenceData.fromJson(json['operation'] as Map<String, dynamic>),
  isRBISchedule: json['isRBISchedule'] as bool,
  isRecurring: json['isRecurring'] as bool,
  inspectionInterval: (json['inspectionInterval'] as num?)?.toInt(),
  isScopeAttached: json['isScopeAttached'] as bool,
  comments: json['comments'] as String?,
  aiSummary: json['aiSummary'] as String?,
  attachments:
      (json['attachments'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  linkedItems:
      (json['linkedItems'] as List<dynamic>?)
          ?.map((e) => RecordCreditedItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isDeleted: json['isDeleted'] as bool?,
);

Map<String, dynamic> _$ScheduleToJson(_Schedule instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'scheduleID': instance.scheduleID,
  'equipmentId': instance.equipmentId,
  'equipment': instance.equipment,
  'components': instance.components,
  'description': instance.description,
  'scheduleTypeId': instance.scheduleTypeId,
  'scheduleType': instance.scheduleType,
  'status': instance.status,
  'dueDate': instance.dueDate.toIso8601String(),
  'operationId': instance.operationId,
  'operation': instance.operation,
  'isRBISchedule': instance.isRBISchedule,
  'isRecurring': instance.isRecurring,
  'inspectionInterval': instance.inspectionInterval,
  'isScopeAttached': instance.isScopeAttached,
  'comments': instance.comments,
  'aiSummary': instance.aiSummary,
  'attachments': instance.attachments,
  'linkedItems': instance.linkedItems,
  'isDeleted': instance.isDeleted,
};

_Equipment _$EquipmentFromJson(Map<String, dynamic> json) => _Equipment(
  id: json['id'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  equipmentId: json['equipmentId'] as String?,
  name: json['name'] as String?,
  cmmsSystem: json['cmmsSystem'] as String?,
  isCorrosionLoopAvailable: json['isCorrosionLoopAvailable'] as bool?,
  corrosionLoopId: json['corrosionLoopId'] as String?,
  corrosionLoop: json['corrosionLoop'] == null
      ? null
      : CorrosionLoop.fromJson(json['corrosionLoop'] as Map<String, dynamic>),
  isDeleted: json['isDeleted'] as bool?,
);

Map<String, dynamic> _$EquipmentToJson(_Equipment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'equipmentId': instance.equipmentId,
      'name': instance.name,
      'cmmsSystem': instance.cmmsSystem,
      'isCorrosionLoopAvailable': instance.isCorrosionLoopAvailable,
      'corrosionLoopId': instance.corrosionLoopId,
      'corrosionLoop': instance.corrosionLoop,
      'isDeleted': instance.isDeleted,
    };

_CorrosionLoop _$CorrosionLoopFromJson(Map<String, dynamic> json) =>
    _CorrosionLoop(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      loopId: json['loopId'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      riskLevel: json['riskLevel'] as String?,
      degMechComments: json['degMechComments'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$CorrosionLoopToJson(_CorrosionLoop instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'loopId': instance.loopId,
      'from': instance.from,
      'to': instance.to,
      'riskLevel': instance.riskLevel,
      'degMechComments': instance.degMechComments,
      'isDeleted': instance.isDeleted,
    };

_ScheduleComponent _$ScheduleComponentFromJson(Map<String, dynamic> json) =>
    _ScheduleComponent(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      scheduleId: json['scheduleId'] as String?,
      componentId: json['componentId'] as String?,
      component: json['component'] == null
          ? null
          : Component.fromJson(json['component'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScheduleComponentToJson(_ScheduleComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'scheduleId': instance.scheduleId,
      'componentId': instance.componentId,
      'component': instance.component,
    };

_Component _$ComponentFromJson(Map<String, dynamic> json) => _Component(
  id: json['id'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  equipmentComponentId: json['equipmentComponentId'] as String?,
  componentID: json['componentID'] as String?,
  name: json['name'] as String?,
  componentRefDataId: json['componentRefDataId'] as String?,
  componentRefData: json['componentRefData'] == null
      ? null
      : ReferenceData.fromJson(
          json['componentRefData'] as Map<String, dynamic>,
        ),
  equipmentId: json['equipmentId'] as String?,
  familyId: json['familyId'] as String?,
  family: json['family'] == null
      ? null
      : ReferenceData.fromJson(json['family'] as Map<String, dynamic>),
  dateInService: json['dateInService'] == null
      ? null
      : DateTime.parse(json['dateInService'] as String),
  operatingPressure: (json['operatingPressure'] as num?)?.toInt(),
  operatingPressureShell: (json['operatingPressureShell'] as num?)?.toInt(),
  operatingTemperature: (json['operatingTemperature'] as num?)?.toInt(),
  areaHumidityId: json['areaHumidityId'] as String?,
  areaHumidity: json['areaHumidity'] == null
      ? null
      : ReferenceData.fromJson(json['areaHumidity'] as Map<String, dynamic>),
  foundationTypeId: json['foundationTypeId'] as String?,
  foundationType: json['foundationType'] == null
      ? null
      : ReferenceData.fromJson(json['foundationType'] as Map<String, dynamic>),
  initialFluidPhaseId: json['initialFluidPhaseId'] as String?,
  initialFluidPhase: json['initialFluidPhase'] == null
      ? null
      : ReferenceData.fromJson(
          json['initialFluidPhase'] as Map<String, dynamic>,
        ),
  isToxicMixture: json['isToxicMixture'] as bool?,
  percentToxic: (json['percentToxic'] as num?)?.toDouble(),
  inventory: (json['inventory'] as num?)?.toDouble(),
  detectionTime: (json['detectionTime'] as num?)?.toDouble(),
  isolationTime: (json['isolationTime'] as num?)?.toDouble(),
  designPressure: (json['designPressure'] as num?)?.toDouble(),
  designPressureShellSide: (json['designPressureShellSide'] as num?)
      ?.toDouble(),
  designTemperature: (json['designTemperature'] as num?)?.toDouble(),
  designTemperatureShellSide: (json['designTemperatureShellSide'] as num?)
      ?.toDouble(),
  diameter: (json['diameter'] as num?)?.toDouble(),
  length: (json['length'] as num?)?.toDouble(),
  fillHeight: (json['fillHeight'] as num?)?.toDouble(),
  norminalThickness: (json['norminalThickness'] as num?)?.toDouble(),
  stressLookupTableId: json['stressLookupTableId'] as String?,
  stressLookupTable: json['stressLookupTable'] == null
      ? null
      : ReferenceData.fromJson(
          json['stressLookupTable'] as Map<String, dynamic>,
        ),
  bmCode: json['bmCode'] as String?,
  bmYear: json['bmYear'] as String?,
  bmSpec: json['bmSpec'] as String?,
  bmGrade: json['bmGrade'] as String?,
  weldJointEffyId: json['weldJointEffyId'] as String?,
  weldJointEffy: json['weldJointEffy'] == null
      ? null
      : ReferenceData.fromJson(json['weldJointEffy'] as Map<String, dynamic>),
  isInsulated: json['isInsulated'] as bool?,
  insulationTypeId: json['insulationTypeId'] as String?,
  insulationType: json['insulationType'] == null
      ? null
      : ReferenceData.fromJson(json['insulationType'] as Map<String, dynamic>),
  pipingCircuitLength: (json['pipingCircuitLength'] as num?)?.toDouble(),
  isPWHT: json['isPWHT'] as bool?,
  courseNumber: (json['courseNumber'] as num?)?.toDouble(),
  isEntryPossibleId: json['isEntryPossibleId'] as String?,
  isEntryPossible: json['isEntryPossible'] == null
      ? null
      : ReferenceData.fromJson(json['isEntryPossible'] as Map<String, dynamic>),
  corrosiveProduct: json['corrosiveProduct'] as String?,
  internalCorrosionTypeId: json['internalCorrosionTypeId'] as String?,
  internalCorrosionType: json['internalCorrosionType'] == null
      ? null
      : ReferenceData.fromJson(
          json['internalCorrosionType'] as Map<String, dynamic>,
        ),
  internalCorrosionTypeShellSideId:
      json['internalCorrosionTypeShellSideId'] as String?,
  internalCorrosionTypeShellSide: json['internalCorrosionTypeShellSide'] == null
      ? null
      : ReferenceData.fromJson(
          json['internalCorrosionTypeShellSide'] as Map<String, dynamic>,
        ),
  isPredictableIntCorrLocation: json['isPredictableIntCorrLocation'] as bool?,
  isPredictableIntCorrLocationShellSide:
      json['isPredictableIntCorrLocationShellSide'] as bool?,
  estimatedInternalCorrosionRate:
      (json['estimatedInternalCorrosionRate'] as num?)?.toDouble(),
  estimatedExternalCorrosionRate:
      (json['estimatedExternalCorrosionRate'] as num?)?.toDouble(),
  measuredExternalCorrosionRate: (json['measuredExternalCorrosionRate'] as num?)
      ?.toDouble(),
  sourceOfCalculatedCorrosionRateId:
      json['sourceOfCalculatedCorrosionRateId'] as String?,
  sourceOfCalculatedCorrosionRate:
      json['sourceOfCalculatedCorrosionRate'] == null
      ? null
      : ReferenceData.fromJson(
          json['sourceOfCalculatedCorrosionRate'] as Map<String, dynamic>,
        ),
  lastKnownInspectionDate: json['lastKnownInspectionDate'] == null
      ? null
      : DateTime.parse(json['lastKnownInspectionDate'] as String),
  onlineMonitoringFlagId: json['onlineMonitoringFlagId'] as String?,
  onlineMonitoringFlag: json['onlineMonitoringFlag'] == null
      ? null
      : ReferenceData.fromJson(
          json['onlineMonitoringFlag'] as Map<String, dynamic>,
        ),
  keyProcessVariableId: json['keyProcessVariableId'] as String?,
  keyProcessVariable: json['keyProcessVariable'] == null
      ? null
      : ReferenceData.fromJson(
          json['keyProcessVariable'] as Map<String, dynamic>,
        ),
  electricalResistanceProbeId: json['electricalResistanceProbeId'] as String?,
  electricalResistanceProbe: json['electricalResistanceProbe'] == null
      ? null
      : ReferenceData.fromJson(
          json['electricalResistanceProbe'] as Map<String, dynamic>,
        ),
  corrosionCouponsId: json['corrosionCouponsId'] as String?,
  corrosionCoupons: json['corrosionCoupons'] == null
      ? null
      : ReferenceData.fromJson(
          json['corrosionCoupons'] as Map<String, dynamic>,
        ),
  linerInstallationDate: json['linerInstallationDate'] == null
      ? null
      : DateTime.parse(json['linerInstallationDate'] as String),
  linerConditionId: json['linerConditionId'] as String?,
  linerCondition: json['linerCondition'] == null
      ? null
      : ReferenceData.fromJson(json['linerCondition'] as Map<String, dynamic>),
  immersionGradeCoatingQualityId:
      json['immersionGradeCoatingQualityId'] as String?,
  immersionGradeCoatingQuality: json['immersionGradeCoatingQuality'] == null
      ? null
      : ReferenceData.fromJson(
          json['immersionGradeCoatingQuality'] as Map<String, dynamic>,
        ),
  isDeleted: json['isDeleted'] as bool?,
);

Map<String, dynamic> _$ComponentToJson(
  _Component instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'equipmentComponentId': instance.equipmentComponentId,
  'componentID': instance.componentID,
  'name': instance.name,
  'componentRefDataId': instance.componentRefDataId,
  'componentRefData': instance.componentRefData,
  'equipmentId': instance.equipmentId,
  'familyId': instance.familyId,
  'family': instance.family,
  'dateInService': instance.dateInService?.toIso8601String(),
  'operatingPressure': instance.operatingPressure,
  'operatingPressureShell': instance.operatingPressureShell,
  'operatingTemperature': instance.operatingTemperature,
  'areaHumidityId': instance.areaHumidityId,
  'areaHumidity': instance.areaHumidity,
  'foundationTypeId': instance.foundationTypeId,
  'foundationType': instance.foundationType,
  'initialFluidPhaseId': instance.initialFluidPhaseId,
  'initialFluidPhase': instance.initialFluidPhase,
  'isToxicMixture': instance.isToxicMixture,
  'percentToxic': instance.percentToxic,
  'inventory': instance.inventory,
  'detectionTime': instance.detectionTime,
  'isolationTime': instance.isolationTime,
  'designPressure': instance.designPressure,
  'designPressureShellSide': instance.designPressureShellSide,
  'designTemperature': instance.designTemperature,
  'designTemperatureShellSide': instance.designTemperatureShellSide,
  'diameter': instance.diameter,
  'length': instance.length,
  'fillHeight': instance.fillHeight,
  'norminalThickness': instance.norminalThickness,
  'stressLookupTableId': instance.stressLookupTableId,
  'stressLookupTable': instance.stressLookupTable,
  'bmCode': instance.bmCode,
  'bmYear': instance.bmYear,
  'bmSpec': instance.bmSpec,
  'bmGrade': instance.bmGrade,
  'weldJointEffyId': instance.weldJointEffyId,
  'weldJointEffy': instance.weldJointEffy,
  'isInsulated': instance.isInsulated,
  'insulationTypeId': instance.insulationTypeId,
  'insulationType': instance.insulationType,
  'pipingCircuitLength': instance.pipingCircuitLength,
  'isPWHT': instance.isPWHT,
  'courseNumber': instance.courseNumber,
  'isEntryPossibleId': instance.isEntryPossibleId,
  'isEntryPossible': instance.isEntryPossible,
  'corrosiveProduct': instance.corrosiveProduct,
  'internalCorrosionTypeId': instance.internalCorrosionTypeId,
  'internalCorrosionType': instance.internalCorrosionType,
  'internalCorrosionTypeShellSideId': instance.internalCorrosionTypeShellSideId,
  'internalCorrosionTypeShellSide': instance.internalCorrosionTypeShellSide,
  'isPredictableIntCorrLocation': instance.isPredictableIntCorrLocation,
  'isPredictableIntCorrLocationShellSide':
      instance.isPredictableIntCorrLocationShellSide,
  'estimatedInternalCorrosionRate': instance.estimatedInternalCorrosionRate,
  'estimatedExternalCorrosionRate': instance.estimatedExternalCorrosionRate,
  'measuredExternalCorrosionRate': instance.measuredExternalCorrosionRate,
  'sourceOfCalculatedCorrosionRateId':
      instance.sourceOfCalculatedCorrosionRateId,
  'sourceOfCalculatedCorrosionRate': instance.sourceOfCalculatedCorrosionRate,
  'lastKnownInspectionDate': instance.lastKnownInspectionDate
      ?.toIso8601String(),
  'onlineMonitoringFlagId': instance.onlineMonitoringFlagId,
  'onlineMonitoringFlag': instance.onlineMonitoringFlag,
  'keyProcessVariableId': instance.keyProcessVariableId,
  'keyProcessVariable': instance.keyProcessVariable,
  'electricalResistanceProbeId': instance.electricalResistanceProbeId,
  'electricalResistanceProbe': instance.electricalResistanceProbe,
  'corrosionCouponsId': instance.corrosionCouponsId,
  'corrosionCoupons': instance.corrosionCoupons,
  'linerInstallationDate': instance.linerInstallationDate?.toIso8601String(),
  'linerConditionId': instance.linerConditionId,
  'linerCondition': instance.linerCondition,
  'immersionGradeCoatingQualityId': instance.immersionGradeCoatingQualityId,
  'immersionGradeCoatingQuality': instance.immersionGradeCoatingQuality,
  'isDeleted': instance.isDeleted,
};

_ReferenceData _$ReferenceDataFromJson(Map<String, dynamic> json) =>
    _ReferenceData(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      category: json['category'] as String?,
      value: json['value'] as String?,
      displayValue: json['displayValue'] as String?,
    );

Map<String, dynamic> _$ReferenceDataToJson(_ReferenceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'category': instance.category,
      'value': instance.value,
      'displayValue': instance.displayValue,
    };

_Attachment _$AttachmentFromJson(Map<String, dynamic> json) => _Attachment(
  id: json['id'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  documentID: json['documentID'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  description: json['description'] as String?,
  comments: json['comments'] as String?,
  equipmentId: json['equipmentId'] as String?,
  scheduleId: json['scheduleId'] as String?,
  recordId: json['recordId'] as String?,
  scopeId: json['scopeId'] as String?,
  isDeleted: json['isDeleted'] as bool?,
);

Map<String, dynamic> _$AttachmentToJson(_Attachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'documentID': instance.documentID,
      'name': instance.name,
      'url': instance.url,
      'description': instance.description,
      'comments': instance.comments,
      'equipmentId': instance.equipmentId,
      'scheduleId': instance.scheduleId,
      'recordId': instance.recordId,
      'scopeId': instance.scopeId,
      'isDeleted': instance.isDeleted,
    };

_RecordCreditedItem _$RecordCreditedItemFromJson(Map<String, dynamic> json) =>
    _RecordCreditedItem(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      recordId: json['recordId'] as String?,
      scheduleId: json['scheduleId'] as String?,
    );

Map<String, dynamic> _$RecordCreditedItemToJson(_RecordCreditedItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'recordId': instance.recordId,
      'scheduleId': instance.scheduleId,
    };

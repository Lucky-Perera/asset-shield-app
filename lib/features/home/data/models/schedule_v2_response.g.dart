// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_v2_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleListResponse _$ScheduleListResponseFromJson(
  Map<String, dynamic> json,
) => _ScheduleListResponse(
  success: json['success'] as bool,
  data: ScheduleListData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ScheduleListResponseToJson(
  _ScheduleListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_ScheduleListData _$ScheduleListDataFromJson(Map<String, dynamic> json) =>
    _ScheduleListData(
      data: (json['data'] as List<dynamic>)
          .map((e) => ScheduleV2Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: Pagination.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ScheduleListDataToJson(_ScheduleListData instance) =>
    <String, dynamic>{'data': instance.data, 'pagination': instance.pagination};

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  total: (json['total'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'total': instance.total,
      'totalPages': instance.totalPages,
    };

_ScheduleV2Response _$ScheduleV2ResponseFromJson(
  Map<String, dynamic> json,
) => _ScheduleV2Response(
  id: json['id'] as String,
  scheduleName: json['scheduleName'] as String,
  status: json['status'] as String,
  description: json['description'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  dueDate: DateTime.parse(json['dueDate'] as String),
  inspectionDate: json['inspectionDate'] == null
      ? null
      : DateTime.parse(json['inspectionDate'] as String),
  isRBISchedule: json['isRBISchedule'] as bool,
  isRecurring: json['isRecurring'] as bool,
  inspectionInterval: (json['inspectionInterval'] as num?)?.toInt(),
  damageMechanism: json['damageMechanism'] as String?,
  inspectionEffectiveness: json['inspectionEffectiveness'] as String?,
  aiSummary: json['aiSummary'] as String?,
  comments: json['comments'] as String?,
  isDeleted: json['isDeleted'] as bool,
  scheduleTypeId: json['scheduleTypeId'] as String,
  operationId: json['operationId'] as String,
  equipmentId: json['equipmentId'] as String,
  createdById: json['createdById'] as String,
  approvedById: json['approvedById'] as String?,
  reviewedById: json['reviewedById'] as String?,
  attachments: (json['attachments'] as List<dynamic>)
      .map((e) => AttachmentV2.fromJson(e as Map<String, dynamic>))
      .toList(),
  scopeImages: (json['scopeImages'] as List<dynamic>)
      .map((e) => AttachmentV2.fromJson(e as Map<String, dynamic>))
      .toList(),
  checklistQuestionTemplates:
      (json['checklistQuestionTemplates'] as List<dynamic>)
          .map(
            (e) =>
                ChecklistQuestionTemplate.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  inspectionMethods: (json['inspectionMethods'] as List<dynamic>)
      .map((e) => InspectionMethodV2.fromJson(e as Map<String, dynamic>))
      .toList(),
  potentialEmergentWorks: (json['potentialEmergentWorks'] as List<dynamic>)
      .map((e) => PotentialEmergentWorkV2.fromJson(e as Map<String, dynamic>))
      .toList(),
  components: (json['components'] as List<dynamic>)
      .map((e) => ScheduleComponent.fromJson(e as Map<String, dynamic>))
      .toList(),
  approvedBy: json['approvedBy'] == null
      ? null
      : User.fromJson(json['approvedBy'] as Map<String, dynamic>),
  createdBy: json['createdBy'] == null
      ? null
      : User.fromJson(json['createdBy'] as Map<String, dynamic>),
  reviewedBy: json['reviewedBy'] == null
      ? null
      : User.fromJson(json['reviewedBy'] as Map<String, dynamic>),
  equipment: json['equipment'] == null
      ? null
      : Equipment.fromJson(json['equipment'] as Map<String, dynamic>),
  operation: json['operation'] == null
      ? null
      : ReferenceData.fromJson(json['operation'] as Map<String, dynamic>),
  scheduleType: json['scheduleType'] == null
      ? null
      : ReferenceData.fromJson(json['scheduleType'] as Map<String, dynamic>),
  record: json['record'] == null
      ? null
      : RecordV2Response.fromJson(json['record'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ScheduleV2ResponseToJson(_ScheduleV2Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scheduleName': instance.scheduleName,
      'status': instance.status,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'inspectionDate': instance.inspectionDate?.toIso8601String(),
      'isRBISchedule': instance.isRBISchedule,
      'isRecurring': instance.isRecurring,
      'inspectionInterval': instance.inspectionInterval,
      'damageMechanism': instance.damageMechanism,
      'inspectionEffectiveness': instance.inspectionEffectiveness,
      'aiSummary': instance.aiSummary,
      'comments': instance.comments,
      'isDeleted': instance.isDeleted,
      'scheduleTypeId': instance.scheduleTypeId,
      'operationId': instance.operationId,
      'equipmentId': instance.equipmentId,
      'createdById': instance.createdById,
      'approvedById': instance.approvedById,
      'reviewedById': instance.reviewedById,
      'attachments': instance.attachments,
      'scopeImages': instance.scopeImages,
      'checklistQuestionTemplates': instance.checklistQuestionTemplates,
      'inspectionMethods': instance.inspectionMethods,
      'potentialEmergentWorks': instance.potentialEmergentWorks,
      'components': instance.components,
      'approvedBy': instance.approvedBy,
      'createdBy': instance.createdBy,
      'reviewedBy': instance.reviewedBy,
      'equipment': instance.equipment,
      'operation': instance.operation,
      'scheduleType': instance.scheduleType,
      'record': instance.record,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  role: json['role'] as String,
  title: json['title'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  isDeleted: json['isDeleted'] as bool,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'role': instance.role,
  'title': instance.title,
  'name': instance.name,
  'email': instance.email,
  'password': instance.password,
  'isDeleted': instance.isDeleted,
};

_Equipment _$EquipmentFromJson(Map<String, dynamic> json) => _Equipment(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  equipmentId: json['equipmentId'] as String,
  name: json['name'] as String,
  cmmsSystem: json['cmmsSystem'] as String,
  isCorrosionLoopAvailable: json['isCorrosionLoopAvailable'] as bool,
  corrosionLoopId: json['corrosionLoopId'] as String?,
  isDeleted: json['isDeleted'] as bool,
);

Map<String, dynamic> _$EquipmentToJson(_Equipment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'equipmentId': instance.equipmentId,
      'name': instance.name,
      'cmmsSystem': instance.cmmsSystem,
      'isCorrosionLoopAvailable': instance.isCorrosionLoopAvailable,
      'corrosionLoopId': instance.corrosionLoopId,
      'isDeleted': instance.isDeleted,
    };

_ReferenceData _$ReferenceDataFromJson(Map<String, dynamic> json) =>
    _ReferenceData(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      category: json['category'] as String,
      value: json['value'] as String,
      displayValue: json['displayValue'] as String?,
    );

Map<String, dynamic> _$ReferenceDataToJson(_ReferenceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'category': instance.category,
      'value': instance.value,
      'displayValue': instance.displayValue,
    };

_ChecklistQuestionTemplate _$ChecklistQuestionTemplateFromJson(
  Map<String, dynamic> json,
) => _ChecklistQuestionTemplate(
  id: json['id'] as String,
  inspectionType: json['inspectionType'] as String?,
  question: json['question'] as String,
  helpText: json['helpText'] as String?,
  responseType: $enumDecode(_$ResponseTypeEnumMap, json['responseType']),
  isDeleted: json['isDeleted'] as bool,
  scheduleId: json['scheduleId'] as String,
  checklistAnswer: json['checklistAnswer'] == null
      ? null
      : ChecklistAnswer.fromJson(
          json['checklistAnswer'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ChecklistQuestionTemplateToJson(
  _ChecklistQuestionTemplate instance,
) => <String, dynamic>{
  'id': instance.id,
  'inspectionType': instance.inspectionType,
  'question': instance.question,
  'helpText': instance.helpText,
  'responseType': _$ResponseTypeEnumMap[instance.responseType]!,
  'isDeleted': instance.isDeleted,
  'scheduleId': instance.scheduleId,
  'checklistAnswer': instance.checklistAnswer,
};

const _$ResponseTypeEnumMap = {
  ResponseType.goodFairPoorNA: 'GoodFairPoorNA',
  ResponseType.yesNo: 'YesNo',
};

_ChecklistAnswer _$ChecklistAnswerFromJson(Map<String, dynamic> json) =>
    _ChecklistAnswer(
      id: json['id'] as String,
      value: json['value'] as String?,
      note: json['note'] as String?,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      recordId: json['recordId'] as String,
      questionId: json['questionId'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => AttachmentV2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChecklistAnswerToJson(_ChecklistAnswer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'note': instance.note,
      'completedAt': instance.completedAt?.toIso8601String(),
      'recordId': instance.recordId,
      'questionId': instance.questionId,
      'attachments': instance.attachments,
    };

_AttachmentV2 _$AttachmentV2FromJson(Map<String, dynamic> json) =>
    _AttachmentV2(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      documentID: json['documentID'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      description: json['description'] as String?,
      comments: json['comments'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      equipmentId: json['equipmentId'] as String?,
      scheduleId: json['scheduleId'] as String?,
      scopeImageScheduleId: json['scopeImageScheduleId'] as String?,
      checklistAnswerId: json['checklistAnswerId'] as String?,
      recordId: json['recordId'] as String?,
    );

Map<String, dynamic> _$AttachmentV2ToJson(_AttachmentV2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'documentID': instance.documentID,
      'name': instance.name,
      'url': instance.url,
      'description': instance.description,
      'comments': instance.comments,
      'isDeleted': instance.isDeleted,
      'equipmentId': instance.equipmentId,
      'scheduleId': instance.scheduleId,
      'scopeImageScheduleId': instance.scopeImageScheduleId,
      'checklistAnswerId': instance.checklistAnswerId,
      'recordId': instance.recordId,
    };

_RecordV2Response _$RecordV2ResponseFromJson(Map<String, dynamic> json) =>
    _RecordV2Response(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      description: json['description'] as String,
      recordCreatedDate: DateTime.parse(json['recordCreatedDate'] as String),
      status: $enumDecode(_$RecordStatusEnumMap, json['status']),
      inspectionDate: DateTime.parse(json['inspectionDate'] as String),
      actionCreated: json['actionCreated'] as String,
      comments: json['comments'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      scheduleId: json['scheduleId'] as String,
      referenceDataId: json['referenceDataId'] as String?,
      equipmentId: json['equipmentId'] as String,
      scheduleTypeId: json['scheduleTypeId'] as String,
      submittedById: json['submittedById'] as String?,
      approvedById: json['approvedById'] as String?,
    );

Map<String, dynamic> _$RecordV2ResponseToJson(_RecordV2Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'description': instance.description,
      'recordCreatedDate': instance.recordCreatedDate.toIso8601String(),
      'status': _$RecordStatusEnumMap[instance.status]!,
      'inspectionDate': instance.inspectionDate.toIso8601String(),
      'actionCreated': instance.actionCreated,
      'comments': instance.comments,
      'isDeleted': instance.isDeleted,
      'scheduleId': instance.scheduleId,
      'referenceDataId': instance.referenceDataId,
      'equipmentId': instance.equipmentId,
      'scheduleTypeId': instance.scheduleTypeId,
      'submittedById': instance.submittedById,
      'approvedById': instance.approvedById,
    };

const _$RecordStatusEnumMap = {
  RecordStatus.rejected: 'Rejected',
  RecordStatus.pendingApproval: 'PendingApproval',
  RecordStatus.approved: 'Approved',
};

_InspectionMethodV2 _$InspectionMethodV2FromJson(Map<String, dynamic> json) =>
    _InspectionMethodV2(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      scheduleV2Id: json['scheduleV2Id'] as String?,
      methodId: json['methodId'] as String?,
      method: json['method'] == null
          ? null
          : ReferenceData.fromJson(json['method'] as Map<String, dynamic>),
      specialAccessId: json['specialAccessId'] as String?,
      specialAccess: json['specialAccess'] == null
          ? null
          : ReferenceData.fromJson(
              json['specialAccess'] as Map<String, dynamic>,
            ),
      insulationRemovalId: json['insulationRemovalId'] as String?,
      insulationRemoval: json['insulationRemoval'] == null
          ? null
          : ReferenceData.fromJson(
              json['insulationRemoval'] as Map<String, dynamic>,
            ),
      cleaningId: json['cleaningId'] as String?,
      cleaning: json['cleaning'] == null
          ? null
          : ReferenceData.fromJson(json['cleaning'] as Map<String, dynamic>),
      location: json['location'] as String?,
      notes: json['notes'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$InspectionMethodV2ToJson(_InspectionMethodV2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'scheduleV2Id': instance.scheduleV2Id,
      'methodId': instance.methodId,
      'method': instance.method,
      'specialAccessId': instance.specialAccessId,
      'specialAccess': instance.specialAccess,
      'insulationRemovalId': instance.insulationRemovalId,
      'insulationRemoval': instance.insulationRemoval,
      'cleaningId': instance.cleaningId,
      'cleaning': instance.cleaning,
      'location': instance.location,
      'notes': instance.notes,
      'isDeleted': instance.isDeleted,
    };

_PotentialEmergentWorkV2 _$PotentialEmergentWorkV2FromJson(
  Map<String, dynamic> json,
) => _PotentialEmergentWorkV2(
  id: json['id'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  scheduleV2Id: json['scheduleV2Id'] as String?,
  potentialEmergentWorkId: json['potentialEmergentWorkId'] as String?,
  potentialEmergentWork: json['potentialEmergentWork'] == null
      ? null
      : ReferenceData.fromJson(
          json['potentialEmergentWork'] as Map<String, dynamic>,
        ),
  likelihoodId: json['likelihoodId'] as String?,
  likelihood: json['likelihood'] == null
      ? null
      : ReferenceData.fromJson(json['likelihood'] as Map<String, dynamic>),
  notes: json['notes'] as String?,
  isDeleted: json['isDeleted'] as bool?,
);

Map<String, dynamic> _$PotentialEmergentWorkV2ToJson(
  _PotentialEmergentWorkV2 instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'scheduleV2Id': instance.scheduleV2Id,
  'potentialEmergentWorkId': instance.potentialEmergentWorkId,
  'potentialEmergentWork': instance.potentialEmergentWork,
  'likelihoodId': instance.likelihoodId,
  'likelihood': instance.likelihood,
  'notes': instance.notes,
  'isDeleted': instance.isDeleted,
};

_ScheduleComponent _$ScheduleComponentFromJson(Map<String, dynamic> json) =>
    _ScheduleComponent(
      id: json['id'] as String,
      scheduleId: json['scheduleId'] as String,
      componentId: json['componentId'] as String,
      component: MinimalComponent.fromJson(
        json['component'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ScheduleComponentToJson(_ScheduleComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scheduleId': instance.scheduleId,
      'componentId': instance.componentId,
      'component': instance.component,
    };

_MinimalComponent _$MinimalComponentFromJson(Map<String, dynamic> json) =>
    _MinimalComponent(
      id: json['id'] as String,
      componentID: json['componentID'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$MinimalComponentToJson(_MinimalComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'componentID': instance.componentID,
      'name': instance.name,
    };

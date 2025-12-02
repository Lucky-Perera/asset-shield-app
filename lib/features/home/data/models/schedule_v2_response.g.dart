// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_v2_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleV2Response _$ScheduleV2ResponseFromJson(Map<String, dynamic> json) =>
    _ScheduleV2Response(
      success: json['success'] as bool,
      data: ScheduleV2Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScheduleV2ResponseToJson(_ScheduleV2Response instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_ScheduleV2Data _$ScheduleV2DataFromJson(Map<String, dynamic> json) =>
    _ScheduleV2Data(
      data: (json['data'] as List<dynamic>)
          .map((e) => ScheduleV2.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: Pagination.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ScheduleV2DataToJson(_ScheduleV2Data instance) =>
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

_ScheduleV2 _$ScheduleV2FromJson(Map<String, dynamic> json) => _ScheduleV2(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  scheduleID: json['scheduleID'] as String,
  status: json['status'] as String,
  scheduleTypeId: json['scheduleTypeId'] as String,
  scheduleType: json['scheduleType'] == null
      ? null
      : ReferenceData.fromJson(json['scheduleType'] as Map<String, dynamic>),
  operationId: json['operationId'] as String,
  operation: json['operation'] == null
      ? null
      : ReferenceData.fromJson(json['operation'] as Map<String, dynamic>),
  createdById: json['createdById'] as String,
  createdBy: json['createdBy'] == null
      ? null
      : User.fromJson(json['createdBy'] as Map<String, dynamic>),
  submittedById: json['submittedById'] as String?,
  submittedBy: json['submittedBy'] == null
      ? null
      : User.fromJson(json['submittedBy'] as Map<String, dynamic>),
  reviewedById: json['reviewedById'] as String?,
  reviewedBy: json['reviewedBy'] == null
      ? null
      : User.fromJson(json['reviewedBy'] as Map<String, dynamic>),
  approvedById: json['approvedById'] as String?,
  approvedBy: json['approvedBy'] == null
      ? null
      : User.fromJson(json['approvedBy'] as Map<String, dynamic>),
  equipmentId: json['equipmentId'] as String,
  equipment: json['equipment'] == null
      ? null
      : Equipment.fromJson(json['equipment'] as Map<String, dynamic>),
  components:
      (json['components'] as List<dynamic>?)
          ?.map((e) => ScheduleComponentV2.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  description: json['description'] as String,
  dueDate: DateTime.parse(json['dueDate'] as String),
  checklistQuestions:
      (json['checklistQuestions'] as List<dynamic>?)
          ?.map((e) => ChecklistQuestionV2.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  inspectionMethods:
      (json['inspectionMethods'] as List<dynamic>?)
          ?.map((e) => InspectionMethodV2.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  potentialEmergentWorks:
      (json['potentialEmergentWorks'] as List<dynamic>?)
          ?.map(
            (e) => PotentialEmergentWorkV2.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  scopeImages:
      (json['scopeImages'] as List<dynamic>?)
          ?.map((e) => AttachmentV2.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  inspectionDate: json['inspectionDate'] == null
      ? null
      : DateTime.parse(json['inspectionDate'] as String),
  comments: json['comments'] as String?,
  attachments:
      (json['attachments'] as List<dynamic>?)
          ?.map((e) => AttachmentV2.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isDeleted: json['isDeleted'] as bool?,
);

Map<String, dynamic> _$ScheduleV2ToJson(_ScheduleV2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'scheduleID': instance.scheduleID,
      'status': instance.status,
      'scheduleTypeId': instance.scheduleTypeId,
      'scheduleType': instance.scheduleType,
      'operationId': instance.operationId,
      'operation': instance.operation,
      'createdById': instance.createdById,
      'createdBy': instance.createdBy,
      'submittedById': instance.submittedById,
      'submittedBy': instance.submittedBy,
      'reviewedById': instance.reviewedById,
      'reviewedBy': instance.reviewedBy,
      'approvedById': instance.approvedById,
      'approvedBy': instance.approvedBy,
      'equipmentId': instance.equipmentId,
      'equipment': instance.equipment,
      'components': instance.components,
      'description': instance.description,
      'dueDate': instance.dueDate.toIso8601String(),
      'checklistQuestions': instance.checklistQuestions,
      'inspectionMethods': instance.inspectionMethods,
      'potentialEmergentWorks': instance.potentialEmergentWorks,
      'scopeImages': instance.scopeImages,
      'inspectionDate': instance.inspectionDate?.toIso8601String(),
      'comments': instance.comments,
      'attachments': instance.attachments,
      'isDeleted': instance.isDeleted,
    };

_ScheduleComponentV2 _$ScheduleComponentV2FromJson(Map<String, dynamic> json) =>
    _ScheduleComponentV2(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      scheduleV2Id: json['scheduleV2Id'] as String?,
      componentId: json['componentId'] as String?,
      component: json['component'] == null
          ? null
          : Component.fromJson(json['component'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScheduleComponentV2ToJson(
  _ScheduleComponentV2 instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'scheduleV2Id': instance.scheduleV2Id,
  'componentId': instance.componentId,
  'component': instance.component,
};

_ChecklistQuestionV2 _$ChecklistQuestionV2FromJson(Map<String, dynamic> json) =>
    _ChecklistQuestionV2(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      scheduleV2Id: json['scheduleV2Id'] as String?,
      inspectionType: json['inspectionType'] as String?,
      question: json['question'] as String?,
      helpText: json['helpText'] as String?,
      responseType: $enumDecodeNullable(
        _$ResponseTypeEnumMap,
        json['responseType'],
      ),
      value: json['value'] as String?,
      note: json['note'] as String?,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      completedById: json['completedById'] as String?,
      completedBy: json['completedBy'] == null
          ? null
          : User.fromJson(json['completedBy'] as Map<String, dynamic>),
      attachments:
          (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentV2.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$ChecklistQuestionV2ToJson(
  _ChecklistQuestionV2 instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'scheduleV2Id': instance.scheduleV2Id,
  'inspectionType': instance.inspectionType,
  'question': instance.question,
  'helpText': instance.helpText,
  'responseType': _$ResponseTypeEnumMap[instance.responseType],
  'value': instance.value,
  'note': instance.note,
  'completedAt': instance.completedAt?.toIso8601String(),
  'completedById': instance.completedById,
  'completedBy': instance.completedBy,
  'attachments': instance.attachments,
  'isDeleted': instance.isDeleted,
};

const _$ResponseTypeEnumMap = {
  ResponseType.GoodFairPoorNA: 'GoodFairPoorNA',
  ResponseType.YesNo: 'YesNo',
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

_AttachmentV2 _$AttachmentV2FromJson(Map<String, dynamic> json) =>
    _AttachmentV2(
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
      scheduleV2Id: json['scheduleV2Id'] as String?,
      scopeScheduleV2Id: json['scopeScheduleV2Id'] as String?,
      checklistQuestionV2Id: json['checklistQuestionV2Id'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$AttachmentV2ToJson(_AttachmentV2 instance) =>
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
      'scheduleV2Id': instance.scheduleV2Id,
      'scopeScheduleV2Id': instance.scopeScheduleV2Id,
      'checklistQuestionV2Id': instance.checklistQuestionV2Id,
      'isDeleted': instance.isDeleted,
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
  createdSchedulesV2:
      (json['createdSchedulesV2'] as List<dynamic>?)
          ?.map((e) => ScheduleV2.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  submittedSchedulesV2:
      (json['submittedSchedulesV2'] as List<dynamic>?)
          ?.map((e) => ScheduleV2.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  reviewedSchedulesV2:
      (json['reviewedSchedulesV2'] as List<dynamic>?)
          ?.map((e) => ScheduleV2.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  approvedSchedulesV2:
      (json['approvedSchedulesV2'] as List<dynamic>?)
          ?.map((e) => ScheduleV2.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  completedChecklistQuestionsV2:
      (json['completedChecklistQuestionsV2'] as List<dynamic>?)
          ?.map((e) => ChecklistQuestionV2.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isDeleted: json['isDeleted'] as bool?,
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
  'createdSchedulesV2': instance.createdSchedulesV2,
  'submittedSchedulesV2': instance.submittedSchedulesV2,
  'reviewedSchedulesV2': instance.reviewedSchedulesV2,
  'approvedSchedulesV2': instance.approvedSchedulesV2,
  'completedChecklistQuestionsV2': instance.completedChecklistQuestionsV2,
  'isDeleted': instance.isDeleted,
};

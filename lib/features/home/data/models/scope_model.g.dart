// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scope_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Scope _$ScopeFromJson(Map<String, dynamic> json) => _Scope(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  scheduleId: json['scheduleId'] as String,
  damageMechanism: json['damageMechanism'] as String,
  inspectionEffectiveness: json['inspectionEffectiveness'] as String,
  isDeleted: json['isDeleted'] as bool,
  inspectionMethods: (json['inspectionMethods'] as List<dynamic>)
      .map((e) => InspectionMethod.fromJson(e as Map<String, dynamic>))
      .toList(),
  potentialEmergentWorks: (json['potentialEmergentWorks'] as List<dynamic>)
      .map((e) => PotentialEmergentWork.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ScopeToJson(_Scope instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'scheduleId': instance.scheduleId,
  'damageMechanism': instance.damageMechanism,
  'inspectionEffectiveness': instance.inspectionEffectiveness,
  'isDeleted': instance.isDeleted,
  'inspectionMethods': instance.inspectionMethods,
  'potentialEmergentWorks': instance.potentialEmergentWorks,
};

_ScopeResponse _$ScopeResponseFromJson(Map<String, dynamic> json) =>
    _ScopeResponse(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : Scope.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScopeResponseToJson(_ScopeResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_ReferenceData _$ReferenceDataFromJson(Map<String, dynamic> json) =>
    _ReferenceData(
      id: json['id'] as String,
      value: json['value'] as String,
      displayValue: json['displayValue'] as String?,
    );

Map<String, dynamic> _$ReferenceDataToJson(_ReferenceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'displayValue': instance.displayValue,
    };

_InspectionMethod _$InspectionMethodFromJson(Map<String, dynamic> json) =>
    _InspectionMethod(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      scopeId: json['scopeId'] as String,
      methodId: json['methodId'] as String,
      specialAccessId: json['specialAccessId'] as String,
      insulationRemovalId: json['insulationRemovalId'] as String,
      cleaningId: json['cleaningId'] as String,
      location: json['location'] as String,
      notes: json['notes'] as String,
      isDeleted: json['isDeleted'] as bool,
      method: ReferenceData.fromJson(json['method'] as Map<String, dynamic>),
      specialAccess: ReferenceData.fromJson(
        json['specialAccess'] as Map<String, dynamic>,
      ),
      insulationRemoval: ReferenceData.fromJson(
        json['insulationRemoval'] as Map<String, dynamic>,
      ),
      cleaning: ReferenceData.fromJson(
        json['cleaning'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$InspectionMethodToJson(_InspectionMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'scopeId': instance.scopeId,
      'methodId': instance.methodId,
      'specialAccessId': instance.specialAccessId,
      'insulationRemovalId': instance.insulationRemovalId,
      'cleaningId': instance.cleaningId,
      'location': instance.location,
      'notes': instance.notes,
      'isDeleted': instance.isDeleted,
      'method': instance.method,
      'specialAccess': instance.specialAccess,
      'insulationRemoval': instance.insulationRemoval,
      'cleaning': instance.cleaning,
    };

_PotentialEmergentWork _$PotentialEmergentWorkFromJson(
  Map<String, dynamic> json,
) => _PotentialEmergentWork(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  scopeId: json['scopeId'] as String,
  potentialEmergentWorkId: json['potentialEmergentWorkId'] as String,
  likelihoodId: json['likelihoodId'] as String,
  notes: json['notes'] as String,
  isDeleted: json['isDeleted'] as bool,
  potentialEmergentWork: ReferenceData.fromJson(
    json['potentialEmergentWork'] as Map<String, dynamic>,
  ),
  likelihood: ReferenceData.fromJson(
    json['likelihood'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PotentialEmergentWorkToJson(
  _PotentialEmergentWork instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'scopeId': instance.scopeId,
  'potentialEmergentWorkId': instance.potentialEmergentWorkId,
  'likelihoodId': instance.likelihoodId,
  'notes': instance.notes,
  'isDeleted': instance.isDeleted,
  'potentialEmergentWork': instance.potentialEmergentWork,
  'likelihood': instance.likelihood,
};

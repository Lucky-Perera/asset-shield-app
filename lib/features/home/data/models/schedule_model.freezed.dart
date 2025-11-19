// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleModel {

 String get id; String get createdAt; String get updatedAt; String get scheduleID; String get equipmentId; String get description; String get scheduleTypeId; String get status; String get dueDate; String get operationId; bool get isRBISchedule; bool get isRecurring; int get inspectionInterval; bool get isScopeAttached; String get comments; String? get aiSummary; bool get isDeleted; EquipmentModel? get equipment; List<ScheduleComponentModel> get components; RefDataModel? get scheduleType; RefDataModel? get operation; List<dynamic> get attachments; List<dynamic> get linkedItems;
/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleModelCopyWith<ScheduleModel> get copyWith => _$ScheduleModelCopyWithImpl<ScheduleModel>(this as ScheduleModel, _$identity);

  /// Serializes this ScheduleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleID, scheduleID) || other.scheduleID == scheduleID)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.description, description) || other.description == description)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&(identical(other.isRBISchedule, isRBISchedule) || other.isRBISchedule == isRBISchedule)&&(identical(other.isRecurring, isRecurring) || other.isRecurring == isRecurring)&&(identical(other.inspectionInterval, inspectionInterval) || other.inspectionInterval == inspectionInterval)&&(identical(other.isScopeAttached, isScopeAttached) || other.isScopeAttached == isScopeAttached)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.aiSummary, aiSummary) || other.aiSummary == aiSummary)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.equipment, equipment) || other.equipment == equipment)&&const DeepCollectionEquality().equals(other.components, components)&&(identical(other.scheduleType, scheduleType) || other.scheduleType == scheduleType)&&(identical(other.operation, operation) || other.operation == operation)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&const DeepCollectionEquality().equals(other.linkedItems, linkedItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,scheduleID,equipmentId,description,scheduleTypeId,status,dueDate,operationId,isRBISchedule,isRecurring,inspectionInterval,isScopeAttached,comments,aiSummary,isDeleted,equipment,const DeepCollectionEquality().hash(components),scheduleType,operation,const DeepCollectionEquality().hash(attachments),const DeepCollectionEquality().hash(linkedItems)]);

@override
String toString() {
  return 'ScheduleModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleID: $scheduleID, equipmentId: $equipmentId, description: $description, scheduleTypeId: $scheduleTypeId, status: $status, dueDate: $dueDate, operationId: $operationId, isRBISchedule: $isRBISchedule, isRecurring: $isRecurring, inspectionInterval: $inspectionInterval, isScopeAttached: $isScopeAttached, comments: $comments, aiSummary: $aiSummary, isDeleted: $isDeleted, equipment: $equipment, components: $components, scheduleType: $scheduleType, operation: $operation, attachments: $attachments, linkedItems: $linkedItems)';
}


}

/// @nodoc
abstract mixin class $ScheduleModelCopyWith<$Res>  {
  factory $ScheduleModelCopyWith(ScheduleModel value, $Res Function(ScheduleModel) _then) = _$ScheduleModelCopyWithImpl;
@useResult
$Res call({
 String id, String createdAt, String updatedAt, String scheduleID, String equipmentId, String description, String scheduleTypeId, String status, String dueDate, String operationId, bool isRBISchedule, bool isRecurring, int inspectionInterval, bool isScopeAttached, String comments, String? aiSummary, bool isDeleted, EquipmentModel? equipment, List<ScheduleComponentModel> components, RefDataModel? scheduleType, RefDataModel? operation, List<dynamic> attachments, List<dynamic> linkedItems
});


$EquipmentModelCopyWith<$Res>? get equipment;$RefDataModelCopyWith<$Res>? get scheduleType;$RefDataModelCopyWith<$Res>? get operation;

}
/// @nodoc
class _$ScheduleModelCopyWithImpl<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  _$ScheduleModelCopyWithImpl(this._self, this._then);

  final ScheduleModel _self;
  final $Res Function(ScheduleModel) _then;

/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scheduleID = null,Object? equipmentId = null,Object? description = null,Object? scheduleTypeId = null,Object? status = null,Object? dueDate = null,Object? operationId = null,Object? isRBISchedule = null,Object? isRecurring = null,Object? inspectionInterval = null,Object? isScopeAttached = null,Object? comments = null,Object? aiSummary = freezed,Object? isDeleted = null,Object? equipment = freezed,Object? components = null,Object? scheduleType = freezed,Object? operation = freezed,Object? attachments = null,Object? linkedItems = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,scheduleID: null == scheduleID ? _self.scheduleID : scheduleID // ignore: cast_nullable_to_non_nullable
as String,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,scheduleTypeId: null == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,operationId: null == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String,isRBISchedule: null == isRBISchedule ? _self.isRBISchedule : isRBISchedule // ignore: cast_nullable_to_non_nullable
as bool,isRecurring: null == isRecurring ? _self.isRecurring : isRecurring // ignore: cast_nullable_to_non_nullable
as bool,inspectionInterval: null == inspectionInterval ? _self.inspectionInterval : inspectionInterval // ignore: cast_nullable_to_non_nullable
as int,isScopeAttached: null == isScopeAttached ? _self.isScopeAttached : isScopeAttached // ignore: cast_nullable_to_non_nullable
as bool,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String,aiSummary: freezed == aiSummary ? _self.aiSummary : aiSummary // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as EquipmentModel?,components: null == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as List<ScheduleComponentModel>,scheduleType: freezed == scheduleType ? _self.scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as RefDataModel?,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as RefDataModel?,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<dynamic>,linkedItems: null == linkedItems ? _self.linkedItems : linkedItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}
/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EquipmentModelCopyWith<$Res>? get equipment {
    if (_self.equipment == null) {
    return null;
  }

  return $EquipmentModelCopyWith<$Res>(_self.equipment!, (value) {
    return _then(_self.copyWith(equipment: value));
  });
}/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefDataModelCopyWith<$Res>? get scheduleType {
    if (_self.scheduleType == null) {
    return null;
  }

  return $RefDataModelCopyWith<$Res>(_self.scheduleType!, (value) {
    return _then(_self.copyWith(scheduleType: value));
  });
}/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefDataModelCopyWith<$Res>? get operation {
    if (_self.operation == null) {
    return null;
  }

  return $RefDataModelCopyWith<$Res>(_self.operation!, (value) {
    return _then(_self.copyWith(operation: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleModel].
extension ScheduleModelPatterns on ScheduleModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleModel value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String createdAt,  String updatedAt,  String scheduleID,  String equipmentId,  String description,  String scheduleTypeId,  String status,  String dueDate,  String operationId,  bool isRBISchedule,  bool isRecurring,  int inspectionInterval,  bool isScopeAttached,  String comments,  String? aiSummary,  bool isDeleted,  EquipmentModel? equipment,  List<ScheduleComponentModel> components,  RefDataModel? scheduleType,  RefDataModel? operation,  List<dynamic> attachments,  List<dynamic> linkedItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleID,_that.equipmentId,_that.description,_that.scheduleTypeId,_that.status,_that.dueDate,_that.operationId,_that.isRBISchedule,_that.isRecurring,_that.inspectionInterval,_that.isScopeAttached,_that.comments,_that.aiSummary,_that.isDeleted,_that.equipment,_that.components,_that.scheduleType,_that.operation,_that.attachments,_that.linkedItems);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String createdAt,  String updatedAt,  String scheduleID,  String equipmentId,  String description,  String scheduleTypeId,  String status,  String dueDate,  String operationId,  bool isRBISchedule,  bool isRecurring,  int inspectionInterval,  bool isScopeAttached,  String comments,  String? aiSummary,  bool isDeleted,  EquipmentModel? equipment,  List<ScheduleComponentModel> components,  RefDataModel? scheduleType,  RefDataModel? operation,  List<dynamic> attachments,  List<dynamic> linkedItems)  $default,) {final _that = this;
switch (_that) {
case _ScheduleModel():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleID,_that.equipmentId,_that.description,_that.scheduleTypeId,_that.status,_that.dueDate,_that.operationId,_that.isRBISchedule,_that.isRecurring,_that.inspectionInterval,_that.isScopeAttached,_that.comments,_that.aiSummary,_that.isDeleted,_that.equipment,_that.components,_that.scheduleType,_that.operation,_that.attachments,_that.linkedItems);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String createdAt,  String updatedAt,  String scheduleID,  String equipmentId,  String description,  String scheduleTypeId,  String status,  String dueDate,  String operationId,  bool isRBISchedule,  bool isRecurring,  int inspectionInterval,  bool isScopeAttached,  String comments,  String? aiSummary,  bool isDeleted,  EquipmentModel? equipment,  List<ScheduleComponentModel> components,  RefDataModel? scheduleType,  RefDataModel? operation,  List<dynamic> attachments,  List<dynamic> linkedItems)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleID,_that.equipmentId,_that.description,_that.scheduleTypeId,_that.status,_that.dueDate,_that.operationId,_that.isRBISchedule,_that.isRecurring,_that.inspectionInterval,_that.isScopeAttached,_that.comments,_that.aiSummary,_that.isDeleted,_that.equipment,_that.components,_that.scheduleType,_that.operation,_that.attachments,_that.linkedItems);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleModel implements ScheduleModel {
  const _ScheduleModel({required this.id, required this.createdAt, required this.updatedAt, required this.scheduleID, required this.equipmentId, required this.description, required this.scheduleTypeId, required this.status, required this.dueDate, required this.operationId, required this.isRBISchedule, required this.isRecurring, required this.inspectionInterval, required this.isScopeAttached, required this.comments, this.aiSummary, required this.isDeleted, this.equipment, required final  List<ScheduleComponentModel> components, this.scheduleType, this.operation, required final  List<dynamic> attachments, required final  List<dynamic> linkedItems}): _components = components,_attachments = attachments,_linkedItems = linkedItems;
  factory _ScheduleModel.fromJson(Map<String, dynamic> json) => _$ScheduleModelFromJson(json);

@override final  String id;
@override final  String createdAt;
@override final  String updatedAt;
@override final  String scheduleID;
@override final  String equipmentId;
@override final  String description;
@override final  String scheduleTypeId;
@override final  String status;
@override final  String dueDate;
@override final  String operationId;
@override final  bool isRBISchedule;
@override final  bool isRecurring;
@override final  int inspectionInterval;
@override final  bool isScopeAttached;
@override final  String comments;
@override final  String? aiSummary;
@override final  bool isDeleted;
@override final  EquipmentModel? equipment;
 final  List<ScheduleComponentModel> _components;
@override List<ScheduleComponentModel> get components {
  if (_components is EqualUnmodifiableListView) return _components;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_components);
}

@override final  RefDataModel? scheduleType;
@override final  RefDataModel? operation;
 final  List<dynamic> _attachments;
@override List<dynamic> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

 final  List<dynamic> _linkedItems;
@override List<dynamic> get linkedItems {
  if (_linkedItems is EqualUnmodifiableListView) return _linkedItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_linkedItems);
}


/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleModelCopyWith<_ScheduleModel> get copyWith => __$ScheduleModelCopyWithImpl<_ScheduleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleID, scheduleID) || other.scheduleID == scheduleID)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.description, description) || other.description == description)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&(identical(other.isRBISchedule, isRBISchedule) || other.isRBISchedule == isRBISchedule)&&(identical(other.isRecurring, isRecurring) || other.isRecurring == isRecurring)&&(identical(other.inspectionInterval, inspectionInterval) || other.inspectionInterval == inspectionInterval)&&(identical(other.isScopeAttached, isScopeAttached) || other.isScopeAttached == isScopeAttached)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.aiSummary, aiSummary) || other.aiSummary == aiSummary)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.equipment, equipment) || other.equipment == equipment)&&const DeepCollectionEquality().equals(other._components, _components)&&(identical(other.scheduleType, scheduleType) || other.scheduleType == scheduleType)&&(identical(other.operation, operation) || other.operation == operation)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&const DeepCollectionEquality().equals(other._linkedItems, _linkedItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,scheduleID,equipmentId,description,scheduleTypeId,status,dueDate,operationId,isRBISchedule,isRecurring,inspectionInterval,isScopeAttached,comments,aiSummary,isDeleted,equipment,const DeepCollectionEquality().hash(_components),scheduleType,operation,const DeepCollectionEquality().hash(_attachments),const DeepCollectionEquality().hash(_linkedItems)]);

@override
String toString() {
  return 'ScheduleModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleID: $scheduleID, equipmentId: $equipmentId, description: $description, scheduleTypeId: $scheduleTypeId, status: $status, dueDate: $dueDate, operationId: $operationId, isRBISchedule: $isRBISchedule, isRecurring: $isRecurring, inspectionInterval: $inspectionInterval, isScopeAttached: $isScopeAttached, comments: $comments, aiSummary: $aiSummary, isDeleted: $isDeleted, equipment: $equipment, components: $components, scheduleType: $scheduleType, operation: $operation, attachments: $attachments, linkedItems: $linkedItems)';
}


}

/// @nodoc
abstract mixin class _$ScheduleModelCopyWith<$Res> implements $ScheduleModelCopyWith<$Res> {
  factory _$ScheduleModelCopyWith(_ScheduleModel value, $Res Function(_ScheduleModel) _then) = __$ScheduleModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String createdAt, String updatedAt, String scheduleID, String equipmentId, String description, String scheduleTypeId, String status, String dueDate, String operationId, bool isRBISchedule, bool isRecurring, int inspectionInterval, bool isScopeAttached, String comments, String? aiSummary, bool isDeleted, EquipmentModel? equipment, List<ScheduleComponentModel> components, RefDataModel? scheduleType, RefDataModel? operation, List<dynamic> attachments, List<dynamic> linkedItems
});


@override $EquipmentModelCopyWith<$Res>? get equipment;@override $RefDataModelCopyWith<$Res>? get scheduleType;@override $RefDataModelCopyWith<$Res>? get operation;

}
/// @nodoc
class __$ScheduleModelCopyWithImpl<$Res>
    implements _$ScheduleModelCopyWith<$Res> {
  __$ScheduleModelCopyWithImpl(this._self, this._then);

  final _ScheduleModel _self;
  final $Res Function(_ScheduleModel) _then;

/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scheduleID = null,Object? equipmentId = null,Object? description = null,Object? scheduleTypeId = null,Object? status = null,Object? dueDate = null,Object? operationId = null,Object? isRBISchedule = null,Object? isRecurring = null,Object? inspectionInterval = null,Object? isScopeAttached = null,Object? comments = null,Object? aiSummary = freezed,Object? isDeleted = null,Object? equipment = freezed,Object? components = null,Object? scheduleType = freezed,Object? operation = freezed,Object? attachments = null,Object? linkedItems = null,}) {
  return _then(_ScheduleModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,scheduleID: null == scheduleID ? _self.scheduleID : scheduleID // ignore: cast_nullable_to_non_nullable
as String,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,scheduleTypeId: null == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,operationId: null == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String,isRBISchedule: null == isRBISchedule ? _self.isRBISchedule : isRBISchedule // ignore: cast_nullable_to_non_nullable
as bool,isRecurring: null == isRecurring ? _self.isRecurring : isRecurring // ignore: cast_nullable_to_non_nullable
as bool,inspectionInterval: null == inspectionInterval ? _self.inspectionInterval : inspectionInterval // ignore: cast_nullable_to_non_nullable
as int,isScopeAttached: null == isScopeAttached ? _self.isScopeAttached : isScopeAttached // ignore: cast_nullable_to_non_nullable
as bool,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String,aiSummary: freezed == aiSummary ? _self.aiSummary : aiSummary // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as EquipmentModel?,components: null == components ? _self._components : components // ignore: cast_nullable_to_non_nullable
as List<ScheduleComponentModel>,scheduleType: freezed == scheduleType ? _self.scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as RefDataModel?,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as RefDataModel?,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<dynamic>,linkedItems: null == linkedItems ? _self._linkedItems : linkedItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EquipmentModelCopyWith<$Res>? get equipment {
    if (_self.equipment == null) {
    return null;
  }

  return $EquipmentModelCopyWith<$Res>(_self.equipment!, (value) {
    return _then(_self.copyWith(equipment: value));
  });
}/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefDataModelCopyWith<$Res>? get scheduleType {
    if (_self.scheduleType == null) {
    return null;
  }

  return $RefDataModelCopyWith<$Res>(_self.scheduleType!, (value) {
    return _then(_self.copyWith(scheduleType: value));
  });
}/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefDataModelCopyWith<$Res>? get operation {
    if (_self.operation == null) {
    return null;
  }

  return $RefDataModelCopyWith<$Res>(_self.operation!, (value) {
    return _then(_self.copyWith(operation: value));
  });
}
}

// dart format on

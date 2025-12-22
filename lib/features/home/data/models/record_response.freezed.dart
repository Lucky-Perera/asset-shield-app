// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordResponse {

 String get id; String? get recordID; String get equipmentId; String? get description; DateTime? get createdAt; DateTime? get updatedAt;@JsonKey(name: 'creditedItems') List<CreditedItem>? get creditedItems;@JsonKey(name: 'recordCreatedDate') DateTime? get recordCreatedDate;@JsonKey(name: 'inspectedComponents') List<InspectedComponent>? get inspectedComponents;@JsonKey(name: 'scheduleType') Map<String, dynamic>? get scheduleType; RecordStatus? get status;@JsonKey(name: 'inspectionDate') DateTime? get inspectionDate; String? get actionCreated;@JsonKey(name: 'attachments') List<Map<String, dynamic>>? get attachments; String? get comments; String? get rejectionReason; DateTime? get approvedAt; DateTime? get reviewedAt; bool? get isDeleted; String? get scheduleId; String? get referenceDataId; String? get scheduleTypeId; String? get submittedById; String? get reviewedById; String? get approvedById;
/// Create a copy of RecordResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordResponseCopyWith<RecordResponse> get copyWith => _$RecordResponseCopyWithImpl<RecordResponse>(this as RecordResponse, _$identity);

  /// Serializes this RecordResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.recordID, recordID) || other.recordID == recordID)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.creditedItems, creditedItems)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&const DeepCollectionEquality().equals(other.inspectedComponents, inspectedComponents)&&const DeepCollectionEquality().equals(other.scheduleType, scheduleType)&&(identical(other.status, status) || other.status == status)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.referenceDataId, referenceDataId) || other.referenceDataId == referenceDataId)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.submittedById, submittedById) || other.submittedById == submittedById)&&(identical(other.reviewedById, reviewedById) || other.reviewedById == reviewedById)&&(identical(other.approvedById, approvedById) || other.approvedById == approvedById));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,recordID,equipmentId,description,createdAt,updatedAt,const DeepCollectionEquality().hash(creditedItems),recordCreatedDate,const DeepCollectionEquality().hash(inspectedComponents),const DeepCollectionEquality().hash(scheduleType),status,inspectionDate,actionCreated,const DeepCollectionEquality().hash(attachments),comments,rejectionReason,approvedAt,reviewedAt,isDeleted,scheduleId,referenceDataId,scheduleTypeId,submittedById,reviewedById,approvedById]);

@override
String toString() {
  return 'RecordResponse(id: $id, recordID: $recordID, equipmentId: $equipmentId, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, creditedItems: $creditedItems, recordCreatedDate: $recordCreatedDate, inspectedComponents: $inspectedComponents, scheduleType: $scheduleType, status: $status, inspectionDate: $inspectionDate, actionCreated: $actionCreated, attachments: $attachments, comments: $comments, rejectionReason: $rejectionReason, approvedAt: $approvedAt, reviewedAt: $reviewedAt, isDeleted: $isDeleted, scheduleId: $scheduleId, referenceDataId: $referenceDataId, scheduleTypeId: $scheduleTypeId, submittedById: $submittedById, reviewedById: $reviewedById, approvedById: $approvedById)';
}


}

/// @nodoc
abstract mixin class $RecordResponseCopyWith<$Res>  {
  factory $RecordResponseCopyWith(RecordResponse value, $Res Function(RecordResponse) _then) = _$RecordResponseCopyWithImpl;
@useResult
$Res call({
 String id, String? recordID, String equipmentId, String? description, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: 'creditedItems') List<CreditedItem>? creditedItems,@JsonKey(name: 'recordCreatedDate') DateTime? recordCreatedDate,@JsonKey(name: 'inspectedComponents') List<InspectedComponent>? inspectedComponents,@JsonKey(name: 'scheduleType') Map<String, dynamic>? scheduleType, RecordStatus? status,@JsonKey(name: 'inspectionDate') DateTime? inspectionDate, String? actionCreated,@JsonKey(name: 'attachments') List<Map<String, dynamic>>? attachments, String? comments, String? rejectionReason, DateTime? approvedAt, DateTime? reviewedAt, bool? isDeleted, String? scheduleId, String? referenceDataId, String? scheduleTypeId, String? submittedById, String? reviewedById, String? approvedById
});




}
/// @nodoc
class _$RecordResponseCopyWithImpl<$Res>
    implements $RecordResponseCopyWith<$Res> {
  _$RecordResponseCopyWithImpl(this._self, this._then);

  final RecordResponse _self;
  final $Res Function(RecordResponse) _then;

/// Create a copy of RecordResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recordID = freezed,Object? equipmentId = null,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? creditedItems = freezed,Object? recordCreatedDate = freezed,Object? inspectedComponents = freezed,Object? scheduleType = freezed,Object? status = freezed,Object? inspectionDate = freezed,Object? actionCreated = freezed,Object? attachments = freezed,Object? comments = freezed,Object? rejectionReason = freezed,Object? approvedAt = freezed,Object? reviewedAt = freezed,Object? isDeleted = freezed,Object? scheduleId = freezed,Object? referenceDataId = freezed,Object? scheduleTypeId = freezed,Object? submittedById = freezed,Object? reviewedById = freezed,Object? approvedById = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recordID: freezed == recordID ? _self.recordID : recordID // ignore: cast_nullable_to_non_nullable
as String?,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,creditedItems: freezed == creditedItems ? _self.creditedItems : creditedItems // ignore: cast_nullable_to_non_nullable
as List<CreditedItem>?,recordCreatedDate: freezed == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,inspectedComponents: freezed == inspectedComponents ? _self.inspectedComponents : inspectedComponents // ignore: cast_nullable_to_non_nullable
as List<InspectedComponent>?,scheduleType: freezed == scheduleType ? _self.scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RecordStatus?,inspectionDate: freezed == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,actionCreated: freezed == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,referenceDataId: freezed == referenceDataId ? _self.referenceDataId : referenceDataId // ignore: cast_nullable_to_non_nullable
as String?,scheduleTypeId: freezed == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String?,submittedById: freezed == submittedById ? _self.submittedById : submittedById // ignore: cast_nullable_to_non_nullable
as String?,reviewedById: freezed == reviewedById ? _self.reviewedById : reviewedById // ignore: cast_nullable_to_non_nullable
as String?,approvedById: freezed == approvedById ? _self.approvedById : approvedById // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordResponse].
extension RecordResponsePatterns on RecordResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordResponse value)  $default,){
final _that = this;
switch (_that) {
case _RecordResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RecordResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? recordID,  String equipmentId,  String? description,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: 'creditedItems')  List<CreditedItem>? creditedItems, @JsonKey(name: 'recordCreatedDate')  DateTime? recordCreatedDate, @JsonKey(name: 'inspectedComponents')  List<InspectedComponent>? inspectedComponents, @JsonKey(name: 'scheduleType')  Map<String, dynamic>? scheduleType,  RecordStatus? status, @JsonKey(name: 'inspectionDate')  DateTime? inspectionDate,  String? actionCreated, @JsonKey(name: 'attachments')  List<Map<String, dynamic>>? attachments,  String? comments,  String? rejectionReason,  DateTime? approvedAt,  DateTime? reviewedAt,  bool? isDeleted,  String? scheduleId,  String? referenceDataId,  String? scheduleTypeId,  String? submittedById,  String? reviewedById,  String? approvedById)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordResponse() when $default != null:
return $default(_that.id,_that.recordID,_that.equipmentId,_that.description,_that.createdAt,_that.updatedAt,_that.creditedItems,_that.recordCreatedDate,_that.inspectedComponents,_that.scheduleType,_that.status,_that.inspectionDate,_that.actionCreated,_that.attachments,_that.comments,_that.rejectionReason,_that.approvedAt,_that.reviewedAt,_that.isDeleted,_that.scheduleId,_that.referenceDataId,_that.scheduleTypeId,_that.submittedById,_that.reviewedById,_that.approvedById);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? recordID,  String equipmentId,  String? description,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: 'creditedItems')  List<CreditedItem>? creditedItems, @JsonKey(name: 'recordCreatedDate')  DateTime? recordCreatedDate, @JsonKey(name: 'inspectedComponents')  List<InspectedComponent>? inspectedComponents, @JsonKey(name: 'scheduleType')  Map<String, dynamic>? scheduleType,  RecordStatus? status, @JsonKey(name: 'inspectionDate')  DateTime? inspectionDate,  String? actionCreated, @JsonKey(name: 'attachments')  List<Map<String, dynamic>>? attachments,  String? comments,  String? rejectionReason,  DateTime? approvedAt,  DateTime? reviewedAt,  bool? isDeleted,  String? scheduleId,  String? referenceDataId,  String? scheduleTypeId,  String? submittedById,  String? reviewedById,  String? approvedById)  $default,) {final _that = this;
switch (_that) {
case _RecordResponse():
return $default(_that.id,_that.recordID,_that.equipmentId,_that.description,_that.createdAt,_that.updatedAt,_that.creditedItems,_that.recordCreatedDate,_that.inspectedComponents,_that.scheduleType,_that.status,_that.inspectionDate,_that.actionCreated,_that.attachments,_that.comments,_that.rejectionReason,_that.approvedAt,_that.reviewedAt,_that.isDeleted,_that.scheduleId,_that.referenceDataId,_that.scheduleTypeId,_that.submittedById,_that.reviewedById,_that.approvedById);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? recordID,  String equipmentId,  String? description,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: 'creditedItems')  List<CreditedItem>? creditedItems, @JsonKey(name: 'recordCreatedDate')  DateTime? recordCreatedDate, @JsonKey(name: 'inspectedComponents')  List<InspectedComponent>? inspectedComponents, @JsonKey(name: 'scheduleType')  Map<String, dynamic>? scheduleType,  RecordStatus? status, @JsonKey(name: 'inspectionDate')  DateTime? inspectionDate,  String? actionCreated, @JsonKey(name: 'attachments')  List<Map<String, dynamic>>? attachments,  String? comments,  String? rejectionReason,  DateTime? approvedAt,  DateTime? reviewedAt,  bool? isDeleted,  String? scheduleId,  String? referenceDataId,  String? scheduleTypeId,  String? submittedById,  String? reviewedById,  String? approvedById)?  $default,) {final _that = this;
switch (_that) {
case _RecordResponse() when $default != null:
return $default(_that.id,_that.recordID,_that.equipmentId,_that.description,_that.createdAt,_that.updatedAt,_that.creditedItems,_that.recordCreatedDate,_that.inspectedComponents,_that.scheduleType,_that.status,_that.inspectionDate,_that.actionCreated,_that.attachments,_that.comments,_that.rejectionReason,_that.approvedAt,_that.reviewedAt,_that.isDeleted,_that.scheduleId,_that.referenceDataId,_that.scheduleTypeId,_that.submittedById,_that.reviewedById,_that.approvedById);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordResponse implements RecordResponse {
  const _RecordResponse({required this.id, this.recordID, required this.equipmentId, this.description, this.createdAt, this.updatedAt, @JsonKey(name: 'creditedItems') final  List<CreditedItem>? creditedItems, @JsonKey(name: 'recordCreatedDate') this.recordCreatedDate, @JsonKey(name: 'inspectedComponents') final  List<InspectedComponent>? inspectedComponents, @JsonKey(name: 'scheduleType') final  Map<String, dynamic>? scheduleType, this.status, @JsonKey(name: 'inspectionDate') this.inspectionDate, this.actionCreated, @JsonKey(name: 'attachments') final  List<Map<String, dynamic>>? attachments, this.comments, this.rejectionReason, this.approvedAt, this.reviewedAt, this.isDeleted, this.scheduleId, this.referenceDataId, this.scheduleTypeId, this.submittedById, this.reviewedById, this.approvedById}): _creditedItems = creditedItems,_inspectedComponents = inspectedComponents,_scheduleType = scheduleType,_attachments = attachments;
  factory _RecordResponse.fromJson(Map<String, dynamic> json) => _$RecordResponseFromJson(json);

@override final  String id;
@override final  String? recordID;
@override final  String equipmentId;
@override final  String? description;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
 final  List<CreditedItem>? _creditedItems;
@override@JsonKey(name: 'creditedItems') List<CreditedItem>? get creditedItems {
  final value = _creditedItems;
  if (value == null) return null;
  if (_creditedItems is EqualUnmodifiableListView) return _creditedItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'recordCreatedDate') final  DateTime? recordCreatedDate;
 final  List<InspectedComponent>? _inspectedComponents;
@override@JsonKey(name: 'inspectedComponents') List<InspectedComponent>? get inspectedComponents {
  final value = _inspectedComponents;
  if (value == null) return null;
  if (_inspectedComponents is EqualUnmodifiableListView) return _inspectedComponents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, dynamic>? _scheduleType;
@override@JsonKey(name: 'scheduleType') Map<String, dynamic>? get scheduleType {
  final value = _scheduleType;
  if (value == null) return null;
  if (_scheduleType is EqualUnmodifiableMapView) return _scheduleType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  RecordStatus? status;
@override@JsonKey(name: 'inspectionDate') final  DateTime? inspectionDate;
@override final  String? actionCreated;
 final  List<Map<String, dynamic>>? _attachments;
@override@JsonKey(name: 'attachments') List<Map<String, dynamic>>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? comments;
@override final  String? rejectionReason;
@override final  DateTime? approvedAt;
@override final  DateTime? reviewedAt;
@override final  bool? isDeleted;
@override final  String? scheduleId;
@override final  String? referenceDataId;
@override final  String? scheduleTypeId;
@override final  String? submittedById;
@override final  String? reviewedById;
@override final  String? approvedById;

/// Create a copy of RecordResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordResponseCopyWith<_RecordResponse> get copyWith => __$RecordResponseCopyWithImpl<_RecordResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.recordID, recordID) || other.recordID == recordID)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._creditedItems, _creditedItems)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&const DeepCollectionEquality().equals(other._inspectedComponents, _inspectedComponents)&&const DeepCollectionEquality().equals(other._scheduleType, _scheduleType)&&(identical(other.status, status) || other.status == status)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.referenceDataId, referenceDataId) || other.referenceDataId == referenceDataId)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.submittedById, submittedById) || other.submittedById == submittedById)&&(identical(other.reviewedById, reviewedById) || other.reviewedById == reviewedById)&&(identical(other.approvedById, approvedById) || other.approvedById == approvedById));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,recordID,equipmentId,description,createdAt,updatedAt,const DeepCollectionEquality().hash(_creditedItems),recordCreatedDate,const DeepCollectionEquality().hash(_inspectedComponents),const DeepCollectionEquality().hash(_scheduleType),status,inspectionDate,actionCreated,const DeepCollectionEquality().hash(_attachments),comments,rejectionReason,approvedAt,reviewedAt,isDeleted,scheduleId,referenceDataId,scheduleTypeId,submittedById,reviewedById,approvedById]);

@override
String toString() {
  return 'RecordResponse(id: $id, recordID: $recordID, equipmentId: $equipmentId, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, creditedItems: $creditedItems, recordCreatedDate: $recordCreatedDate, inspectedComponents: $inspectedComponents, scheduleType: $scheduleType, status: $status, inspectionDate: $inspectionDate, actionCreated: $actionCreated, attachments: $attachments, comments: $comments, rejectionReason: $rejectionReason, approvedAt: $approvedAt, reviewedAt: $reviewedAt, isDeleted: $isDeleted, scheduleId: $scheduleId, referenceDataId: $referenceDataId, scheduleTypeId: $scheduleTypeId, submittedById: $submittedById, reviewedById: $reviewedById, approvedById: $approvedById)';
}


}

/// @nodoc
abstract mixin class _$RecordResponseCopyWith<$Res> implements $RecordResponseCopyWith<$Res> {
  factory _$RecordResponseCopyWith(_RecordResponse value, $Res Function(_RecordResponse) _then) = __$RecordResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String? recordID, String equipmentId, String? description, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: 'creditedItems') List<CreditedItem>? creditedItems,@JsonKey(name: 'recordCreatedDate') DateTime? recordCreatedDate,@JsonKey(name: 'inspectedComponents') List<InspectedComponent>? inspectedComponents,@JsonKey(name: 'scheduleType') Map<String, dynamic>? scheduleType, RecordStatus? status,@JsonKey(name: 'inspectionDate') DateTime? inspectionDate, String? actionCreated,@JsonKey(name: 'attachments') List<Map<String, dynamic>>? attachments, String? comments, String? rejectionReason, DateTime? approvedAt, DateTime? reviewedAt, bool? isDeleted, String? scheduleId, String? referenceDataId, String? scheduleTypeId, String? submittedById, String? reviewedById, String? approvedById
});




}
/// @nodoc
class __$RecordResponseCopyWithImpl<$Res>
    implements _$RecordResponseCopyWith<$Res> {
  __$RecordResponseCopyWithImpl(this._self, this._then);

  final _RecordResponse _self;
  final $Res Function(_RecordResponse) _then;

/// Create a copy of RecordResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recordID = freezed,Object? equipmentId = null,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? creditedItems = freezed,Object? recordCreatedDate = freezed,Object? inspectedComponents = freezed,Object? scheduleType = freezed,Object? status = freezed,Object? inspectionDate = freezed,Object? actionCreated = freezed,Object? attachments = freezed,Object? comments = freezed,Object? rejectionReason = freezed,Object? approvedAt = freezed,Object? reviewedAt = freezed,Object? isDeleted = freezed,Object? scheduleId = freezed,Object? referenceDataId = freezed,Object? scheduleTypeId = freezed,Object? submittedById = freezed,Object? reviewedById = freezed,Object? approvedById = freezed,}) {
  return _then(_RecordResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recordID: freezed == recordID ? _self.recordID : recordID // ignore: cast_nullable_to_non_nullable
as String?,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,creditedItems: freezed == creditedItems ? _self._creditedItems : creditedItems // ignore: cast_nullable_to_non_nullable
as List<CreditedItem>?,recordCreatedDate: freezed == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,inspectedComponents: freezed == inspectedComponents ? _self._inspectedComponents : inspectedComponents // ignore: cast_nullable_to_non_nullable
as List<InspectedComponent>?,scheduleType: freezed == scheduleType ? _self._scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RecordStatus?,inspectionDate: freezed == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,actionCreated: freezed == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,referenceDataId: freezed == referenceDataId ? _self.referenceDataId : referenceDataId // ignore: cast_nullable_to_non_nullable
as String?,scheduleTypeId: freezed == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String?,submittedById: freezed == submittedById ? _self.submittedById : submittedById // ignore: cast_nullable_to_non_nullable
as String?,reviewedById: freezed == reviewedById ? _self.reviewedById : reviewedById // ignore: cast_nullable_to_non_nullable
as String?,approvedById: freezed == approvedById ? _self.approvedById : approvedById // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InspectedComponent {

 String get id; DateTime? get createdAt; DateTime? get updatedAt; String? get recordId; String? get componentId; ComponentDetail? get component;
/// Create a copy of InspectedComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InspectedComponentCopyWith<InspectedComponent> get copyWith => _$InspectedComponentCopyWithImpl<InspectedComponent>(this as InspectedComponent, _$identity);

  /// Serializes this InspectedComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InspectedComponent&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.componentId, componentId) || other.componentId == componentId)&&(identical(other.component, component) || other.component == component));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,recordId,componentId,component);

@override
String toString() {
  return 'InspectedComponent(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, recordId: $recordId, componentId: $componentId, component: $component)';
}


}

/// @nodoc
abstract mixin class $InspectedComponentCopyWith<$Res>  {
  factory $InspectedComponentCopyWith(InspectedComponent value, $Res Function(InspectedComponent) _then) = _$InspectedComponentCopyWithImpl;
@useResult
$Res call({
 String id, DateTime? createdAt, DateTime? updatedAt, String? recordId, String? componentId, ComponentDetail? component
});


$ComponentDetailCopyWith<$Res>? get component;

}
/// @nodoc
class _$InspectedComponentCopyWithImpl<$Res>
    implements $InspectedComponentCopyWith<$Res> {
  _$InspectedComponentCopyWithImpl(this._self, this._then);

  final InspectedComponent _self;
  final $Res Function(InspectedComponent) _then;

/// Create a copy of InspectedComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? recordId = freezed,Object? componentId = freezed,Object? component = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,componentId: freezed == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String?,component: freezed == component ? _self.component : component // ignore: cast_nullable_to_non_nullable
as ComponentDetail?,
  ));
}
/// Create a copy of InspectedComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentDetailCopyWith<$Res>? get component {
    if (_self.component == null) {
    return null;
  }

  return $ComponentDetailCopyWith<$Res>(_self.component!, (value) {
    return _then(_self.copyWith(component: value));
  });
}
}


/// Adds pattern-matching-related methods to [InspectedComponent].
extension InspectedComponentPatterns on InspectedComponent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InspectedComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InspectedComponent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InspectedComponent value)  $default,){
final _that = this;
switch (_that) {
case _InspectedComponent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InspectedComponent value)?  $default,){
final _that = this;
switch (_that) {
case _InspectedComponent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime? createdAt,  DateTime? updatedAt,  String? recordId,  String? componentId,  ComponentDetail? component)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InspectedComponent() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.recordId,_that.componentId,_that.component);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime? createdAt,  DateTime? updatedAt,  String? recordId,  String? componentId,  ComponentDetail? component)  $default,) {final _that = this;
switch (_that) {
case _InspectedComponent():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.recordId,_that.componentId,_that.component);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime? createdAt,  DateTime? updatedAt,  String? recordId,  String? componentId,  ComponentDetail? component)?  $default,) {final _that = this;
switch (_that) {
case _InspectedComponent() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.recordId,_that.componentId,_that.component);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InspectedComponent implements InspectedComponent {
  const _InspectedComponent({required this.id, this.createdAt, this.updatedAt, this.recordId, this.componentId, this.component});
  factory _InspectedComponent.fromJson(Map<String, dynamic> json) => _$InspectedComponentFromJson(json);

@override final  String id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? recordId;
@override final  String? componentId;
@override final  ComponentDetail? component;

/// Create a copy of InspectedComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InspectedComponentCopyWith<_InspectedComponent> get copyWith => __$InspectedComponentCopyWithImpl<_InspectedComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InspectedComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectedComponent&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.componentId, componentId) || other.componentId == componentId)&&(identical(other.component, component) || other.component == component));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,recordId,componentId,component);

@override
String toString() {
  return 'InspectedComponent(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, recordId: $recordId, componentId: $componentId, component: $component)';
}


}

/// @nodoc
abstract mixin class _$InspectedComponentCopyWith<$Res> implements $InspectedComponentCopyWith<$Res> {
  factory _$InspectedComponentCopyWith(_InspectedComponent value, $Res Function(_InspectedComponent) _then) = __$InspectedComponentCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime? createdAt, DateTime? updatedAt, String? recordId, String? componentId, ComponentDetail? component
});


@override $ComponentDetailCopyWith<$Res>? get component;

}
/// @nodoc
class __$InspectedComponentCopyWithImpl<$Res>
    implements _$InspectedComponentCopyWith<$Res> {
  __$InspectedComponentCopyWithImpl(this._self, this._then);

  final _InspectedComponent _self;
  final $Res Function(_InspectedComponent) _then;

/// Create a copy of InspectedComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? recordId = freezed,Object? componentId = freezed,Object? component = freezed,}) {
  return _then(_InspectedComponent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,componentId: freezed == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String?,component: freezed == component ? _self.component : component // ignore: cast_nullable_to_non_nullable
as ComponentDetail?,
  ));
}

/// Create a copy of InspectedComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentDetailCopyWith<$Res>? get component {
    if (_self.component == null) {
    return null;
  }

  return $ComponentDetailCopyWith<$Res>(_self.component!, (value) {
    return _then(_self.copyWith(component: value));
  });
}
}


/// @nodoc
mixin _$ComponentDetail {

 String get id; String get componentID; String get name; ComponentRefData? get componentRefData;
/// Create a copy of ComponentDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComponentDetailCopyWith<ComponentDetail> get copyWith => _$ComponentDetailCopyWithImpl<ComponentDetail>(this as ComponentDetail, _$identity);

  /// Serializes this ComponentDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComponentDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.componentID, componentID) || other.componentID == componentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.componentRefData, componentRefData) || other.componentRefData == componentRefData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,componentID,name,componentRefData);

@override
String toString() {
  return 'ComponentDetail(id: $id, componentID: $componentID, name: $name, componentRefData: $componentRefData)';
}


}

/// @nodoc
abstract mixin class $ComponentDetailCopyWith<$Res>  {
  factory $ComponentDetailCopyWith(ComponentDetail value, $Res Function(ComponentDetail) _then) = _$ComponentDetailCopyWithImpl;
@useResult
$Res call({
 String id, String componentID, String name, ComponentRefData? componentRefData
});


$ComponentRefDataCopyWith<$Res>? get componentRefData;

}
/// @nodoc
class _$ComponentDetailCopyWithImpl<$Res>
    implements $ComponentDetailCopyWith<$Res> {
  _$ComponentDetailCopyWithImpl(this._self, this._then);

  final ComponentDetail _self;
  final $Res Function(ComponentDetail) _then;

/// Create a copy of ComponentDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? componentID = null,Object? name = null,Object? componentRefData = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,componentID: null == componentID ? _self.componentID : componentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,componentRefData: freezed == componentRefData ? _self.componentRefData : componentRefData // ignore: cast_nullable_to_non_nullable
as ComponentRefData?,
  ));
}
/// Create a copy of ComponentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentRefDataCopyWith<$Res>? get componentRefData {
    if (_self.componentRefData == null) {
    return null;
  }

  return $ComponentRefDataCopyWith<$Res>(_self.componentRefData!, (value) {
    return _then(_self.copyWith(componentRefData: value));
  });
}
}


/// Adds pattern-matching-related methods to [ComponentDetail].
extension ComponentDetailPatterns on ComponentDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComponentDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComponentDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComponentDetail value)  $default,){
final _that = this;
switch (_that) {
case _ComponentDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComponentDetail value)?  $default,){
final _that = this;
switch (_that) {
case _ComponentDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String componentID,  String name,  ComponentRefData? componentRefData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComponentDetail() when $default != null:
return $default(_that.id,_that.componentID,_that.name,_that.componentRefData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String componentID,  String name,  ComponentRefData? componentRefData)  $default,) {final _that = this;
switch (_that) {
case _ComponentDetail():
return $default(_that.id,_that.componentID,_that.name,_that.componentRefData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String componentID,  String name,  ComponentRefData? componentRefData)?  $default,) {final _that = this;
switch (_that) {
case _ComponentDetail() when $default != null:
return $default(_that.id,_that.componentID,_that.name,_that.componentRefData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComponentDetail implements ComponentDetail {
  const _ComponentDetail({required this.id, required this.componentID, required this.name, this.componentRefData});
  factory _ComponentDetail.fromJson(Map<String, dynamic> json) => _$ComponentDetailFromJson(json);

@override final  String id;
@override final  String componentID;
@override final  String name;
@override final  ComponentRefData? componentRefData;

/// Create a copy of ComponentDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComponentDetailCopyWith<_ComponentDetail> get copyWith => __$ComponentDetailCopyWithImpl<_ComponentDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComponentDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComponentDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.componentID, componentID) || other.componentID == componentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.componentRefData, componentRefData) || other.componentRefData == componentRefData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,componentID,name,componentRefData);

@override
String toString() {
  return 'ComponentDetail(id: $id, componentID: $componentID, name: $name, componentRefData: $componentRefData)';
}


}

/// @nodoc
abstract mixin class _$ComponentDetailCopyWith<$Res> implements $ComponentDetailCopyWith<$Res> {
  factory _$ComponentDetailCopyWith(_ComponentDetail value, $Res Function(_ComponentDetail) _then) = __$ComponentDetailCopyWithImpl;
@override @useResult
$Res call({
 String id, String componentID, String name, ComponentRefData? componentRefData
});


@override $ComponentRefDataCopyWith<$Res>? get componentRefData;

}
/// @nodoc
class __$ComponentDetailCopyWithImpl<$Res>
    implements _$ComponentDetailCopyWith<$Res> {
  __$ComponentDetailCopyWithImpl(this._self, this._then);

  final _ComponentDetail _self;
  final $Res Function(_ComponentDetail) _then;

/// Create a copy of ComponentDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? componentID = null,Object? name = null,Object? componentRefData = freezed,}) {
  return _then(_ComponentDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,componentID: null == componentID ? _self.componentID : componentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,componentRefData: freezed == componentRefData ? _self.componentRefData : componentRefData // ignore: cast_nullable_to_non_nullable
as ComponentRefData?,
  ));
}

/// Create a copy of ComponentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentRefDataCopyWith<$Res>? get componentRefData {
    if (_self.componentRefData == null) {
    return null;
  }

  return $ComponentRefDataCopyWith<$Res>(_self.componentRefData!, (value) {
    return _then(_self.copyWith(componentRefData: value));
  });
}
}


/// @nodoc
mixin _$ComponentRefData {

 String get id; String get value; String? get displayValue;
/// Create a copy of ComponentRefData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComponentRefDataCopyWith<ComponentRefData> get copyWith => _$ComponentRefDataCopyWithImpl<ComponentRefData>(this as ComponentRefData, _$identity);

  /// Serializes this ComponentRefData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComponentRefData&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,displayValue);

@override
String toString() {
  return 'ComponentRefData(id: $id, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class $ComponentRefDataCopyWith<$Res>  {
  factory $ComponentRefDataCopyWith(ComponentRefData value, $Res Function(ComponentRefData) _then) = _$ComponentRefDataCopyWithImpl;
@useResult
$Res call({
 String id, String value, String? displayValue
});




}
/// @nodoc
class _$ComponentRefDataCopyWithImpl<$Res>
    implements $ComponentRefDataCopyWith<$Res> {
  _$ComponentRefDataCopyWithImpl(this._self, this._then);

  final ComponentRefData _self;
  final $Res Function(ComponentRefData) _then;

/// Create a copy of ComponentRefData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? value = null,Object? displayValue = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,displayValue: freezed == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComponentRefData].
extension ComponentRefDataPatterns on ComponentRefData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComponentRefData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComponentRefData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComponentRefData value)  $default,){
final _that = this;
switch (_that) {
case _ComponentRefData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComponentRefData value)?  $default,){
final _that = this;
switch (_that) {
case _ComponentRefData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String value,  String? displayValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComponentRefData() when $default != null:
return $default(_that.id,_that.value,_that.displayValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String value,  String? displayValue)  $default,) {final _that = this;
switch (_that) {
case _ComponentRefData():
return $default(_that.id,_that.value,_that.displayValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String value,  String? displayValue)?  $default,) {final _that = this;
switch (_that) {
case _ComponentRefData() when $default != null:
return $default(_that.id,_that.value,_that.displayValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComponentRefData implements ComponentRefData {
  const _ComponentRefData({required this.id, required this.value, this.displayValue});
  factory _ComponentRefData.fromJson(Map<String, dynamic> json) => _$ComponentRefDataFromJson(json);

@override final  String id;
@override final  String value;
@override final  String? displayValue;

/// Create a copy of ComponentRefData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComponentRefDataCopyWith<_ComponentRefData> get copyWith => __$ComponentRefDataCopyWithImpl<_ComponentRefData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComponentRefDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComponentRefData&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,displayValue);

@override
String toString() {
  return 'ComponentRefData(id: $id, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class _$ComponentRefDataCopyWith<$Res> implements $ComponentRefDataCopyWith<$Res> {
  factory _$ComponentRefDataCopyWith(_ComponentRefData value, $Res Function(_ComponentRefData) _then) = __$ComponentRefDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String value, String? displayValue
});




}
/// @nodoc
class __$ComponentRefDataCopyWithImpl<$Res>
    implements _$ComponentRefDataCopyWith<$Res> {
  __$ComponentRefDataCopyWithImpl(this._self, this._then);

  final _ComponentRefData _self;
  final $Res Function(_ComponentRefData) _then;

/// Create a copy of ComponentRefData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? value = null,Object? displayValue = freezed,}) {
  return _then(_ComponentRefData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,displayValue: freezed == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RecordComponent {

 String get id;@JsonKey(name: 'componentId') String? get componentId;
/// Create a copy of RecordComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordComponentCopyWith<RecordComponent> get copyWith => _$RecordComponentCopyWithImpl<RecordComponent>(this as RecordComponent, _$identity);

  /// Serializes this RecordComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordComponent&&(identical(other.id, id) || other.id == id)&&(identical(other.componentId, componentId) || other.componentId == componentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,componentId);

@override
String toString() {
  return 'RecordComponent(id: $id, componentId: $componentId)';
}


}

/// @nodoc
abstract mixin class $RecordComponentCopyWith<$Res>  {
  factory $RecordComponentCopyWith(RecordComponent value, $Res Function(RecordComponent) _then) = _$RecordComponentCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'componentId') String? componentId
});




}
/// @nodoc
class _$RecordComponentCopyWithImpl<$Res>
    implements $RecordComponentCopyWith<$Res> {
  _$RecordComponentCopyWithImpl(this._self, this._then);

  final RecordComponent _self;
  final $Res Function(RecordComponent) _then;

/// Create a copy of RecordComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? componentId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,componentId: freezed == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordComponent].
extension RecordComponentPatterns on RecordComponent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordComponent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordComponent value)  $default,){
final _that = this;
switch (_that) {
case _RecordComponent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordComponent value)?  $default,){
final _that = this;
switch (_that) {
case _RecordComponent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'componentId')  String? componentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordComponent() when $default != null:
return $default(_that.id,_that.componentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'componentId')  String? componentId)  $default,) {final _that = this;
switch (_that) {
case _RecordComponent():
return $default(_that.id,_that.componentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'componentId')  String? componentId)?  $default,) {final _that = this;
switch (_that) {
case _RecordComponent() when $default != null:
return $default(_that.id,_that.componentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordComponent implements RecordComponent {
  const _RecordComponent({required this.id, @JsonKey(name: 'componentId') this.componentId});
  factory _RecordComponent.fromJson(Map<String, dynamic> json) => _$RecordComponentFromJson(json);

@override final  String id;
@override@JsonKey(name: 'componentId') final  String? componentId;

/// Create a copy of RecordComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordComponentCopyWith<_RecordComponent> get copyWith => __$RecordComponentCopyWithImpl<_RecordComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordComponent&&(identical(other.id, id) || other.id == id)&&(identical(other.componentId, componentId) || other.componentId == componentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,componentId);

@override
String toString() {
  return 'RecordComponent(id: $id, componentId: $componentId)';
}


}

/// @nodoc
abstract mixin class _$RecordComponentCopyWith<$Res> implements $RecordComponentCopyWith<$Res> {
  factory _$RecordComponentCopyWith(_RecordComponent value, $Res Function(_RecordComponent) _then) = __$RecordComponentCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'componentId') String? componentId
});




}
/// @nodoc
class __$RecordComponentCopyWithImpl<$Res>
    implements _$RecordComponentCopyWith<$Res> {
  __$RecordComponentCopyWithImpl(this._self, this._then);

  final _RecordComponent _self;
  final $Res Function(_RecordComponent) _then;

/// Create a copy of RecordComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? componentId = freezed,}) {
  return _then(_RecordComponent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,componentId: freezed == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreditedItem {

 String get id;@JsonKey(name: 'scheduleV2Id') String? get scheduleV2Id;
/// Create a copy of CreditedItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreditedItemCopyWith<CreditedItem> get copyWith => _$CreditedItemCopyWithImpl<CreditedItem>(this as CreditedItem, _$identity);

  /// Serializes this CreditedItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreditedItem&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleV2Id);

@override
String toString() {
  return 'CreditedItem(id: $id, scheduleV2Id: $scheduleV2Id)';
}


}

/// @nodoc
abstract mixin class $CreditedItemCopyWith<$Res>  {
  factory $CreditedItemCopyWith(CreditedItem value, $Res Function(CreditedItem) _then) = _$CreditedItemCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'scheduleV2Id') String? scheduleV2Id
});




}
/// @nodoc
class _$CreditedItemCopyWithImpl<$Res>
    implements $CreditedItemCopyWith<$Res> {
  _$CreditedItemCopyWithImpl(this._self, this._then);

  final CreditedItem _self;
  final $Res Function(CreditedItem) _then;

/// Create a copy of CreditedItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? scheduleV2Id = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreditedItem].
extension CreditedItemPatterns on CreditedItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreditedItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreditedItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreditedItem value)  $default,){
final _that = this;
switch (_that) {
case _CreditedItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreditedItem value)?  $default,){
final _that = this;
switch (_that) {
case _CreditedItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'scheduleV2Id')  String? scheduleV2Id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreditedItem() when $default != null:
return $default(_that.id,_that.scheduleV2Id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'scheduleV2Id')  String? scheduleV2Id)  $default,) {final _that = this;
switch (_that) {
case _CreditedItem():
return $default(_that.id,_that.scheduleV2Id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'scheduleV2Id')  String? scheduleV2Id)?  $default,) {final _that = this;
switch (_that) {
case _CreditedItem() when $default != null:
return $default(_that.id,_that.scheduleV2Id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreditedItem implements CreditedItem {
  const _CreditedItem({required this.id, @JsonKey(name: 'scheduleV2Id') this.scheduleV2Id});
  factory _CreditedItem.fromJson(Map<String, dynamic> json) => _$CreditedItemFromJson(json);

@override final  String id;
@override@JsonKey(name: 'scheduleV2Id') final  String? scheduleV2Id;

/// Create a copy of CreditedItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreditedItemCopyWith<_CreditedItem> get copyWith => __$CreditedItemCopyWithImpl<_CreditedItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreditedItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreditedItem&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleV2Id);

@override
String toString() {
  return 'CreditedItem(id: $id, scheduleV2Id: $scheduleV2Id)';
}


}

/// @nodoc
abstract mixin class _$CreditedItemCopyWith<$Res> implements $CreditedItemCopyWith<$Res> {
  factory _$CreditedItemCopyWith(_CreditedItem value, $Res Function(_CreditedItem) _then) = __$CreditedItemCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'scheduleV2Id') String? scheduleV2Id
});




}
/// @nodoc
class __$CreditedItemCopyWithImpl<$Res>
    implements _$CreditedItemCopyWith<$Res> {
  __$CreditedItemCopyWithImpl(this._self, this._then);

  final _CreditedItem _self;
  final $Res Function(_CreditedItem) _then;

/// Create a copy of CreditedItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? scheduleV2Id = freezed,}) {
  return _then(_CreditedItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

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

 String get id; String? get recordID; String get equipmentId; String? get description;@JsonKey(name: 'creditedItems') List<CreditedItem>? get creditedItems;@JsonKey(name: 'recordCreatedDate') DateTime? get recordCreatedDate;@JsonKey(name: 'inspectedComponents') List<RecordComponent>? get inspectedComponents;@JsonKey(name: 'scheduleType') Map<String, dynamic>? get scheduleType;@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) RecordStatus? get status;@JsonKey(name: 'inspectionDate') DateTime? get inspectionDate; String? get actionCreated;@JsonKey(name: 'attachments') List<Map<String, dynamic>>? get attachments; String? get comments;
/// Create a copy of RecordResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordResponseCopyWith<RecordResponse> get copyWith => _$RecordResponseCopyWithImpl<RecordResponse>(this as RecordResponse, _$identity);

  /// Serializes this RecordResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.recordID, recordID) || other.recordID == recordID)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.creditedItems, creditedItems)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&const DeepCollectionEquality().equals(other.inspectedComponents, inspectedComponents)&&const DeepCollectionEquality().equals(other.scheduleType, scheduleType)&&(identical(other.status, status) || other.status == status)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordID,equipmentId,description,const DeepCollectionEquality().hash(creditedItems),recordCreatedDate,const DeepCollectionEquality().hash(inspectedComponents),const DeepCollectionEquality().hash(scheduleType),status,inspectionDate,actionCreated,const DeepCollectionEquality().hash(attachments),comments);

@override
String toString() {
  return 'RecordResponse(id: $id, recordID: $recordID, equipmentId: $equipmentId, description: $description, creditedItems: $creditedItems, recordCreatedDate: $recordCreatedDate, inspectedComponents: $inspectedComponents, scheduleType: $scheduleType, status: $status, inspectionDate: $inspectionDate, actionCreated: $actionCreated, attachments: $attachments, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $RecordResponseCopyWith<$Res>  {
  factory $RecordResponseCopyWith(RecordResponse value, $Res Function(RecordResponse) _then) = _$RecordResponseCopyWithImpl;
@useResult
$Res call({
 String id, String? recordID, String equipmentId, String? description,@JsonKey(name: 'creditedItems') List<CreditedItem>? creditedItems,@JsonKey(name: 'recordCreatedDate') DateTime? recordCreatedDate,@JsonKey(name: 'inspectedComponents') List<RecordComponent>? inspectedComponents,@JsonKey(name: 'scheduleType') Map<String, dynamic>? scheduleType,@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) RecordStatus? status,@JsonKey(name: 'inspectionDate') DateTime? inspectionDate, String? actionCreated,@JsonKey(name: 'attachments') List<Map<String, dynamic>>? attachments, String? comments
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recordID = freezed,Object? equipmentId = null,Object? description = freezed,Object? creditedItems = freezed,Object? recordCreatedDate = freezed,Object? inspectedComponents = freezed,Object? scheduleType = freezed,Object? status = freezed,Object? inspectionDate = freezed,Object? actionCreated = freezed,Object? attachments = freezed,Object? comments = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recordID: freezed == recordID ? _self.recordID : recordID // ignore: cast_nullable_to_non_nullable
as String?,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,creditedItems: freezed == creditedItems ? _self.creditedItems : creditedItems // ignore: cast_nullable_to_non_nullable
as List<CreditedItem>?,recordCreatedDate: freezed == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,inspectedComponents: freezed == inspectedComponents ? _self.inspectedComponents : inspectedComponents // ignore: cast_nullable_to_non_nullable
as List<RecordComponent>?,scheduleType: freezed == scheduleType ? _self.scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RecordStatus?,inspectionDate: freezed == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,actionCreated: freezed == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? recordID,  String equipmentId,  String? description, @JsonKey(name: 'creditedItems')  List<CreditedItem>? creditedItems, @JsonKey(name: 'recordCreatedDate')  DateTime? recordCreatedDate, @JsonKey(name: 'inspectedComponents')  List<RecordComponent>? inspectedComponents, @JsonKey(name: 'scheduleType')  Map<String, dynamic>? scheduleType, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  RecordStatus? status, @JsonKey(name: 'inspectionDate')  DateTime? inspectionDate,  String? actionCreated, @JsonKey(name: 'attachments')  List<Map<String, dynamic>>? attachments,  String? comments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordResponse() when $default != null:
return $default(_that.id,_that.recordID,_that.equipmentId,_that.description,_that.creditedItems,_that.recordCreatedDate,_that.inspectedComponents,_that.scheduleType,_that.status,_that.inspectionDate,_that.actionCreated,_that.attachments,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? recordID,  String equipmentId,  String? description, @JsonKey(name: 'creditedItems')  List<CreditedItem>? creditedItems, @JsonKey(name: 'recordCreatedDate')  DateTime? recordCreatedDate, @JsonKey(name: 'inspectedComponents')  List<RecordComponent>? inspectedComponents, @JsonKey(name: 'scheduleType')  Map<String, dynamic>? scheduleType, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  RecordStatus? status, @JsonKey(name: 'inspectionDate')  DateTime? inspectionDate,  String? actionCreated, @JsonKey(name: 'attachments')  List<Map<String, dynamic>>? attachments,  String? comments)  $default,) {final _that = this;
switch (_that) {
case _RecordResponse():
return $default(_that.id,_that.recordID,_that.equipmentId,_that.description,_that.creditedItems,_that.recordCreatedDate,_that.inspectedComponents,_that.scheduleType,_that.status,_that.inspectionDate,_that.actionCreated,_that.attachments,_that.comments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? recordID,  String equipmentId,  String? description, @JsonKey(name: 'creditedItems')  List<CreditedItem>? creditedItems, @JsonKey(name: 'recordCreatedDate')  DateTime? recordCreatedDate, @JsonKey(name: 'inspectedComponents')  List<RecordComponent>? inspectedComponents, @JsonKey(name: 'scheduleType')  Map<String, dynamic>? scheduleType, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  RecordStatus? status, @JsonKey(name: 'inspectionDate')  DateTime? inspectionDate,  String? actionCreated, @JsonKey(name: 'attachments')  List<Map<String, dynamic>>? attachments,  String? comments)?  $default,) {final _that = this;
switch (_that) {
case _RecordResponse() when $default != null:
return $default(_that.id,_that.recordID,_that.equipmentId,_that.description,_that.creditedItems,_that.recordCreatedDate,_that.inspectedComponents,_that.scheduleType,_that.status,_that.inspectionDate,_that.actionCreated,_that.attachments,_that.comments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordResponse implements RecordResponse {
  const _RecordResponse({required this.id, this.recordID, required this.equipmentId, this.description, @JsonKey(name: 'creditedItems') final  List<CreditedItem>? creditedItems, @JsonKey(name: 'recordCreatedDate') this.recordCreatedDate, @JsonKey(name: 'inspectedComponents') final  List<RecordComponent>? inspectedComponents, @JsonKey(name: 'scheduleType') final  Map<String, dynamic>? scheduleType, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) this.status, @JsonKey(name: 'inspectionDate') this.inspectionDate, this.actionCreated, @JsonKey(name: 'attachments') final  List<Map<String, dynamic>>? attachments, this.comments}): _creditedItems = creditedItems,_inspectedComponents = inspectedComponents,_scheduleType = scheduleType,_attachments = attachments;
  factory _RecordResponse.fromJson(Map<String, dynamic> json) => _$RecordResponseFromJson(json);

@override final  String id;
@override final  String? recordID;
@override final  String equipmentId;
@override final  String? description;
 final  List<CreditedItem>? _creditedItems;
@override@JsonKey(name: 'creditedItems') List<CreditedItem>? get creditedItems {
  final value = _creditedItems;
  if (value == null) return null;
  if (_creditedItems is EqualUnmodifiableListView) return _creditedItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'recordCreatedDate') final  DateTime? recordCreatedDate;
 final  List<RecordComponent>? _inspectedComponents;
@override@JsonKey(name: 'inspectedComponents') List<RecordComponent>? get inspectedComponents {
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

@override@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final  RecordStatus? status;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.recordID, recordID) || other.recordID == recordID)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._creditedItems, _creditedItems)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&const DeepCollectionEquality().equals(other._inspectedComponents, _inspectedComponents)&&const DeepCollectionEquality().equals(other._scheduleType, _scheduleType)&&(identical(other.status, status) || other.status == status)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordID,equipmentId,description,const DeepCollectionEquality().hash(_creditedItems),recordCreatedDate,const DeepCollectionEquality().hash(_inspectedComponents),const DeepCollectionEquality().hash(_scheduleType),status,inspectionDate,actionCreated,const DeepCollectionEquality().hash(_attachments),comments);

@override
String toString() {
  return 'RecordResponse(id: $id, recordID: $recordID, equipmentId: $equipmentId, description: $description, creditedItems: $creditedItems, recordCreatedDate: $recordCreatedDate, inspectedComponents: $inspectedComponents, scheduleType: $scheduleType, status: $status, inspectionDate: $inspectionDate, actionCreated: $actionCreated, attachments: $attachments, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$RecordResponseCopyWith<$Res> implements $RecordResponseCopyWith<$Res> {
  factory _$RecordResponseCopyWith(_RecordResponse value, $Res Function(_RecordResponse) _then) = __$RecordResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String? recordID, String equipmentId, String? description,@JsonKey(name: 'creditedItems') List<CreditedItem>? creditedItems,@JsonKey(name: 'recordCreatedDate') DateTime? recordCreatedDate,@JsonKey(name: 'inspectedComponents') List<RecordComponent>? inspectedComponents,@JsonKey(name: 'scheduleType') Map<String, dynamic>? scheduleType,@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) RecordStatus? status,@JsonKey(name: 'inspectionDate') DateTime? inspectionDate, String? actionCreated,@JsonKey(name: 'attachments') List<Map<String, dynamic>>? attachments, String? comments
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recordID = freezed,Object? equipmentId = null,Object? description = freezed,Object? creditedItems = freezed,Object? recordCreatedDate = freezed,Object? inspectedComponents = freezed,Object? scheduleType = freezed,Object? status = freezed,Object? inspectionDate = freezed,Object? actionCreated = freezed,Object? attachments = freezed,Object? comments = freezed,}) {
  return _then(_RecordResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recordID: freezed == recordID ? _self.recordID : recordID // ignore: cast_nullable_to_non_nullable
as String?,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,creditedItems: freezed == creditedItems ? _self._creditedItems : creditedItems // ignore: cast_nullable_to_non_nullable
as List<CreditedItem>?,recordCreatedDate: freezed == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,inspectedComponents: freezed == inspectedComponents ? _self._inspectedComponents : inspectedComponents // ignore: cast_nullable_to_non_nullable
as List<RecordComponent>?,scheduleType: freezed == scheduleType ? _self._scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RecordStatus?,inspectionDate: freezed == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,actionCreated: freezed == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
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

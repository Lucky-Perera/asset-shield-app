// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordCreateRequest {

@JsonKey(name: 'equipmentID') String get equipmentID; String get description;@JsonKey(name: 'creditedItemIDs') List<String>? get creditedItemIDs;@JsonKey(name: 'recordCreatedDate') DateTime get recordCreatedDate;@JsonKey(name: 'inspectedComponentIDs') List<String> get inspectedComponentIDs;@JsonKey(name: 'scheduleTypeID') String get scheduleTypeID;/// Use server enum names as Strings (e.g. "NEW", "COMPLETED").
 String get status;@JsonKey(name: 'inspectionDate') DateTime get inspectionDate;@JsonKey(name: 'actionCreated') String get actionCreated;@JsonKey(name: 'attachmentIDs') List<String>? get attachmentIDs; String? get comments;
/// Create a copy of RecordCreateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordCreateRequestCopyWith<RecordCreateRequest> get copyWith => _$RecordCreateRequestCopyWithImpl<RecordCreateRequest>(this as RecordCreateRequest, _$identity);

  /// Serializes this RecordCreateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordCreateRequest&&(identical(other.equipmentID, equipmentID) || other.equipmentID == equipmentID)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.creditedItemIDs, creditedItemIDs)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&const DeepCollectionEquality().equals(other.inspectedComponentIDs, inspectedComponentIDs)&&(identical(other.scheduleTypeID, scheduleTypeID) || other.scheduleTypeID == scheduleTypeID)&&(identical(other.status, status) || other.status == status)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&const DeepCollectionEquality().equals(other.attachmentIDs, attachmentIDs)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,equipmentID,description,const DeepCollectionEquality().hash(creditedItemIDs),recordCreatedDate,const DeepCollectionEquality().hash(inspectedComponentIDs),scheduleTypeID,status,inspectionDate,actionCreated,const DeepCollectionEquality().hash(attachmentIDs),comments);

@override
String toString() {
  return 'RecordCreateRequest(equipmentID: $equipmentID, description: $description, creditedItemIDs: $creditedItemIDs, recordCreatedDate: $recordCreatedDate, inspectedComponentIDs: $inspectedComponentIDs, scheduleTypeID: $scheduleTypeID, status: $status, inspectionDate: $inspectionDate, actionCreated: $actionCreated, attachmentIDs: $attachmentIDs, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $RecordCreateRequestCopyWith<$Res>  {
  factory $RecordCreateRequestCopyWith(RecordCreateRequest value, $Res Function(RecordCreateRequest) _then) = _$RecordCreateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'equipmentID') String equipmentID, String description,@JsonKey(name: 'creditedItemIDs') List<String>? creditedItemIDs,@JsonKey(name: 'recordCreatedDate') DateTime recordCreatedDate,@JsonKey(name: 'inspectedComponentIDs') List<String> inspectedComponentIDs,@JsonKey(name: 'scheduleTypeID') String scheduleTypeID, String status,@JsonKey(name: 'inspectionDate') DateTime inspectionDate,@JsonKey(name: 'actionCreated') String actionCreated,@JsonKey(name: 'attachmentIDs') List<String>? attachmentIDs, String? comments
});




}
/// @nodoc
class _$RecordCreateRequestCopyWithImpl<$Res>
    implements $RecordCreateRequestCopyWith<$Res> {
  _$RecordCreateRequestCopyWithImpl(this._self, this._then);

  final RecordCreateRequest _self;
  final $Res Function(RecordCreateRequest) _then;

/// Create a copy of RecordCreateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? equipmentID = null,Object? description = null,Object? creditedItemIDs = freezed,Object? recordCreatedDate = null,Object? inspectedComponentIDs = null,Object? scheduleTypeID = null,Object? status = null,Object? inspectionDate = null,Object? actionCreated = null,Object? attachmentIDs = freezed,Object? comments = freezed,}) {
  return _then(_self.copyWith(
equipmentID: null == equipmentID ? _self.equipmentID : equipmentID // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,creditedItemIDs: freezed == creditedItemIDs ? _self.creditedItemIDs : creditedItemIDs // ignore: cast_nullable_to_non_nullable
as List<String>?,recordCreatedDate: null == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime,inspectedComponentIDs: null == inspectedComponentIDs ? _self.inspectedComponentIDs : inspectedComponentIDs // ignore: cast_nullable_to_non_nullable
as List<String>,scheduleTypeID: null == scheduleTypeID ? _self.scheduleTypeID : scheduleTypeID // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,inspectionDate: null == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime,actionCreated: null == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String,attachmentIDs: freezed == attachmentIDs ? _self.attachmentIDs : attachmentIDs // ignore: cast_nullable_to_non_nullable
as List<String>?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordCreateRequest].
extension RecordCreateRequestPatterns on RecordCreateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordCreateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordCreateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordCreateRequest value)  $default,){
final _that = this;
switch (_that) {
case _RecordCreateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordCreateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RecordCreateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'equipmentID')  String equipmentID,  String description, @JsonKey(name: 'creditedItemIDs')  List<String>? creditedItemIDs, @JsonKey(name: 'recordCreatedDate')  DateTime recordCreatedDate, @JsonKey(name: 'inspectedComponentIDs')  List<String> inspectedComponentIDs, @JsonKey(name: 'scheduleTypeID')  String scheduleTypeID,  String status, @JsonKey(name: 'inspectionDate')  DateTime inspectionDate, @JsonKey(name: 'actionCreated')  String actionCreated, @JsonKey(name: 'attachmentIDs')  List<String>? attachmentIDs,  String? comments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordCreateRequest() when $default != null:
return $default(_that.equipmentID,_that.description,_that.creditedItemIDs,_that.recordCreatedDate,_that.inspectedComponentIDs,_that.scheduleTypeID,_that.status,_that.inspectionDate,_that.actionCreated,_that.attachmentIDs,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'equipmentID')  String equipmentID,  String description, @JsonKey(name: 'creditedItemIDs')  List<String>? creditedItemIDs, @JsonKey(name: 'recordCreatedDate')  DateTime recordCreatedDate, @JsonKey(name: 'inspectedComponentIDs')  List<String> inspectedComponentIDs, @JsonKey(name: 'scheduleTypeID')  String scheduleTypeID,  String status, @JsonKey(name: 'inspectionDate')  DateTime inspectionDate, @JsonKey(name: 'actionCreated')  String actionCreated, @JsonKey(name: 'attachmentIDs')  List<String>? attachmentIDs,  String? comments)  $default,) {final _that = this;
switch (_that) {
case _RecordCreateRequest():
return $default(_that.equipmentID,_that.description,_that.creditedItemIDs,_that.recordCreatedDate,_that.inspectedComponentIDs,_that.scheduleTypeID,_that.status,_that.inspectionDate,_that.actionCreated,_that.attachmentIDs,_that.comments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'equipmentID')  String equipmentID,  String description, @JsonKey(name: 'creditedItemIDs')  List<String>? creditedItemIDs, @JsonKey(name: 'recordCreatedDate')  DateTime recordCreatedDate, @JsonKey(name: 'inspectedComponentIDs')  List<String> inspectedComponentIDs, @JsonKey(name: 'scheduleTypeID')  String scheduleTypeID,  String status, @JsonKey(name: 'inspectionDate')  DateTime inspectionDate, @JsonKey(name: 'actionCreated')  String actionCreated, @JsonKey(name: 'attachmentIDs')  List<String>? attachmentIDs,  String? comments)?  $default,) {final _that = this;
switch (_that) {
case _RecordCreateRequest() when $default != null:
return $default(_that.equipmentID,_that.description,_that.creditedItemIDs,_that.recordCreatedDate,_that.inspectedComponentIDs,_that.scheduleTypeID,_that.status,_that.inspectionDate,_that.actionCreated,_that.attachmentIDs,_that.comments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordCreateRequest implements RecordCreateRequest {
  const _RecordCreateRequest({@JsonKey(name: 'equipmentID') required this.equipmentID, required this.description, @JsonKey(name: 'creditedItemIDs') final  List<String>? creditedItemIDs, @JsonKey(name: 'recordCreatedDate') required this.recordCreatedDate, @JsonKey(name: 'inspectedComponentIDs') required final  List<String> inspectedComponentIDs, @JsonKey(name: 'scheduleTypeID') required this.scheduleTypeID, required this.status, @JsonKey(name: 'inspectionDate') required this.inspectionDate, @JsonKey(name: 'actionCreated') required this.actionCreated, @JsonKey(name: 'attachmentIDs') final  List<String>? attachmentIDs, this.comments}): _creditedItemIDs = creditedItemIDs,_inspectedComponentIDs = inspectedComponentIDs,_attachmentIDs = attachmentIDs;
  factory _RecordCreateRequest.fromJson(Map<String, dynamic> json) => _$RecordCreateRequestFromJson(json);

@override@JsonKey(name: 'equipmentID') final  String equipmentID;
@override final  String description;
 final  List<String>? _creditedItemIDs;
@override@JsonKey(name: 'creditedItemIDs') List<String>? get creditedItemIDs {
  final value = _creditedItemIDs;
  if (value == null) return null;
  if (_creditedItemIDs is EqualUnmodifiableListView) return _creditedItemIDs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'recordCreatedDate') final  DateTime recordCreatedDate;
 final  List<String> _inspectedComponentIDs;
@override@JsonKey(name: 'inspectedComponentIDs') List<String> get inspectedComponentIDs {
  if (_inspectedComponentIDs is EqualUnmodifiableListView) return _inspectedComponentIDs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inspectedComponentIDs);
}

@override@JsonKey(name: 'scheduleTypeID') final  String scheduleTypeID;
/// Use server enum names as Strings (e.g. "NEW", "COMPLETED").
@override final  String status;
@override@JsonKey(name: 'inspectionDate') final  DateTime inspectionDate;
@override@JsonKey(name: 'actionCreated') final  String actionCreated;
 final  List<String>? _attachmentIDs;
@override@JsonKey(name: 'attachmentIDs') List<String>? get attachmentIDs {
  final value = _attachmentIDs;
  if (value == null) return null;
  if (_attachmentIDs is EqualUnmodifiableListView) return _attachmentIDs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? comments;

/// Create a copy of RecordCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordCreateRequestCopyWith<_RecordCreateRequest> get copyWith => __$RecordCreateRequestCopyWithImpl<_RecordCreateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordCreateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordCreateRequest&&(identical(other.equipmentID, equipmentID) || other.equipmentID == equipmentID)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._creditedItemIDs, _creditedItemIDs)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&const DeepCollectionEquality().equals(other._inspectedComponentIDs, _inspectedComponentIDs)&&(identical(other.scheduleTypeID, scheduleTypeID) || other.scheduleTypeID == scheduleTypeID)&&(identical(other.status, status) || other.status == status)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&const DeepCollectionEquality().equals(other._attachmentIDs, _attachmentIDs)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,equipmentID,description,const DeepCollectionEquality().hash(_creditedItemIDs),recordCreatedDate,const DeepCollectionEquality().hash(_inspectedComponentIDs),scheduleTypeID,status,inspectionDate,actionCreated,const DeepCollectionEquality().hash(_attachmentIDs),comments);

@override
String toString() {
  return 'RecordCreateRequest(equipmentID: $equipmentID, description: $description, creditedItemIDs: $creditedItemIDs, recordCreatedDate: $recordCreatedDate, inspectedComponentIDs: $inspectedComponentIDs, scheduleTypeID: $scheduleTypeID, status: $status, inspectionDate: $inspectionDate, actionCreated: $actionCreated, attachmentIDs: $attachmentIDs, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$RecordCreateRequestCopyWith<$Res> implements $RecordCreateRequestCopyWith<$Res> {
  factory _$RecordCreateRequestCopyWith(_RecordCreateRequest value, $Res Function(_RecordCreateRequest) _then) = __$RecordCreateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'equipmentID') String equipmentID, String description,@JsonKey(name: 'creditedItemIDs') List<String>? creditedItemIDs,@JsonKey(name: 'recordCreatedDate') DateTime recordCreatedDate,@JsonKey(name: 'inspectedComponentIDs') List<String> inspectedComponentIDs,@JsonKey(name: 'scheduleTypeID') String scheduleTypeID, String status,@JsonKey(name: 'inspectionDate') DateTime inspectionDate,@JsonKey(name: 'actionCreated') String actionCreated,@JsonKey(name: 'attachmentIDs') List<String>? attachmentIDs, String? comments
});




}
/// @nodoc
class __$RecordCreateRequestCopyWithImpl<$Res>
    implements _$RecordCreateRequestCopyWith<$Res> {
  __$RecordCreateRequestCopyWithImpl(this._self, this._then);

  final _RecordCreateRequest _self;
  final $Res Function(_RecordCreateRequest) _then;

/// Create a copy of RecordCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? equipmentID = null,Object? description = null,Object? creditedItemIDs = freezed,Object? recordCreatedDate = null,Object? inspectedComponentIDs = null,Object? scheduleTypeID = null,Object? status = null,Object? inspectionDate = null,Object? actionCreated = null,Object? attachmentIDs = freezed,Object? comments = freezed,}) {
  return _then(_RecordCreateRequest(
equipmentID: null == equipmentID ? _self.equipmentID : equipmentID // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,creditedItemIDs: freezed == creditedItemIDs ? _self._creditedItemIDs : creditedItemIDs // ignore: cast_nullable_to_non_nullable
as List<String>?,recordCreatedDate: null == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime,inspectedComponentIDs: null == inspectedComponentIDs ? _self._inspectedComponentIDs : inspectedComponentIDs // ignore: cast_nullable_to_non_nullable
as List<String>,scheduleTypeID: null == scheduleTypeID ? _self.scheduleTypeID : scheduleTypeID // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,inspectionDate: null == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime,actionCreated: null == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String,attachmentIDs: freezed == attachmentIDs ? _self._attachmentIDs : attachmentIDs // ignore: cast_nullable_to_non_nullable
as List<String>?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

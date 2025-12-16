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

@JsonKey(name: 'equipmentID') String get equipmentID; String get description;@JsonKey(name: 'creditedItemIDs') List<String>? get creditedItemIDs;@JsonKey(name: 'recordCreatedDate') DateTime get recordCreatedDate;@JsonKey(name: 'inspectedComponentIDs') List<String> get inspectedComponentIDs;@JsonKey(name: 'scheduleTypeID') String get scheduleTypeID;@JsonKey(name: 'inspectionDate') DateTime get inspectionDate;@JsonKey(name: 'actionCreated') String get actionCreated;@JsonKey(name: 'attachmentIDs') List<String>? get attachmentIDs; String? get comments;@JsonKey(name: 'checklistAnswers') List<ChecklistAnswerItem>? get checklistAnswers; String get submittedBy;
/// Create a copy of RecordCreateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordCreateRequestCopyWith<RecordCreateRequest> get copyWith => _$RecordCreateRequestCopyWithImpl<RecordCreateRequest>(this as RecordCreateRequest, _$identity);

  /// Serializes this RecordCreateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordCreateRequest&&(identical(other.equipmentID, equipmentID) || other.equipmentID == equipmentID)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.creditedItemIDs, creditedItemIDs)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&const DeepCollectionEquality().equals(other.inspectedComponentIDs, inspectedComponentIDs)&&(identical(other.scheduleTypeID, scheduleTypeID) || other.scheduleTypeID == scheduleTypeID)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&const DeepCollectionEquality().equals(other.attachmentIDs, attachmentIDs)&&(identical(other.comments, comments) || other.comments == comments)&&const DeepCollectionEquality().equals(other.checklistAnswers, checklistAnswers)&&(identical(other.submittedBy, submittedBy) || other.submittedBy == submittedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,equipmentID,description,const DeepCollectionEquality().hash(creditedItemIDs),recordCreatedDate,const DeepCollectionEquality().hash(inspectedComponentIDs),scheduleTypeID,inspectionDate,actionCreated,const DeepCollectionEquality().hash(attachmentIDs),comments,const DeepCollectionEquality().hash(checklistAnswers),submittedBy);

@override
String toString() {
  return 'RecordCreateRequest(equipmentID: $equipmentID, description: $description, creditedItemIDs: $creditedItemIDs, recordCreatedDate: $recordCreatedDate, inspectedComponentIDs: $inspectedComponentIDs, scheduleTypeID: $scheduleTypeID, inspectionDate: $inspectionDate, actionCreated: $actionCreated, attachmentIDs: $attachmentIDs, comments: $comments, checklistAnswers: $checklistAnswers, submittedBy: $submittedBy)';
}


}

/// @nodoc
abstract mixin class $RecordCreateRequestCopyWith<$Res>  {
  factory $RecordCreateRequestCopyWith(RecordCreateRequest value, $Res Function(RecordCreateRequest) _then) = _$RecordCreateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'equipmentID') String equipmentID, String description,@JsonKey(name: 'creditedItemIDs') List<String>? creditedItemIDs,@JsonKey(name: 'recordCreatedDate') DateTime recordCreatedDate,@JsonKey(name: 'inspectedComponentIDs') List<String> inspectedComponentIDs,@JsonKey(name: 'scheduleTypeID') String scheduleTypeID,@JsonKey(name: 'inspectionDate') DateTime inspectionDate,@JsonKey(name: 'actionCreated') String actionCreated,@JsonKey(name: 'attachmentIDs') List<String>? attachmentIDs, String? comments,@JsonKey(name: 'checklistAnswers') List<ChecklistAnswerItem>? checklistAnswers, String submittedBy
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
@pragma('vm:prefer-inline') @override $Res call({Object? equipmentID = null,Object? description = null,Object? creditedItemIDs = freezed,Object? recordCreatedDate = null,Object? inspectedComponentIDs = null,Object? scheduleTypeID = null,Object? inspectionDate = null,Object? actionCreated = null,Object? attachmentIDs = freezed,Object? comments = freezed,Object? checklistAnswers = freezed,Object? submittedBy = null,}) {
  return _then(_self.copyWith(
equipmentID: null == equipmentID ? _self.equipmentID : equipmentID // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,creditedItemIDs: freezed == creditedItemIDs ? _self.creditedItemIDs : creditedItemIDs // ignore: cast_nullable_to_non_nullable
as List<String>?,recordCreatedDate: null == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime,inspectedComponentIDs: null == inspectedComponentIDs ? _self.inspectedComponentIDs : inspectedComponentIDs // ignore: cast_nullable_to_non_nullable
as List<String>,scheduleTypeID: null == scheduleTypeID ? _self.scheduleTypeID : scheduleTypeID // ignore: cast_nullable_to_non_nullable
as String,inspectionDate: null == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime,actionCreated: null == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String,attachmentIDs: freezed == attachmentIDs ? _self.attachmentIDs : attachmentIDs // ignore: cast_nullable_to_non_nullable
as List<String>?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,checklistAnswers: freezed == checklistAnswers ? _self.checklistAnswers : checklistAnswers // ignore: cast_nullable_to_non_nullable
as List<ChecklistAnswerItem>?,submittedBy: null == submittedBy ? _self.submittedBy : submittedBy // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'equipmentID')  String equipmentID,  String description, @JsonKey(name: 'creditedItemIDs')  List<String>? creditedItemIDs, @JsonKey(name: 'recordCreatedDate')  DateTime recordCreatedDate, @JsonKey(name: 'inspectedComponentIDs')  List<String> inspectedComponentIDs, @JsonKey(name: 'scheduleTypeID')  String scheduleTypeID, @JsonKey(name: 'inspectionDate')  DateTime inspectionDate, @JsonKey(name: 'actionCreated')  String actionCreated, @JsonKey(name: 'attachmentIDs')  List<String>? attachmentIDs,  String? comments, @JsonKey(name: 'checklistAnswers')  List<ChecklistAnswerItem>? checklistAnswers,  String submittedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordCreateRequest() when $default != null:
return $default(_that.equipmentID,_that.description,_that.creditedItemIDs,_that.recordCreatedDate,_that.inspectedComponentIDs,_that.scheduleTypeID,_that.inspectionDate,_that.actionCreated,_that.attachmentIDs,_that.comments,_that.checklistAnswers,_that.submittedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'equipmentID')  String equipmentID,  String description, @JsonKey(name: 'creditedItemIDs')  List<String>? creditedItemIDs, @JsonKey(name: 'recordCreatedDate')  DateTime recordCreatedDate, @JsonKey(name: 'inspectedComponentIDs')  List<String> inspectedComponentIDs, @JsonKey(name: 'scheduleTypeID')  String scheduleTypeID, @JsonKey(name: 'inspectionDate')  DateTime inspectionDate, @JsonKey(name: 'actionCreated')  String actionCreated, @JsonKey(name: 'attachmentIDs')  List<String>? attachmentIDs,  String? comments, @JsonKey(name: 'checklistAnswers')  List<ChecklistAnswerItem>? checklistAnswers,  String submittedBy)  $default,) {final _that = this;
switch (_that) {
case _RecordCreateRequest():
return $default(_that.equipmentID,_that.description,_that.creditedItemIDs,_that.recordCreatedDate,_that.inspectedComponentIDs,_that.scheduleTypeID,_that.inspectionDate,_that.actionCreated,_that.attachmentIDs,_that.comments,_that.checklistAnswers,_that.submittedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'equipmentID')  String equipmentID,  String description, @JsonKey(name: 'creditedItemIDs')  List<String>? creditedItemIDs, @JsonKey(name: 'recordCreatedDate')  DateTime recordCreatedDate, @JsonKey(name: 'inspectedComponentIDs')  List<String> inspectedComponentIDs, @JsonKey(name: 'scheduleTypeID')  String scheduleTypeID, @JsonKey(name: 'inspectionDate')  DateTime inspectionDate, @JsonKey(name: 'actionCreated')  String actionCreated, @JsonKey(name: 'attachmentIDs')  List<String>? attachmentIDs,  String? comments, @JsonKey(name: 'checklistAnswers')  List<ChecklistAnswerItem>? checklistAnswers,  String submittedBy)?  $default,) {final _that = this;
switch (_that) {
case _RecordCreateRequest() when $default != null:
return $default(_that.equipmentID,_that.description,_that.creditedItemIDs,_that.recordCreatedDate,_that.inspectedComponentIDs,_that.scheduleTypeID,_that.inspectionDate,_that.actionCreated,_that.attachmentIDs,_that.comments,_that.checklistAnswers,_that.submittedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordCreateRequest implements RecordCreateRequest {
  const _RecordCreateRequest({@JsonKey(name: 'equipmentID') required this.equipmentID, required this.description, @JsonKey(name: 'creditedItemIDs') final  List<String>? creditedItemIDs, @JsonKey(name: 'recordCreatedDate') required this.recordCreatedDate, @JsonKey(name: 'inspectedComponentIDs') required final  List<String> inspectedComponentIDs, @JsonKey(name: 'scheduleTypeID') required this.scheduleTypeID, @JsonKey(name: 'inspectionDate') required this.inspectionDate, @JsonKey(name: 'actionCreated') required this.actionCreated, @JsonKey(name: 'attachmentIDs') final  List<String>? attachmentIDs, this.comments, @JsonKey(name: 'checklistAnswers') final  List<ChecklistAnswerItem>? checklistAnswers, required this.submittedBy}): _creditedItemIDs = creditedItemIDs,_inspectedComponentIDs = inspectedComponentIDs,_attachmentIDs = attachmentIDs,_checklistAnswers = checklistAnswers;
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
 final  List<ChecklistAnswerItem>? _checklistAnswers;
@override@JsonKey(name: 'checklistAnswers') List<ChecklistAnswerItem>? get checklistAnswers {
  final value = _checklistAnswers;
  if (value == null) return null;
  if (_checklistAnswers is EqualUnmodifiableListView) return _checklistAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String submittedBy;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordCreateRequest&&(identical(other.equipmentID, equipmentID) || other.equipmentID == equipmentID)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._creditedItemIDs, _creditedItemIDs)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&const DeepCollectionEquality().equals(other._inspectedComponentIDs, _inspectedComponentIDs)&&(identical(other.scheduleTypeID, scheduleTypeID) || other.scheduleTypeID == scheduleTypeID)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&const DeepCollectionEquality().equals(other._attachmentIDs, _attachmentIDs)&&(identical(other.comments, comments) || other.comments == comments)&&const DeepCollectionEquality().equals(other._checklistAnswers, _checklistAnswers)&&(identical(other.submittedBy, submittedBy) || other.submittedBy == submittedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,equipmentID,description,const DeepCollectionEquality().hash(_creditedItemIDs),recordCreatedDate,const DeepCollectionEquality().hash(_inspectedComponentIDs),scheduleTypeID,inspectionDate,actionCreated,const DeepCollectionEquality().hash(_attachmentIDs),comments,const DeepCollectionEquality().hash(_checklistAnswers),submittedBy);

@override
String toString() {
  return 'RecordCreateRequest(equipmentID: $equipmentID, description: $description, creditedItemIDs: $creditedItemIDs, recordCreatedDate: $recordCreatedDate, inspectedComponentIDs: $inspectedComponentIDs, scheduleTypeID: $scheduleTypeID, inspectionDate: $inspectionDate, actionCreated: $actionCreated, attachmentIDs: $attachmentIDs, comments: $comments, checklistAnswers: $checklistAnswers, submittedBy: $submittedBy)';
}


}

/// @nodoc
abstract mixin class _$RecordCreateRequestCopyWith<$Res> implements $RecordCreateRequestCopyWith<$Res> {
  factory _$RecordCreateRequestCopyWith(_RecordCreateRequest value, $Res Function(_RecordCreateRequest) _then) = __$RecordCreateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'equipmentID') String equipmentID, String description,@JsonKey(name: 'creditedItemIDs') List<String>? creditedItemIDs,@JsonKey(name: 'recordCreatedDate') DateTime recordCreatedDate,@JsonKey(name: 'inspectedComponentIDs') List<String> inspectedComponentIDs,@JsonKey(name: 'scheduleTypeID') String scheduleTypeID,@JsonKey(name: 'inspectionDate') DateTime inspectionDate,@JsonKey(name: 'actionCreated') String actionCreated,@JsonKey(name: 'attachmentIDs') List<String>? attachmentIDs, String? comments,@JsonKey(name: 'checklistAnswers') List<ChecklistAnswerItem>? checklistAnswers, String submittedBy
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
@override @pragma('vm:prefer-inline') $Res call({Object? equipmentID = null,Object? description = null,Object? creditedItemIDs = freezed,Object? recordCreatedDate = null,Object? inspectedComponentIDs = null,Object? scheduleTypeID = null,Object? inspectionDate = null,Object? actionCreated = null,Object? attachmentIDs = freezed,Object? comments = freezed,Object? checklistAnswers = freezed,Object? submittedBy = null,}) {
  return _then(_RecordCreateRequest(
equipmentID: null == equipmentID ? _self.equipmentID : equipmentID // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,creditedItemIDs: freezed == creditedItemIDs ? _self._creditedItemIDs : creditedItemIDs // ignore: cast_nullable_to_non_nullable
as List<String>?,recordCreatedDate: null == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime,inspectedComponentIDs: null == inspectedComponentIDs ? _self._inspectedComponentIDs : inspectedComponentIDs // ignore: cast_nullable_to_non_nullable
as List<String>,scheduleTypeID: null == scheduleTypeID ? _self.scheduleTypeID : scheduleTypeID // ignore: cast_nullable_to_non_nullable
as String,inspectionDate: null == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime,actionCreated: null == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String,attachmentIDs: freezed == attachmentIDs ? _self._attachmentIDs : attachmentIDs // ignore: cast_nullable_to_non_nullable
as List<String>?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,checklistAnswers: freezed == checklistAnswers ? _self._checklistAnswers : checklistAnswers // ignore: cast_nullable_to_non_nullable
as List<ChecklistAnswerItem>?,submittedBy: null == submittedBy ? _self.submittedBy : submittedBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ChecklistAnswerItem {

 String get questionId; String get value; String get note; List<String> get attachmentIds;
/// Create a copy of ChecklistAnswerItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistAnswerItemCopyWith<ChecklistAnswerItem> get copyWith => _$ChecklistAnswerItemCopyWithImpl<ChecklistAnswerItem>(this as ChecklistAnswerItem, _$identity);

  /// Serializes this ChecklistAnswerItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistAnswerItem&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other.attachmentIds, attachmentIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,value,note,const DeepCollectionEquality().hash(attachmentIds));

@override
String toString() {
  return 'ChecklistAnswerItem(questionId: $questionId, value: $value, note: $note, attachmentIds: $attachmentIds)';
}


}

/// @nodoc
abstract mixin class $ChecklistAnswerItemCopyWith<$Res>  {
  factory $ChecklistAnswerItemCopyWith(ChecklistAnswerItem value, $Res Function(ChecklistAnswerItem) _then) = _$ChecklistAnswerItemCopyWithImpl;
@useResult
$Res call({
 String questionId, String value, String note, List<String> attachmentIds
});




}
/// @nodoc
class _$ChecklistAnswerItemCopyWithImpl<$Res>
    implements $ChecklistAnswerItemCopyWith<$Res> {
  _$ChecklistAnswerItemCopyWithImpl(this._self, this._then);

  final ChecklistAnswerItem _self;
  final $Res Function(ChecklistAnswerItem) _then;

/// Create a copy of ChecklistAnswerItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? value = null,Object? note = null,Object? attachmentIds = null,}) {
  return _then(_self.copyWith(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,attachmentIds: null == attachmentIds ? _self.attachmentIds : attachmentIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistAnswerItem].
extension ChecklistAnswerItemPatterns on ChecklistAnswerItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistAnswerItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistAnswerItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistAnswerItem value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistAnswerItem value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String questionId,  String value,  String note,  List<String> attachmentIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistAnswerItem() when $default != null:
return $default(_that.questionId,_that.value,_that.note,_that.attachmentIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String questionId,  String value,  String note,  List<String> attachmentIds)  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerItem():
return $default(_that.questionId,_that.value,_that.note,_that.attachmentIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String questionId,  String value,  String note,  List<String> attachmentIds)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerItem() when $default != null:
return $default(_that.questionId,_that.value,_that.note,_that.attachmentIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistAnswerItem implements ChecklistAnswerItem {
  const _ChecklistAnswerItem({required this.questionId, required this.value, required this.note, final  List<String> attachmentIds = const []}): _attachmentIds = attachmentIds;
  factory _ChecklistAnswerItem.fromJson(Map<String, dynamic> json) => _$ChecklistAnswerItemFromJson(json);

@override final  String questionId;
@override final  String value;
@override final  String note;
 final  List<String> _attachmentIds;
@override@JsonKey() List<String> get attachmentIds {
  if (_attachmentIds is EqualUnmodifiableListView) return _attachmentIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachmentIds);
}


/// Create a copy of ChecklistAnswerItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistAnswerItemCopyWith<_ChecklistAnswerItem> get copyWith => __$ChecklistAnswerItemCopyWithImpl<_ChecklistAnswerItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistAnswerItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistAnswerItem&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other._attachmentIds, _attachmentIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,value,note,const DeepCollectionEquality().hash(_attachmentIds));

@override
String toString() {
  return 'ChecklistAnswerItem(questionId: $questionId, value: $value, note: $note, attachmentIds: $attachmentIds)';
}


}

/// @nodoc
abstract mixin class _$ChecklistAnswerItemCopyWith<$Res> implements $ChecklistAnswerItemCopyWith<$Res> {
  factory _$ChecklistAnswerItemCopyWith(_ChecklistAnswerItem value, $Res Function(_ChecklistAnswerItem) _then) = __$ChecklistAnswerItemCopyWithImpl;
@override @useResult
$Res call({
 String questionId, String value, String note, List<String> attachmentIds
});




}
/// @nodoc
class __$ChecklistAnswerItemCopyWithImpl<$Res>
    implements _$ChecklistAnswerItemCopyWith<$Res> {
  __$ChecklistAnswerItemCopyWithImpl(this._self, this._then);

  final _ChecklistAnswerItem _self;
  final $Res Function(_ChecklistAnswerItem) _then;

/// Create a copy of ChecklistAnswerItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? value = null,Object? note = null,Object? attachmentIds = null,}) {
  return _then(_ChecklistAnswerItem(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,attachmentIds: null == attachmentIds ? _self._attachmentIds : attachmentIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on

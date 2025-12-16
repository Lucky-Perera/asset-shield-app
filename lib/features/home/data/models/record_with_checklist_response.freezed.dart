// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_with_checklist_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordWithChecklistResponse {

 bool get success; RecordWithChecklistData get data; String? get message;
/// Create a copy of RecordWithChecklistResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordWithChecklistResponseCopyWith<RecordWithChecklistResponse> get copyWith => _$RecordWithChecklistResponseCopyWithImpl<RecordWithChecklistResponse>(this as RecordWithChecklistResponse, _$identity);

  /// Serializes this RecordWithChecklistResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordWithChecklistResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'RecordWithChecklistResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $RecordWithChecklistResponseCopyWith<$Res>  {
  factory $RecordWithChecklistResponseCopyWith(RecordWithChecklistResponse value, $Res Function(RecordWithChecklistResponse) _then) = _$RecordWithChecklistResponseCopyWithImpl;
@useResult
$Res call({
 bool success, RecordWithChecklistData data, String? message
});


$RecordWithChecklistDataCopyWith<$Res> get data;

}
/// @nodoc
class _$RecordWithChecklistResponseCopyWithImpl<$Res>
    implements $RecordWithChecklistResponseCopyWith<$Res> {
  _$RecordWithChecklistResponseCopyWithImpl(this._self, this._then);

  final RecordWithChecklistResponse _self;
  final $Res Function(RecordWithChecklistResponse) _then;

/// Create a copy of RecordWithChecklistResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RecordWithChecklistData,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RecordWithChecklistResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecordWithChecklistDataCopyWith<$Res> get data {
  
  return $RecordWithChecklistDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecordWithChecklistResponse].
extension RecordWithChecklistResponsePatterns on RecordWithChecklistResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordWithChecklistResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordWithChecklistResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordWithChecklistResponse value)  $default,){
final _that = this;
switch (_that) {
case _RecordWithChecklistResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordWithChecklistResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RecordWithChecklistResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  RecordWithChecklistData data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordWithChecklistResponse() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  RecordWithChecklistData data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _RecordWithChecklistResponse():
return $default(_that.success,_that.data,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  RecordWithChecklistData data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _RecordWithChecklistResponse() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordWithChecklistResponse implements RecordWithChecklistResponse {
  const _RecordWithChecklistResponse({required this.success, required this.data, this.message});
  factory _RecordWithChecklistResponse.fromJson(Map<String, dynamic> json) => _$RecordWithChecklistResponseFromJson(json);

@override final  bool success;
@override final  RecordWithChecklistData data;
@override final  String? message;

/// Create a copy of RecordWithChecklistResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordWithChecklistResponseCopyWith<_RecordWithChecklistResponse> get copyWith => __$RecordWithChecklistResponseCopyWithImpl<_RecordWithChecklistResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordWithChecklistResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordWithChecklistResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'RecordWithChecklistResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$RecordWithChecklistResponseCopyWith<$Res> implements $RecordWithChecklistResponseCopyWith<$Res> {
  factory _$RecordWithChecklistResponseCopyWith(_RecordWithChecklistResponse value, $Res Function(_RecordWithChecklistResponse) _then) = __$RecordWithChecklistResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, RecordWithChecklistData data, String? message
});


@override $RecordWithChecklistDataCopyWith<$Res> get data;

}
/// @nodoc
class __$RecordWithChecklistResponseCopyWithImpl<$Res>
    implements _$RecordWithChecklistResponseCopyWith<$Res> {
  __$RecordWithChecklistResponseCopyWithImpl(this._self, this._then);

  final _RecordWithChecklistResponse _self;
  final $Res Function(_RecordWithChecklistResponse) _then;

/// Create a copy of RecordWithChecklistResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_RecordWithChecklistResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RecordWithChecklistData,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RecordWithChecklistResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecordWithChecklistDataCopyWith<$Res> get data {
  
  return $RecordWithChecklistDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$RecordWithChecklistData {

 RecordResponse get record; List<ChecklistQuestionItem> get answeredQuestions;
/// Create a copy of RecordWithChecklistData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordWithChecklistDataCopyWith<RecordWithChecklistData> get copyWith => _$RecordWithChecklistDataCopyWithImpl<RecordWithChecklistData>(this as RecordWithChecklistData, _$identity);

  /// Serializes this RecordWithChecklistData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordWithChecklistData&&(identical(other.record, record) || other.record == record)&&const DeepCollectionEquality().equals(other.answeredQuestions, answeredQuestions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,record,const DeepCollectionEquality().hash(answeredQuestions));

@override
String toString() {
  return 'RecordWithChecklistData(record: $record, answeredQuestions: $answeredQuestions)';
}


}

/// @nodoc
abstract mixin class $RecordWithChecklistDataCopyWith<$Res>  {
  factory $RecordWithChecklistDataCopyWith(RecordWithChecklistData value, $Res Function(RecordWithChecklistData) _then) = _$RecordWithChecklistDataCopyWithImpl;
@useResult
$Res call({
 RecordResponse record, List<ChecklistQuestionItem> answeredQuestions
});


$RecordResponseCopyWith<$Res> get record;

}
/// @nodoc
class _$RecordWithChecklistDataCopyWithImpl<$Res>
    implements $RecordWithChecklistDataCopyWith<$Res> {
  _$RecordWithChecklistDataCopyWithImpl(this._self, this._then);

  final RecordWithChecklistData _self;
  final $Res Function(RecordWithChecklistData) _then;

/// Create a copy of RecordWithChecklistData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? record = null,Object? answeredQuestions = null,}) {
  return _then(_self.copyWith(
record: null == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as RecordResponse,answeredQuestions: null == answeredQuestions ? _self.answeredQuestions : answeredQuestions // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionItem>,
  ));
}
/// Create a copy of RecordWithChecklistData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecordResponseCopyWith<$Res> get record {
  
  return $RecordResponseCopyWith<$Res>(_self.record, (value) {
    return _then(_self.copyWith(record: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecordWithChecklistData].
extension RecordWithChecklistDataPatterns on RecordWithChecklistData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordWithChecklistData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordWithChecklistData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordWithChecklistData value)  $default,){
final _that = this;
switch (_that) {
case _RecordWithChecklistData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordWithChecklistData value)?  $default,){
final _that = this;
switch (_that) {
case _RecordWithChecklistData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RecordResponse record,  List<ChecklistQuestionItem> answeredQuestions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordWithChecklistData() when $default != null:
return $default(_that.record,_that.answeredQuestions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RecordResponse record,  List<ChecklistQuestionItem> answeredQuestions)  $default,) {final _that = this;
switch (_that) {
case _RecordWithChecklistData():
return $default(_that.record,_that.answeredQuestions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RecordResponse record,  List<ChecklistQuestionItem> answeredQuestions)?  $default,) {final _that = this;
switch (_that) {
case _RecordWithChecklistData() when $default != null:
return $default(_that.record,_that.answeredQuestions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordWithChecklistData implements RecordWithChecklistData {
  const _RecordWithChecklistData({required this.record, required final  List<ChecklistQuestionItem> answeredQuestions}): _answeredQuestions = answeredQuestions;
  factory _RecordWithChecklistData.fromJson(Map<String, dynamic> json) => _$RecordWithChecklistDataFromJson(json);

@override final  RecordResponse record;
 final  List<ChecklistQuestionItem> _answeredQuestions;
@override List<ChecklistQuestionItem> get answeredQuestions {
  if (_answeredQuestions is EqualUnmodifiableListView) return _answeredQuestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answeredQuestions);
}


/// Create a copy of RecordWithChecklistData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordWithChecklistDataCopyWith<_RecordWithChecklistData> get copyWith => __$RecordWithChecklistDataCopyWithImpl<_RecordWithChecklistData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordWithChecklistDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordWithChecklistData&&(identical(other.record, record) || other.record == record)&&const DeepCollectionEquality().equals(other._answeredQuestions, _answeredQuestions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,record,const DeepCollectionEquality().hash(_answeredQuestions));

@override
String toString() {
  return 'RecordWithChecklistData(record: $record, answeredQuestions: $answeredQuestions)';
}


}

/// @nodoc
abstract mixin class _$RecordWithChecklistDataCopyWith<$Res> implements $RecordWithChecklistDataCopyWith<$Res> {
  factory _$RecordWithChecklistDataCopyWith(_RecordWithChecklistData value, $Res Function(_RecordWithChecklistData) _then) = __$RecordWithChecklistDataCopyWithImpl;
@override @useResult
$Res call({
 RecordResponse record, List<ChecklistQuestionItem> answeredQuestions
});


@override $RecordResponseCopyWith<$Res> get record;

}
/// @nodoc
class __$RecordWithChecklistDataCopyWithImpl<$Res>
    implements _$RecordWithChecklistDataCopyWith<$Res> {
  __$RecordWithChecklistDataCopyWithImpl(this._self, this._then);

  final _RecordWithChecklistData _self;
  final $Res Function(_RecordWithChecklistData) _then;

/// Create a copy of RecordWithChecklistData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? record = null,Object? answeredQuestions = null,}) {
  return _then(_RecordWithChecklistData(
record: null == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as RecordResponse,answeredQuestions: null == answeredQuestions ? _self._answeredQuestions : answeredQuestions // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionItem>,
  ));
}

/// Create a copy of RecordWithChecklistData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecordResponseCopyWith<$Res> get record {
  
  return $RecordResponseCopyWith<$Res>(_self.record, (value) {
    return _then(_self.copyWith(record: value));
  });
}
}


/// @nodoc
mixin _$ChecklistQuestionItem {

 String get id; String get scheduleId; String get inspectionType; String get question; String? get helpText; String get responseType; bool get isDeleted; String? get section; int? get order; String? get value; String? get note; DateTime? get completedAt; List<AttachmentV2>? get attachments;// Legacy nested answer (keeping for backward compatibility)
 ChecklistAnswer? get checklistAnswer;
/// Create a copy of ChecklistQuestionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistQuestionItemCopyWith<ChecklistQuestionItem> get copyWith => _$ChecklistQuestionItemCopyWithImpl<ChecklistQuestionItem>(this as ChecklistQuestionItem, _$identity);

  /// Serializes this ChecklistQuestionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistQuestionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.inspectionType, inspectionType) || other.inspectionType == inspectionType)&&(identical(other.question, question) || other.question == question)&&(identical(other.helpText, helpText) || other.helpText == helpText)&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.section, section) || other.section == section)&&(identical(other.order, order) || other.order == order)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.checklistAnswer, checklistAnswer) || other.checklistAnswer == checklistAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleId,inspectionType,question,helpText,responseType,isDeleted,section,order,value,note,completedAt,const DeepCollectionEquality().hash(attachments),checklistAnswer);

@override
String toString() {
  return 'ChecklistQuestionItem(id: $id, scheduleId: $scheduleId, inspectionType: $inspectionType, question: $question, helpText: $helpText, responseType: $responseType, isDeleted: $isDeleted, section: $section, order: $order, value: $value, note: $note, completedAt: $completedAt, attachments: $attachments, checklistAnswer: $checklistAnswer)';
}


}

/// @nodoc
abstract mixin class $ChecklistQuestionItemCopyWith<$Res>  {
  factory $ChecklistQuestionItemCopyWith(ChecklistQuestionItem value, $Res Function(ChecklistQuestionItem) _then) = _$ChecklistQuestionItemCopyWithImpl;
@useResult
$Res call({
 String id, String scheduleId, String inspectionType, String question, String? helpText, String responseType, bool isDeleted, String? section, int? order, String? value, String? note, DateTime? completedAt, List<AttachmentV2>? attachments, ChecklistAnswer? checklistAnswer
});


$ChecklistAnswerCopyWith<$Res>? get checklistAnswer;

}
/// @nodoc
class _$ChecklistQuestionItemCopyWithImpl<$Res>
    implements $ChecklistQuestionItemCopyWith<$Res> {
  _$ChecklistQuestionItemCopyWithImpl(this._self, this._then);

  final ChecklistQuestionItem _self;
  final $Res Function(ChecklistQuestionItem) _then;

/// Create a copy of ChecklistQuestionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? scheduleId = null,Object? inspectionType = null,Object? question = null,Object? helpText = freezed,Object? responseType = null,Object? isDeleted = null,Object? section = freezed,Object? order = freezed,Object? value = freezed,Object? note = freezed,Object? completedAt = freezed,Object? attachments = freezed,Object? checklistAnswer = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,inspectionType: null == inspectionType ? _self.inspectionType : inspectionType // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,helpText: freezed == helpText ? _self.helpText : helpText // ignore: cast_nullable_to_non_nullable
as String?,responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>?,checklistAnswer: freezed == checklistAnswer ? _self.checklistAnswer : checklistAnswer // ignore: cast_nullable_to_non_nullable
as ChecklistAnswer?,
  ));
}
/// Create a copy of ChecklistQuestionItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChecklistAnswerCopyWith<$Res>? get checklistAnswer {
    if (_self.checklistAnswer == null) {
    return null;
  }

  return $ChecklistAnswerCopyWith<$Res>(_self.checklistAnswer!, (value) {
    return _then(_self.copyWith(checklistAnswer: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChecklistQuestionItem].
extension ChecklistQuestionItemPatterns on ChecklistQuestionItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistQuestionItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistQuestionItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistQuestionItem value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistQuestionItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistQuestionItem value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistQuestionItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String scheduleId,  String inspectionType,  String question,  String? helpText,  String responseType,  bool isDeleted,  String? section,  int? order,  String? value,  String? note,  DateTime? completedAt,  List<AttachmentV2>? attachments,  ChecklistAnswer? checklistAnswer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistQuestionItem() when $default != null:
return $default(_that.id,_that.scheduleId,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.isDeleted,_that.section,_that.order,_that.value,_that.note,_that.completedAt,_that.attachments,_that.checklistAnswer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String scheduleId,  String inspectionType,  String question,  String? helpText,  String responseType,  bool isDeleted,  String? section,  int? order,  String? value,  String? note,  DateTime? completedAt,  List<AttachmentV2>? attachments,  ChecklistAnswer? checklistAnswer)  $default,) {final _that = this;
switch (_that) {
case _ChecklistQuestionItem():
return $default(_that.id,_that.scheduleId,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.isDeleted,_that.section,_that.order,_that.value,_that.note,_that.completedAt,_that.attachments,_that.checklistAnswer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String scheduleId,  String inspectionType,  String question,  String? helpText,  String responseType,  bool isDeleted,  String? section,  int? order,  String? value,  String? note,  DateTime? completedAt,  List<AttachmentV2>? attachments,  ChecklistAnswer? checklistAnswer)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistQuestionItem() when $default != null:
return $default(_that.id,_that.scheduleId,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.isDeleted,_that.section,_that.order,_that.value,_that.note,_that.completedAt,_that.attachments,_that.checklistAnswer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistQuestionItem implements ChecklistQuestionItem {
  const _ChecklistQuestionItem({required this.id, required this.scheduleId, required this.inspectionType, required this.question, this.helpText, required this.responseType, required this.isDeleted, this.section, this.order, this.value, this.note, this.completedAt, final  List<AttachmentV2>? attachments, this.checklistAnswer}): _attachments = attachments;
  factory _ChecklistQuestionItem.fromJson(Map<String, dynamic> json) => _$ChecklistQuestionItemFromJson(json);

@override final  String id;
@override final  String scheduleId;
@override final  String inspectionType;
@override final  String question;
@override final  String? helpText;
@override final  String responseType;
@override final  bool isDeleted;
@override final  String? section;
@override final  int? order;
@override final  String? value;
@override final  String? note;
@override final  DateTime? completedAt;
 final  List<AttachmentV2>? _attachments;
@override List<AttachmentV2>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Legacy nested answer (keeping for backward compatibility)
@override final  ChecklistAnswer? checklistAnswer;

/// Create a copy of ChecklistQuestionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistQuestionItemCopyWith<_ChecklistQuestionItem> get copyWith => __$ChecklistQuestionItemCopyWithImpl<_ChecklistQuestionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistQuestionItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistQuestionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.inspectionType, inspectionType) || other.inspectionType == inspectionType)&&(identical(other.question, question) || other.question == question)&&(identical(other.helpText, helpText) || other.helpText == helpText)&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.section, section) || other.section == section)&&(identical(other.order, order) || other.order == order)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.checklistAnswer, checklistAnswer) || other.checklistAnswer == checklistAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleId,inspectionType,question,helpText,responseType,isDeleted,section,order,value,note,completedAt,const DeepCollectionEquality().hash(_attachments),checklistAnswer);

@override
String toString() {
  return 'ChecklistQuestionItem(id: $id, scheduleId: $scheduleId, inspectionType: $inspectionType, question: $question, helpText: $helpText, responseType: $responseType, isDeleted: $isDeleted, section: $section, order: $order, value: $value, note: $note, completedAt: $completedAt, attachments: $attachments, checklistAnswer: $checklistAnswer)';
}


}

/// @nodoc
abstract mixin class _$ChecklistQuestionItemCopyWith<$Res> implements $ChecklistQuestionItemCopyWith<$Res> {
  factory _$ChecklistQuestionItemCopyWith(_ChecklistQuestionItem value, $Res Function(_ChecklistQuestionItem) _then) = __$ChecklistQuestionItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String scheduleId, String inspectionType, String question, String? helpText, String responseType, bool isDeleted, String? section, int? order, String? value, String? note, DateTime? completedAt, List<AttachmentV2>? attachments, ChecklistAnswer? checklistAnswer
});


@override $ChecklistAnswerCopyWith<$Res>? get checklistAnswer;

}
/// @nodoc
class __$ChecklistQuestionItemCopyWithImpl<$Res>
    implements _$ChecklistQuestionItemCopyWith<$Res> {
  __$ChecklistQuestionItemCopyWithImpl(this._self, this._then);

  final _ChecklistQuestionItem _self;
  final $Res Function(_ChecklistQuestionItem) _then;

/// Create a copy of ChecklistQuestionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? scheduleId = null,Object? inspectionType = null,Object? question = null,Object? helpText = freezed,Object? responseType = null,Object? isDeleted = null,Object? section = freezed,Object? order = freezed,Object? value = freezed,Object? note = freezed,Object? completedAt = freezed,Object? attachments = freezed,Object? checklistAnswer = freezed,}) {
  return _then(_ChecklistQuestionItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,inspectionType: null == inspectionType ? _self.inspectionType : inspectionType // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,helpText: freezed == helpText ? _self.helpText : helpText // ignore: cast_nullable_to_non_nullable
as String?,responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>?,checklistAnswer: freezed == checklistAnswer ? _self.checklistAnswer : checklistAnswer // ignore: cast_nullable_to_non_nullable
as ChecklistAnswer?,
  ));
}

/// Create a copy of ChecklistQuestionItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChecklistAnswerCopyWith<$Res>? get checklistAnswer {
    if (_self.checklistAnswer == null) {
    return null;
  }

  return $ChecklistAnswerCopyWith<$Res>(_self.checklistAnswer!, (value) {
    return _then(_self.copyWith(checklistAnswer: value));
  });
}
}


/// @nodoc
mixin _$ChecklistAnswer {

 String get id; String? get value; String? get note; DateTime? get completedAt; String get recordId; String get questionId; List<AttachmentV2>? get attachments;
/// Create a copy of ChecklistAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistAnswerCopyWith<ChecklistAnswer> get copyWith => _$ChecklistAnswerCopyWithImpl<ChecklistAnswer>(this as ChecklistAnswer, _$identity);

  /// Serializes this ChecklistAnswer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&const DeepCollectionEquality().equals(other.attachments, attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,note,completedAt,recordId,questionId,const DeepCollectionEquality().hash(attachments));

@override
String toString() {
  return 'ChecklistAnswer(id: $id, value: $value, note: $note, completedAt: $completedAt, recordId: $recordId, questionId: $questionId, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class $ChecklistAnswerCopyWith<$Res>  {
  factory $ChecklistAnswerCopyWith(ChecklistAnswer value, $Res Function(ChecklistAnswer) _then) = _$ChecklistAnswerCopyWithImpl;
@useResult
$Res call({
 String id, String? value, String? note, DateTime? completedAt, String recordId, String questionId, List<AttachmentV2>? attachments
});




}
/// @nodoc
class _$ChecklistAnswerCopyWithImpl<$Res>
    implements $ChecklistAnswerCopyWith<$Res> {
  _$ChecklistAnswerCopyWithImpl(this._self, this._then);

  final ChecklistAnswer _self;
  final $Res Function(ChecklistAnswer) _then;

/// Create a copy of ChecklistAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? value = freezed,Object? note = freezed,Object? completedAt = freezed,Object? recordId = null,Object? questionId = null,Object? attachments = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistAnswer].
extension ChecklistAnswerPatterns on ChecklistAnswer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistAnswer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistAnswer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistAnswer value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistAnswer value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? value,  String? note,  DateTime? completedAt,  String recordId,  String questionId,  List<AttachmentV2>? attachments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistAnswer() when $default != null:
return $default(_that.id,_that.value,_that.note,_that.completedAt,_that.recordId,_that.questionId,_that.attachments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? value,  String? note,  DateTime? completedAt,  String recordId,  String questionId,  List<AttachmentV2>? attachments)  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswer():
return $default(_that.id,_that.value,_that.note,_that.completedAt,_that.recordId,_that.questionId,_that.attachments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? value,  String? note,  DateTime? completedAt,  String recordId,  String questionId,  List<AttachmentV2>? attachments)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswer() when $default != null:
return $default(_that.id,_that.value,_that.note,_that.completedAt,_that.recordId,_that.questionId,_that.attachments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistAnswer implements ChecklistAnswer {
  const _ChecklistAnswer({required this.id, this.value, this.note, this.completedAt, required this.recordId, required this.questionId, final  List<AttachmentV2>? attachments}): _attachments = attachments;
  factory _ChecklistAnswer.fromJson(Map<String, dynamic> json) => _$ChecklistAnswerFromJson(json);

@override final  String id;
@override final  String? value;
@override final  String? note;
@override final  DateTime? completedAt;
@override final  String recordId;
@override final  String questionId;
 final  List<AttachmentV2>? _attachments;
@override List<AttachmentV2>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ChecklistAnswer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistAnswerCopyWith<_ChecklistAnswer> get copyWith => __$ChecklistAnswerCopyWithImpl<_ChecklistAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistAnswerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&const DeepCollectionEquality().equals(other._attachments, _attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,note,completedAt,recordId,questionId,const DeepCollectionEquality().hash(_attachments));

@override
String toString() {
  return 'ChecklistAnswer(id: $id, value: $value, note: $note, completedAt: $completedAt, recordId: $recordId, questionId: $questionId, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class _$ChecklistAnswerCopyWith<$Res> implements $ChecklistAnswerCopyWith<$Res> {
  factory _$ChecklistAnswerCopyWith(_ChecklistAnswer value, $Res Function(_ChecklistAnswer) _then) = __$ChecklistAnswerCopyWithImpl;
@override @useResult
$Res call({
 String id, String? value, String? note, DateTime? completedAt, String recordId, String questionId, List<AttachmentV2>? attachments
});




}
/// @nodoc
class __$ChecklistAnswerCopyWithImpl<$Res>
    implements _$ChecklistAnswerCopyWith<$Res> {
  __$ChecklistAnswerCopyWithImpl(this._self, this._then);

  final _ChecklistAnswer _self;
  final $Res Function(_ChecklistAnswer) _then;

/// Create a copy of ChecklistAnswer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? value = freezed,Object? note = freezed,Object? completedAt = freezed,Object? recordId = null,Object? questionId = null,Object? attachments = freezed,}) {
  return _then(_ChecklistAnswer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>?,
  ));
}


}

// dart format on

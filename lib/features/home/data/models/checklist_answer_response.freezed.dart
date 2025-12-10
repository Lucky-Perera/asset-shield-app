// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_answer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChecklistAnswerResponse {

 bool get success; String? get message; List<ChecklistQuestionItem> get data;
/// Create a copy of ChecklistAnswerResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistAnswerResponseCopyWith<ChecklistAnswerResponse> get copyWith => _$ChecklistAnswerResponseCopyWithImpl<ChecklistAnswerResponse>(this as ChecklistAnswerResponse, _$identity);

  /// Serializes this ChecklistAnswerResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistAnswerResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ChecklistAnswerResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ChecklistAnswerResponseCopyWith<$Res>  {
  factory $ChecklistAnswerResponseCopyWith(ChecklistAnswerResponse value, $Res Function(ChecklistAnswerResponse) _then) = _$ChecklistAnswerResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String? message, List<ChecklistQuestionItem> data
});




}
/// @nodoc
class _$ChecklistAnswerResponseCopyWithImpl<$Res>
    implements $ChecklistAnswerResponseCopyWith<$Res> {
  _$ChecklistAnswerResponseCopyWithImpl(this._self, this._then);

  final ChecklistAnswerResponse _self;
  final $Res Function(ChecklistAnswerResponse) _then;

/// Create a copy of ChecklistAnswerResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistAnswerResponse].
extension ChecklistAnswerResponsePatterns on ChecklistAnswerResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistAnswerResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistAnswerResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistAnswerResponse value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistAnswerResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? message,  List<ChecklistQuestionItem> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistAnswerResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? message,  List<ChecklistQuestionItem> data)  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerResponse():
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? message,  List<ChecklistQuestionItem> data)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistAnswerResponse implements ChecklistAnswerResponse {
  const _ChecklistAnswerResponse({required this.success, this.message, required final  List<ChecklistQuestionItem> data}): _data = data;
  factory _ChecklistAnswerResponse.fromJson(Map<String, dynamic> json) => _$ChecklistAnswerResponseFromJson(json);

@override final  bool success;
@override final  String? message;
 final  List<ChecklistQuestionItem> _data;
@override List<ChecklistQuestionItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ChecklistAnswerResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistAnswerResponseCopyWith<_ChecklistAnswerResponse> get copyWith => __$ChecklistAnswerResponseCopyWithImpl<_ChecklistAnswerResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistAnswerResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistAnswerResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ChecklistAnswerResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ChecklistAnswerResponseCopyWith<$Res> implements $ChecklistAnswerResponseCopyWith<$Res> {
  factory _$ChecklistAnswerResponseCopyWith(_ChecklistAnswerResponse value, $Res Function(_ChecklistAnswerResponse) _then) = __$ChecklistAnswerResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? message, List<ChecklistQuestionItem> data
});




}
/// @nodoc
class __$ChecklistAnswerResponseCopyWithImpl<$Res>
    implements _$ChecklistAnswerResponseCopyWith<$Res> {
  __$ChecklistAnswerResponseCopyWithImpl(this._self, this._then);

  final _ChecklistAnswerResponse _self;
  final $Res Function(_ChecklistAnswerResponse) _then;

/// Create a copy of ChecklistAnswerResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_ChecklistAnswerResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionItem>,
  ));
}


}


/// @nodoc
mixin _$ChecklistQuestionItem {

 String get id; String get scheduleId; String get inspectionType; String get question; String? get helpText; String get responseType; bool get isDeleted; String? get section; int? get order;// Answer fields - these come directly on the response when answered
 String? get value; String? get note; DateTime? get completedAt; List<AttachmentV2>? get attachments;// Legacy nested answer (keeping for backward compatibility)
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
// Answer fields - these come directly on the response when answered
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


/// @nodoc
mixin _$AttachmentV2 {

 String get id; String get documentID; String get name; String get url; String? get description; String? get comments; String? get equipmentId; String? get scheduleId; String? get scopeImageScheduleId; String? get checklistAnswerId; String? get recordId; bool? get isDeleted; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of AttachmentV2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttachmentV2CopyWith<AttachmentV2> get copyWith => _$AttachmentV2CopyWithImpl<AttachmentV2>(this as AttachmentV2, _$identity);

  /// Serializes this AttachmentV2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttachmentV2&&(identical(other.id, id) || other.id == id)&&(identical(other.documentID, documentID) || other.documentID == documentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.scopeImageScheduleId, scopeImageScheduleId) || other.scopeImageScheduleId == scopeImageScheduleId)&&(identical(other.checklistAnswerId, checklistAnswerId) || other.checklistAnswerId == checklistAnswerId)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,documentID,name,url,description,comments,equipmentId,scheduleId,scopeImageScheduleId,checklistAnswerId,recordId,isDeleted,createdAt,updatedAt);

@override
String toString() {
  return 'AttachmentV2(id: $id, documentID: $documentID, name: $name, url: $url, description: $description, comments: $comments, equipmentId: $equipmentId, scheduleId: $scheduleId, scopeImageScheduleId: $scopeImageScheduleId, checklistAnswerId: $checklistAnswerId, recordId: $recordId, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AttachmentV2CopyWith<$Res>  {
  factory $AttachmentV2CopyWith(AttachmentV2 value, $Res Function(AttachmentV2) _then) = _$AttachmentV2CopyWithImpl;
@useResult
$Res call({
 String id, String documentID, String name, String url, String? description, String? comments, String? equipmentId, String? scheduleId, String? scopeImageScheduleId, String? checklistAnswerId, String? recordId, bool? isDeleted, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$AttachmentV2CopyWithImpl<$Res>
    implements $AttachmentV2CopyWith<$Res> {
  _$AttachmentV2CopyWithImpl(this._self, this._then);

  final AttachmentV2 _self;
  final $Res Function(AttachmentV2) _then;

/// Create a copy of AttachmentV2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? documentID = null,Object? name = null,Object? url = null,Object? description = freezed,Object? comments = freezed,Object? equipmentId = freezed,Object? scheduleId = freezed,Object? scopeImageScheduleId = freezed,Object? checklistAnswerId = freezed,Object? recordId = freezed,Object? isDeleted = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,documentID: null == documentID ? _self.documentID : documentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,scopeImageScheduleId: freezed == scopeImageScheduleId ? _self.scopeImageScheduleId : scopeImageScheduleId // ignore: cast_nullable_to_non_nullable
as String?,checklistAnswerId: freezed == checklistAnswerId ? _self.checklistAnswerId : checklistAnswerId // ignore: cast_nullable_to_non_nullable
as String?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AttachmentV2].
extension AttachmentV2Patterns on AttachmentV2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttachmentV2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttachmentV2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttachmentV2 value)  $default,){
final _that = this;
switch (_that) {
case _AttachmentV2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttachmentV2 value)?  $default,){
final _that = this;
switch (_that) {
case _AttachmentV2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String documentID,  String name,  String url,  String? description,  String? comments,  String? equipmentId,  String? scheduleId,  String? scopeImageScheduleId,  String? checklistAnswerId,  String? recordId,  bool? isDeleted,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttachmentV2() when $default != null:
return $default(_that.id,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.equipmentId,_that.scheduleId,_that.scopeImageScheduleId,_that.checklistAnswerId,_that.recordId,_that.isDeleted,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String documentID,  String name,  String url,  String? description,  String? comments,  String? equipmentId,  String? scheduleId,  String? scopeImageScheduleId,  String? checklistAnswerId,  String? recordId,  bool? isDeleted,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AttachmentV2():
return $default(_that.id,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.equipmentId,_that.scheduleId,_that.scopeImageScheduleId,_that.checklistAnswerId,_that.recordId,_that.isDeleted,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String documentID,  String name,  String url,  String? description,  String? comments,  String? equipmentId,  String? scheduleId,  String? scopeImageScheduleId,  String? checklistAnswerId,  String? recordId,  bool? isDeleted,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AttachmentV2() when $default != null:
return $default(_that.id,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.equipmentId,_that.scheduleId,_that.scopeImageScheduleId,_that.checklistAnswerId,_that.recordId,_that.isDeleted,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttachmentV2 implements AttachmentV2 {
  const _AttachmentV2({required this.id, required this.documentID, required this.name, required this.url, this.description, this.comments, this.equipmentId, this.scheduleId, this.scopeImageScheduleId, this.checklistAnswerId, this.recordId, this.isDeleted, required this.createdAt, required this.updatedAt});
  factory _AttachmentV2.fromJson(Map<String, dynamic> json) => _$AttachmentV2FromJson(json);

@override final  String id;
@override final  String documentID;
@override final  String name;
@override final  String url;
@override final  String? description;
@override final  String? comments;
@override final  String? equipmentId;
@override final  String? scheduleId;
@override final  String? scopeImageScheduleId;
@override final  String? checklistAnswerId;
@override final  String? recordId;
@override final  bool? isDeleted;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of AttachmentV2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttachmentV2CopyWith<_AttachmentV2> get copyWith => __$AttachmentV2CopyWithImpl<_AttachmentV2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttachmentV2ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttachmentV2&&(identical(other.id, id) || other.id == id)&&(identical(other.documentID, documentID) || other.documentID == documentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.scopeImageScheduleId, scopeImageScheduleId) || other.scopeImageScheduleId == scopeImageScheduleId)&&(identical(other.checklistAnswerId, checklistAnswerId) || other.checklistAnswerId == checklistAnswerId)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,documentID,name,url,description,comments,equipmentId,scheduleId,scopeImageScheduleId,checklistAnswerId,recordId,isDeleted,createdAt,updatedAt);

@override
String toString() {
  return 'AttachmentV2(id: $id, documentID: $documentID, name: $name, url: $url, description: $description, comments: $comments, equipmentId: $equipmentId, scheduleId: $scheduleId, scopeImageScheduleId: $scopeImageScheduleId, checklistAnswerId: $checklistAnswerId, recordId: $recordId, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AttachmentV2CopyWith<$Res> implements $AttachmentV2CopyWith<$Res> {
  factory _$AttachmentV2CopyWith(_AttachmentV2 value, $Res Function(_AttachmentV2) _then) = __$AttachmentV2CopyWithImpl;
@override @useResult
$Res call({
 String id, String documentID, String name, String url, String? description, String? comments, String? equipmentId, String? scheduleId, String? scopeImageScheduleId, String? checklistAnswerId, String? recordId, bool? isDeleted, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$AttachmentV2CopyWithImpl<$Res>
    implements _$AttachmentV2CopyWith<$Res> {
  __$AttachmentV2CopyWithImpl(this._self, this._then);

  final _AttachmentV2 _self;
  final $Res Function(_AttachmentV2) _then;

/// Create a copy of AttachmentV2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? documentID = null,Object? name = null,Object? url = null,Object? description = freezed,Object? comments = freezed,Object? equipmentId = freezed,Object? scheduleId = freezed,Object? scopeImageScheduleId = freezed,Object? checklistAnswerId = freezed,Object? recordId = freezed,Object? isDeleted = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_AttachmentV2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,documentID: null == documentID ? _self.documentID : documentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,scopeImageScheduleId: freezed == scopeImageScheduleId ? _self.scopeImageScheduleId : scopeImageScheduleId // ignore: cast_nullable_to_non_nullable
as String?,checklistAnswerId: freezed == checklistAnswerId ? _self.checklistAnswerId : checklistAnswerId // ignore: cast_nullable_to_non_nullable
as String?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

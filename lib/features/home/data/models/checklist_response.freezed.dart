// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChecklistResponse {

 bool get success; List<ChecklistQuestion>? get data;
/// Create a copy of ChecklistResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistResponseCopyWith<ChecklistResponse> get copyWith => _$ChecklistResponseCopyWithImpl<ChecklistResponse>(this as ChecklistResponse, _$identity);

  /// Serializes this ChecklistResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ChecklistResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ChecklistResponseCopyWith<$Res>  {
  factory $ChecklistResponseCopyWith(ChecklistResponse value, $Res Function(ChecklistResponse) _then) = _$ChecklistResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<ChecklistQuestion>? data
});




}
/// @nodoc
class _$ChecklistResponseCopyWithImpl<$Res>
    implements $ChecklistResponseCopyWith<$Res> {
  _$ChecklistResponseCopyWithImpl(this._self, this._then);

  final ChecklistResponse _self;
  final $Res Function(ChecklistResponse) _then;

/// Create a copy of ChecklistResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestion>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistResponse].
extension ChecklistResponsePatterns on ChecklistResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistResponse value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<ChecklistQuestion>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistResponse() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<ChecklistQuestion>? data)  $default,) {final _that = this;
switch (_that) {
case _ChecklistResponse():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<ChecklistQuestion>? data)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistResponse implements ChecklistResponse {
  const _ChecklistResponse({required this.success, final  List<ChecklistQuestion>? data}): _data = data;
  factory _ChecklistResponse.fromJson(Map<String, dynamic> json) => _$ChecklistResponseFromJson(json);

@override final  bool success;
 final  List<ChecklistQuestion>? _data;
@override List<ChecklistQuestion>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ChecklistResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistResponseCopyWith<_ChecklistResponse> get copyWith => __$ChecklistResponseCopyWithImpl<_ChecklistResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ChecklistResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ChecklistResponseCopyWith<$Res> implements $ChecklistResponseCopyWith<$Res> {
  factory _$ChecklistResponseCopyWith(_ChecklistResponse value, $Res Function(_ChecklistResponse) _then) = __$ChecklistResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<ChecklistQuestion>? data
});




}
/// @nodoc
class __$ChecklistResponseCopyWithImpl<$Res>
    implements _$ChecklistResponseCopyWith<$Res> {
  __$ChecklistResponseCopyWithImpl(this._self, this._then);

  final _ChecklistResponse _self;
  final $Res Function(_ChecklistResponse) _then;

/// Create a copy of ChecklistResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_ChecklistResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestion>?,
  ));
}


}


/// @nodoc
mixin _$ChecklistQuestion {

 String get id; String get scheduleV2Id; String? get inspectionType; String get question; String? get helpText; String get responseType; String? get value; String? get note; DateTime? get completedAt; String? get completedById; bool? get isDeleted;
/// Create a copy of ChecklistQuestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistQuestionCopyWith<ChecklistQuestion> get copyWith => _$ChecklistQuestionCopyWithImpl<ChecklistQuestion>(this as ChecklistQuestion, _$identity);

  /// Serializes this ChecklistQuestion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.inspectionType, inspectionType) || other.inspectionType == inspectionType)&&(identical(other.question, question) || other.question == question)&&(identical(other.helpText, helpText) || other.helpText == helpText)&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completedById, completedById) || other.completedById == completedById)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleV2Id,inspectionType,question,helpText,responseType,value,note,completedAt,completedById,isDeleted);

@override
String toString() {
  return 'ChecklistQuestion(id: $id, scheduleV2Id: $scheduleV2Id, inspectionType: $inspectionType, question: $question, helpText: $helpText, responseType: $responseType, value: $value, note: $note, completedAt: $completedAt, completedById: $completedById, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $ChecklistQuestionCopyWith<$Res>  {
  factory $ChecklistQuestionCopyWith(ChecklistQuestion value, $Res Function(ChecklistQuestion) _then) = _$ChecklistQuestionCopyWithImpl;
@useResult
$Res call({
 String id, String scheduleV2Id, String? inspectionType, String question, String? helpText, String responseType, String? value, String? note, DateTime? completedAt, String? completedById, bool? isDeleted
});




}
/// @nodoc
class _$ChecklistQuestionCopyWithImpl<$Res>
    implements $ChecklistQuestionCopyWith<$Res> {
  _$ChecklistQuestionCopyWithImpl(this._self, this._then);

  final ChecklistQuestion _self;
  final $Res Function(ChecklistQuestion) _then;

/// Create a copy of ChecklistQuestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? scheduleV2Id = null,Object? inspectionType = freezed,Object? question = null,Object? helpText = freezed,Object? responseType = null,Object? value = freezed,Object? note = freezed,Object? completedAt = freezed,Object? completedById = freezed,Object? isDeleted = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scheduleV2Id: null == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String,inspectionType: freezed == inspectionType ? _self.inspectionType : inspectionType // ignore: cast_nullable_to_non_nullable
as String?,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,helpText: freezed == helpText ? _self.helpText : helpText // ignore: cast_nullable_to_non_nullable
as String?,responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedById: freezed == completedById ? _self.completedById : completedById // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistQuestion].
extension ChecklistQuestionPatterns on ChecklistQuestion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistQuestion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistQuestion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistQuestion value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistQuestion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistQuestion value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistQuestion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String scheduleV2Id,  String? inspectionType,  String question,  String? helpText,  String responseType,  String? value,  String? note,  DateTime? completedAt,  String? completedById,  bool? isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistQuestion() when $default != null:
return $default(_that.id,_that.scheduleV2Id,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.value,_that.note,_that.completedAt,_that.completedById,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String scheduleV2Id,  String? inspectionType,  String question,  String? helpText,  String responseType,  String? value,  String? note,  DateTime? completedAt,  String? completedById,  bool? isDeleted)  $default,) {final _that = this;
switch (_that) {
case _ChecklistQuestion():
return $default(_that.id,_that.scheduleV2Id,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.value,_that.note,_that.completedAt,_that.completedById,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String scheduleV2Id,  String? inspectionType,  String question,  String? helpText,  String responseType,  String? value,  String? note,  DateTime? completedAt,  String? completedById,  bool? isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistQuestion() when $default != null:
return $default(_that.id,_that.scheduleV2Id,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.value,_that.note,_that.completedAt,_that.completedById,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistQuestion implements ChecklistQuestion {
  const _ChecklistQuestion({required this.id, required this.scheduleV2Id, this.inspectionType, required this.question, this.helpText, required this.responseType, this.value, this.note, this.completedAt, this.completedById, this.isDeleted});
  factory _ChecklistQuestion.fromJson(Map<String, dynamic> json) => _$ChecklistQuestionFromJson(json);

@override final  String id;
@override final  String scheduleV2Id;
@override final  String? inspectionType;
@override final  String question;
@override final  String? helpText;
@override final  String responseType;
@override final  String? value;
@override final  String? note;
@override final  DateTime? completedAt;
@override final  String? completedById;
@override final  bool? isDeleted;

/// Create a copy of ChecklistQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistQuestionCopyWith<_ChecklistQuestion> get copyWith => __$ChecklistQuestionCopyWithImpl<_ChecklistQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.inspectionType, inspectionType) || other.inspectionType == inspectionType)&&(identical(other.question, question) || other.question == question)&&(identical(other.helpText, helpText) || other.helpText == helpText)&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completedById, completedById) || other.completedById == completedById)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleV2Id,inspectionType,question,helpText,responseType,value,note,completedAt,completedById,isDeleted);

@override
String toString() {
  return 'ChecklistQuestion(id: $id, scheduleV2Id: $scheduleV2Id, inspectionType: $inspectionType, question: $question, helpText: $helpText, responseType: $responseType, value: $value, note: $note, completedAt: $completedAt, completedById: $completedById, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$ChecklistQuestionCopyWith<$Res> implements $ChecklistQuestionCopyWith<$Res> {
  factory _$ChecklistQuestionCopyWith(_ChecklistQuestion value, $Res Function(_ChecklistQuestion) _then) = __$ChecklistQuestionCopyWithImpl;
@override @useResult
$Res call({
 String id, String scheduleV2Id, String? inspectionType, String question, String? helpText, String responseType, String? value, String? note, DateTime? completedAt, String? completedById, bool? isDeleted
});




}
/// @nodoc
class __$ChecklistQuestionCopyWithImpl<$Res>
    implements _$ChecklistQuestionCopyWith<$Res> {
  __$ChecklistQuestionCopyWithImpl(this._self, this._then);

  final _ChecklistQuestion _self;
  final $Res Function(_ChecklistQuestion) _then;

/// Create a copy of ChecklistQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? scheduleV2Id = null,Object? inspectionType = freezed,Object? question = null,Object? helpText = freezed,Object? responseType = null,Object? value = freezed,Object? note = freezed,Object? completedAt = freezed,Object? completedById = freezed,Object? isDeleted = freezed,}) {
  return _then(_ChecklistQuestion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scheduleV2Id: null == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String,inspectionType: freezed == inspectionType ? _self.inspectionType : inspectionType // ignore: cast_nullable_to_non_nullable
as String?,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,helpText: freezed == helpText ? _self.helpText : helpText // ignore: cast_nullable_to_non_nullable
as String?,responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedById: freezed == completedById ? _self.completedById : completedById // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on

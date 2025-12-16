// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_draft_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordDraftModel {

 String? get description; String? get actionCreated; String? get comments; DateTime? get recordCreatedDate; DateTime? get inspectionDate; List<String> get selectedInspectedComponents; Map<String, ChecklistAnswerDraft> get checklistAnswers; Map<String, List<AttachmentDraft>> get questionAttachments;
/// Create a copy of RecordDraftModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordDraftModelCopyWith<RecordDraftModel> get copyWith => _$RecordDraftModelCopyWithImpl<RecordDraftModel>(this as RecordDraftModel, _$identity);

  /// Serializes this RecordDraftModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordDraftModel&&(identical(other.description, description) || other.description == description)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&const DeepCollectionEquality().equals(other.selectedInspectedComponents, selectedInspectedComponents)&&const DeepCollectionEquality().equals(other.checklistAnswers, checklistAnswers)&&const DeepCollectionEquality().equals(other.questionAttachments, questionAttachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,actionCreated,comments,recordCreatedDate,inspectionDate,const DeepCollectionEquality().hash(selectedInspectedComponents),const DeepCollectionEquality().hash(checklistAnswers),const DeepCollectionEquality().hash(questionAttachments));

@override
String toString() {
  return 'RecordDraftModel(description: $description, actionCreated: $actionCreated, comments: $comments, recordCreatedDate: $recordCreatedDate, inspectionDate: $inspectionDate, selectedInspectedComponents: $selectedInspectedComponents, checklistAnswers: $checklistAnswers, questionAttachments: $questionAttachments)';
}


}

/// @nodoc
abstract mixin class $RecordDraftModelCopyWith<$Res>  {
  factory $RecordDraftModelCopyWith(RecordDraftModel value, $Res Function(RecordDraftModel) _then) = _$RecordDraftModelCopyWithImpl;
@useResult
$Res call({
 String? description, String? actionCreated, String? comments, DateTime? recordCreatedDate, DateTime? inspectionDate, List<String> selectedInspectedComponents, Map<String, ChecklistAnswerDraft> checklistAnswers, Map<String, List<AttachmentDraft>> questionAttachments
});




}
/// @nodoc
class _$RecordDraftModelCopyWithImpl<$Res>
    implements $RecordDraftModelCopyWith<$Res> {
  _$RecordDraftModelCopyWithImpl(this._self, this._then);

  final RecordDraftModel _self;
  final $Res Function(RecordDraftModel) _then;

/// Create a copy of RecordDraftModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = freezed,Object? actionCreated = freezed,Object? comments = freezed,Object? recordCreatedDate = freezed,Object? inspectionDate = freezed,Object? selectedInspectedComponents = null,Object? checklistAnswers = null,Object? questionAttachments = null,}) {
  return _then(_self.copyWith(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,actionCreated: freezed == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,recordCreatedDate: freezed == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,inspectionDate: freezed == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,selectedInspectedComponents: null == selectedInspectedComponents ? _self.selectedInspectedComponents : selectedInspectedComponents // ignore: cast_nullable_to_non_nullable
as List<String>,checklistAnswers: null == checklistAnswers ? _self.checklistAnswers : checklistAnswers // ignore: cast_nullable_to_non_nullable
as Map<String, ChecklistAnswerDraft>,questionAttachments: null == questionAttachments ? _self.questionAttachments : questionAttachments // ignore: cast_nullable_to_non_nullable
as Map<String, List<AttachmentDraft>>,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordDraftModel].
extension RecordDraftModelPatterns on RecordDraftModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordDraftModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordDraftModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordDraftModel value)  $default,){
final _that = this;
switch (_that) {
case _RecordDraftModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordDraftModel value)?  $default,){
final _that = this;
switch (_that) {
case _RecordDraftModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? description,  String? actionCreated,  String? comments,  DateTime? recordCreatedDate,  DateTime? inspectionDate,  List<String> selectedInspectedComponents,  Map<String, ChecklistAnswerDraft> checklistAnswers,  Map<String, List<AttachmentDraft>> questionAttachments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordDraftModel() when $default != null:
return $default(_that.description,_that.actionCreated,_that.comments,_that.recordCreatedDate,_that.inspectionDate,_that.selectedInspectedComponents,_that.checklistAnswers,_that.questionAttachments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? description,  String? actionCreated,  String? comments,  DateTime? recordCreatedDate,  DateTime? inspectionDate,  List<String> selectedInspectedComponents,  Map<String, ChecklistAnswerDraft> checklistAnswers,  Map<String, List<AttachmentDraft>> questionAttachments)  $default,) {final _that = this;
switch (_that) {
case _RecordDraftModel():
return $default(_that.description,_that.actionCreated,_that.comments,_that.recordCreatedDate,_that.inspectionDate,_that.selectedInspectedComponents,_that.checklistAnswers,_that.questionAttachments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? description,  String? actionCreated,  String? comments,  DateTime? recordCreatedDate,  DateTime? inspectionDate,  List<String> selectedInspectedComponents,  Map<String, ChecklistAnswerDraft> checklistAnswers,  Map<String, List<AttachmentDraft>> questionAttachments)?  $default,) {final _that = this;
switch (_that) {
case _RecordDraftModel() when $default != null:
return $default(_that.description,_that.actionCreated,_that.comments,_that.recordCreatedDate,_that.inspectionDate,_that.selectedInspectedComponents,_that.checklistAnswers,_that.questionAttachments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordDraftModel extends RecordDraftModel {
  const _RecordDraftModel({this.description, this.actionCreated, this.comments, this.recordCreatedDate, this.inspectionDate, final  List<String> selectedInspectedComponents = const [], final  Map<String, ChecklistAnswerDraft> checklistAnswers = const {}, final  Map<String, List<AttachmentDraft>> questionAttachments = const {}}): _selectedInspectedComponents = selectedInspectedComponents,_checklistAnswers = checklistAnswers,_questionAttachments = questionAttachments,super._();
  factory _RecordDraftModel.fromJson(Map<String, dynamic> json) => _$RecordDraftModelFromJson(json);

@override final  String? description;
@override final  String? actionCreated;
@override final  String? comments;
@override final  DateTime? recordCreatedDate;
@override final  DateTime? inspectionDate;
 final  List<String> _selectedInspectedComponents;
@override@JsonKey() List<String> get selectedInspectedComponents {
  if (_selectedInspectedComponents is EqualUnmodifiableListView) return _selectedInspectedComponents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedInspectedComponents);
}

 final  Map<String, ChecklistAnswerDraft> _checklistAnswers;
@override@JsonKey() Map<String, ChecklistAnswerDraft> get checklistAnswers {
  if (_checklistAnswers is EqualUnmodifiableMapView) return _checklistAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_checklistAnswers);
}

 final  Map<String, List<AttachmentDraft>> _questionAttachments;
@override@JsonKey() Map<String, List<AttachmentDraft>> get questionAttachments {
  if (_questionAttachments is EqualUnmodifiableMapView) return _questionAttachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_questionAttachments);
}


/// Create a copy of RecordDraftModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordDraftModelCopyWith<_RecordDraftModel> get copyWith => __$RecordDraftModelCopyWithImpl<_RecordDraftModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordDraftModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordDraftModel&&(identical(other.description, description) || other.description == description)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&const DeepCollectionEquality().equals(other._selectedInspectedComponents, _selectedInspectedComponents)&&const DeepCollectionEquality().equals(other._checklistAnswers, _checklistAnswers)&&const DeepCollectionEquality().equals(other._questionAttachments, _questionAttachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,actionCreated,comments,recordCreatedDate,inspectionDate,const DeepCollectionEquality().hash(_selectedInspectedComponents),const DeepCollectionEquality().hash(_checklistAnswers),const DeepCollectionEquality().hash(_questionAttachments));

@override
String toString() {
  return 'RecordDraftModel(description: $description, actionCreated: $actionCreated, comments: $comments, recordCreatedDate: $recordCreatedDate, inspectionDate: $inspectionDate, selectedInspectedComponents: $selectedInspectedComponents, checklistAnswers: $checklistAnswers, questionAttachments: $questionAttachments)';
}


}

/// @nodoc
abstract mixin class _$RecordDraftModelCopyWith<$Res> implements $RecordDraftModelCopyWith<$Res> {
  factory _$RecordDraftModelCopyWith(_RecordDraftModel value, $Res Function(_RecordDraftModel) _then) = __$RecordDraftModelCopyWithImpl;
@override @useResult
$Res call({
 String? description, String? actionCreated, String? comments, DateTime? recordCreatedDate, DateTime? inspectionDate, List<String> selectedInspectedComponents, Map<String, ChecklistAnswerDraft> checklistAnswers, Map<String, List<AttachmentDraft>> questionAttachments
});




}
/// @nodoc
class __$RecordDraftModelCopyWithImpl<$Res>
    implements _$RecordDraftModelCopyWith<$Res> {
  __$RecordDraftModelCopyWithImpl(this._self, this._then);

  final _RecordDraftModel _self;
  final $Res Function(_RecordDraftModel) _then;

/// Create a copy of RecordDraftModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = freezed,Object? actionCreated = freezed,Object? comments = freezed,Object? recordCreatedDate = freezed,Object? inspectionDate = freezed,Object? selectedInspectedComponents = null,Object? checklistAnswers = null,Object? questionAttachments = null,}) {
  return _then(_RecordDraftModel(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,actionCreated: freezed == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,recordCreatedDate: freezed == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,inspectionDate: freezed == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,selectedInspectedComponents: null == selectedInspectedComponents ? _self._selectedInspectedComponents : selectedInspectedComponents // ignore: cast_nullable_to_non_nullable
as List<String>,checklistAnswers: null == checklistAnswers ? _self._checklistAnswers : checklistAnswers // ignore: cast_nullable_to_non_nullable
as Map<String, ChecklistAnswerDraft>,questionAttachments: null == questionAttachments ? _self._questionAttachments : questionAttachments // ignore: cast_nullable_to_non_nullable
as Map<String, List<AttachmentDraft>>,
  ));
}


}


/// @nodoc
mixin _$ChecklistAnswerDraft {

 String get value; String get note;
/// Create a copy of ChecklistAnswerDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistAnswerDraftCopyWith<ChecklistAnswerDraft> get copyWith => _$ChecklistAnswerDraftCopyWithImpl<ChecklistAnswerDraft>(this as ChecklistAnswerDraft, _$identity);

  /// Serializes this ChecklistAnswerDraft to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistAnswerDraft&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,note);

@override
String toString() {
  return 'ChecklistAnswerDraft(value: $value, note: $note)';
}


}

/// @nodoc
abstract mixin class $ChecklistAnswerDraftCopyWith<$Res>  {
  factory $ChecklistAnswerDraftCopyWith(ChecklistAnswerDraft value, $Res Function(ChecklistAnswerDraft) _then) = _$ChecklistAnswerDraftCopyWithImpl;
@useResult
$Res call({
 String value, String note
});




}
/// @nodoc
class _$ChecklistAnswerDraftCopyWithImpl<$Res>
    implements $ChecklistAnswerDraftCopyWith<$Res> {
  _$ChecklistAnswerDraftCopyWithImpl(this._self, this._then);

  final ChecklistAnswerDraft _self;
  final $Res Function(ChecklistAnswerDraft) _then;

/// Create a copy of ChecklistAnswerDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? note = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistAnswerDraft].
extension ChecklistAnswerDraftPatterns on ChecklistAnswerDraft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistAnswerDraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistAnswerDraft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistAnswerDraft value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerDraft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistAnswerDraft value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerDraft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value,  String note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistAnswerDraft() when $default != null:
return $default(_that.value,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value,  String note)  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerDraft():
return $default(_that.value,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value,  String note)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerDraft() when $default != null:
return $default(_that.value,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistAnswerDraft implements ChecklistAnswerDraft {
  const _ChecklistAnswerDraft({this.value = '', this.note = ''});
  factory _ChecklistAnswerDraft.fromJson(Map<String, dynamic> json) => _$ChecklistAnswerDraftFromJson(json);

@override@JsonKey() final  String value;
@override@JsonKey() final  String note;

/// Create a copy of ChecklistAnswerDraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistAnswerDraftCopyWith<_ChecklistAnswerDraft> get copyWith => __$ChecklistAnswerDraftCopyWithImpl<_ChecklistAnswerDraft>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistAnswerDraftToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistAnswerDraft&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,note);

@override
String toString() {
  return 'ChecklistAnswerDraft(value: $value, note: $note)';
}


}

/// @nodoc
abstract mixin class _$ChecklistAnswerDraftCopyWith<$Res> implements $ChecklistAnswerDraftCopyWith<$Res> {
  factory _$ChecklistAnswerDraftCopyWith(_ChecklistAnswerDraft value, $Res Function(_ChecklistAnswerDraft) _then) = __$ChecklistAnswerDraftCopyWithImpl;
@override @useResult
$Res call({
 String value, String note
});




}
/// @nodoc
class __$ChecklistAnswerDraftCopyWithImpl<$Res>
    implements _$ChecklistAnswerDraftCopyWith<$Res> {
  __$ChecklistAnswerDraftCopyWithImpl(this._self, this._then);

  final _ChecklistAnswerDraft _self;
  final $Res Function(_ChecklistAnswerDraft) _then;

/// Create a copy of ChecklistAnswerDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? note = null,}) {
  return _then(_ChecklistAnswerDraft(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AttachmentDraft {

 String get id; String get name;
/// Create a copy of AttachmentDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttachmentDraftCopyWith<AttachmentDraft> get copyWith => _$AttachmentDraftCopyWithImpl<AttachmentDraft>(this as AttachmentDraft, _$identity);

  /// Serializes this AttachmentDraft to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttachmentDraft&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AttachmentDraft(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $AttachmentDraftCopyWith<$Res>  {
  factory $AttachmentDraftCopyWith(AttachmentDraft value, $Res Function(AttachmentDraft) _then) = _$AttachmentDraftCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$AttachmentDraftCopyWithImpl<$Res>
    implements $AttachmentDraftCopyWith<$Res> {
  _$AttachmentDraftCopyWithImpl(this._self, this._then);

  final AttachmentDraft _self;
  final $Res Function(AttachmentDraft) _then;

/// Create a copy of AttachmentDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttachmentDraft].
extension AttachmentDraftPatterns on AttachmentDraft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttachmentDraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttachmentDraft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttachmentDraft value)  $default,){
final _that = this;
switch (_that) {
case _AttachmentDraft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttachmentDraft value)?  $default,){
final _that = this;
switch (_that) {
case _AttachmentDraft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttachmentDraft() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _AttachmentDraft():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _AttachmentDraft() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttachmentDraft implements AttachmentDraft {
  const _AttachmentDraft({this.id = '', this.name = ''});
  factory _AttachmentDraft.fromJson(Map<String, dynamic> json) => _$AttachmentDraftFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;

/// Create a copy of AttachmentDraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttachmentDraftCopyWith<_AttachmentDraft> get copyWith => __$AttachmentDraftCopyWithImpl<_AttachmentDraft>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttachmentDraftToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttachmentDraft&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AttachmentDraft(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AttachmentDraftCopyWith<$Res> implements $AttachmentDraftCopyWith<$Res> {
  factory _$AttachmentDraftCopyWith(_AttachmentDraft value, $Res Function(_AttachmentDraft) _then) = __$AttachmentDraftCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$AttachmentDraftCopyWithImpl<$Res>
    implements _$AttachmentDraftCopyWith<$Res> {
  __$AttachmentDraftCopyWithImpl(this._self, this._then);

  final _AttachmentDraft _self;
  final $Res Function(_AttachmentDraft) _then;

/// Create a copy of AttachmentDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_AttachmentDraft(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

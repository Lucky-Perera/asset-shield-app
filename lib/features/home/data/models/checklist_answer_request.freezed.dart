// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_answer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChecklistAnswerRequest {

 List<ChecklistAnswerRequestItem> get answers;
/// Create a copy of ChecklistAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistAnswerRequestCopyWith<ChecklistAnswerRequest> get copyWith => _$ChecklistAnswerRequestCopyWithImpl<ChecklistAnswerRequest>(this as ChecklistAnswerRequest, _$identity);

  /// Serializes this ChecklistAnswerRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistAnswerRequest&&const DeepCollectionEquality().equals(other.answers, answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers));

@override
String toString() {
  return 'ChecklistAnswerRequest(answers: $answers)';
}


}

/// @nodoc
abstract mixin class $ChecklistAnswerRequestCopyWith<$Res>  {
  factory $ChecklistAnswerRequestCopyWith(ChecklistAnswerRequest value, $Res Function(ChecklistAnswerRequest) _then) = _$ChecklistAnswerRequestCopyWithImpl;
@useResult
$Res call({
 List<ChecklistAnswerRequestItem> answers
});




}
/// @nodoc
class _$ChecklistAnswerRequestCopyWithImpl<$Res>
    implements $ChecklistAnswerRequestCopyWith<$Res> {
  _$ChecklistAnswerRequestCopyWithImpl(this._self, this._then);

  final ChecklistAnswerRequest _self;
  final $Res Function(ChecklistAnswerRequest) _then;

/// Create a copy of ChecklistAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = null,}) {
  return _then(_self.copyWith(
answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<ChecklistAnswerRequestItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistAnswerRequest].
extension ChecklistAnswerRequestPatterns on ChecklistAnswerRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistAnswerRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistAnswerRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistAnswerRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistAnswerRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChecklistAnswerRequestItem> answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistAnswerRequest() when $default != null:
return $default(_that.answers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChecklistAnswerRequestItem> answers)  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerRequest():
return $default(_that.answers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChecklistAnswerRequestItem> answers)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerRequest() when $default != null:
return $default(_that.answers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistAnswerRequest implements ChecklistAnswerRequest {
  const _ChecklistAnswerRequest({required final  List<ChecklistAnswerRequestItem> answers}): _answers = answers;
  factory _ChecklistAnswerRequest.fromJson(Map<String, dynamic> json) => _$ChecklistAnswerRequestFromJson(json);

 final  List<ChecklistAnswerRequestItem> _answers;
@override List<ChecklistAnswerRequestItem> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}


/// Create a copy of ChecklistAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistAnswerRequestCopyWith<_ChecklistAnswerRequest> get copyWith => __$ChecklistAnswerRequestCopyWithImpl<_ChecklistAnswerRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistAnswerRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistAnswerRequest&&const DeepCollectionEquality().equals(other._answers, _answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answers));

@override
String toString() {
  return 'ChecklistAnswerRequest(answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$ChecklistAnswerRequestCopyWith<$Res> implements $ChecklistAnswerRequestCopyWith<$Res> {
  factory _$ChecklistAnswerRequestCopyWith(_ChecklistAnswerRequest value, $Res Function(_ChecklistAnswerRequest) _then) = __$ChecklistAnswerRequestCopyWithImpl;
@override @useResult
$Res call({
 List<ChecklistAnswerRequestItem> answers
});




}
/// @nodoc
class __$ChecklistAnswerRequestCopyWithImpl<$Res>
    implements _$ChecklistAnswerRequestCopyWith<$Res> {
  __$ChecklistAnswerRequestCopyWithImpl(this._self, this._then);

  final _ChecklistAnswerRequest _self;
  final $Res Function(_ChecklistAnswerRequest) _then;

/// Create a copy of ChecklistAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = null,}) {
  return _then(_ChecklistAnswerRequest(
answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<ChecklistAnswerRequestItem>,
  ));
}


}


/// @nodoc
mixin _$ChecklistAnswerRequestItem {

 String get questionId; String get value; String get note;
/// Create a copy of ChecklistAnswerRequestItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistAnswerRequestItemCopyWith<ChecklistAnswerRequestItem> get copyWith => _$ChecklistAnswerRequestItemCopyWithImpl<ChecklistAnswerRequestItem>(this as ChecklistAnswerRequestItem, _$identity);

  /// Serializes this ChecklistAnswerRequestItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistAnswerRequestItem&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,value,note);

@override
String toString() {
  return 'ChecklistAnswerRequestItem(questionId: $questionId, value: $value, note: $note)';
}


}

/// @nodoc
abstract mixin class $ChecklistAnswerRequestItemCopyWith<$Res>  {
  factory $ChecklistAnswerRequestItemCopyWith(ChecklistAnswerRequestItem value, $Res Function(ChecklistAnswerRequestItem) _then) = _$ChecklistAnswerRequestItemCopyWithImpl;
@useResult
$Res call({
 String questionId, String value, String note
});




}
/// @nodoc
class _$ChecklistAnswerRequestItemCopyWithImpl<$Res>
    implements $ChecklistAnswerRequestItemCopyWith<$Res> {
  _$ChecklistAnswerRequestItemCopyWithImpl(this._self, this._then);

  final ChecklistAnswerRequestItem _self;
  final $Res Function(ChecklistAnswerRequestItem) _then;

/// Create a copy of ChecklistAnswerRequestItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? value = null,Object? note = null,}) {
  return _then(_self.copyWith(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistAnswerRequestItem].
extension ChecklistAnswerRequestItemPatterns on ChecklistAnswerRequestItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistAnswerRequestItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistAnswerRequestItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistAnswerRequestItem value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerRequestItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistAnswerRequestItem value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerRequestItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String questionId,  String value,  String note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistAnswerRequestItem() when $default != null:
return $default(_that.questionId,_that.value,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String questionId,  String value,  String note)  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerRequestItem():
return $default(_that.questionId,_that.value,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String questionId,  String value,  String note)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerRequestItem() when $default != null:
return $default(_that.questionId,_that.value,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistAnswerRequestItem implements ChecklistAnswerRequestItem {
  const _ChecklistAnswerRequestItem({required this.questionId, required this.value, required this.note});
  factory _ChecklistAnswerRequestItem.fromJson(Map<String, dynamic> json) => _$ChecklistAnswerRequestItemFromJson(json);

@override final  String questionId;
@override final  String value;
@override final  String note;

/// Create a copy of ChecklistAnswerRequestItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistAnswerRequestItemCopyWith<_ChecklistAnswerRequestItem> get copyWith => __$ChecklistAnswerRequestItemCopyWithImpl<_ChecklistAnswerRequestItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistAnswerRequestItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistAnswerRequestItem&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,value,note);

@override
String toString() {
  return 'ChecklistAnswerRequestItem(questionId: $questionId, value: $value, note: $note)';
}


}

/// @nodoc
abstract mixin class _$ChecklistAnswerRequestItemCopyWith<$Res> implements $ChecklistAnswerRequestItemCopyWith<$Res> {
  factory _$ChecklistAnswerRequestItemCopyWith(_ChecklistAnswerRequestItem value, $Res Function(_ChecklistAnswerRequestItem) _then) = __$ChecklistAnswerRequestItemCopyWithImpl;
@override @useResult
$Res call({
 String questionId, String value, String note
});




}
/// @nodoc
class __$ChecklistAnswerRequestItemCopyWithImpl<$Res>
    implements _$ChecklistAnswerRequestItemCopyWith<$Res> {
  __$ChecklistAnswerRequestItemCopyWithImpl(this._self, this._then);

  final _ChecklistAnswerRequestItem _self;
  final $Res Function(_ChecklistAnswerRequestItem) _then;

/// Create a copy of ChecklistAnswerRequestItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? value = null,Object? note = null,}) {
  return _then(_ChecklistAnswerRequestItem(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

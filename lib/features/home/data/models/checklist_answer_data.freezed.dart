// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_answer_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChecklistAnswerData {

 String get value; String get note;
/// Create a copy of ChecklistAnswerData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistAnswerDataCopyWith<ChecklistAnswerData> get copyWith => _$ChecklistAnswerDataCopyWithImpl<ChecklistAnswerData>(this as ChecklistAnswerData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistAnswerData&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,value,note);

@override
String toString() {
  return 'ChecklistAnswerData(value: $value, note: $note)';
}


}

/// @nodoc
abstract mixin class $ChecklistAnswerDataCopyWith<$Res>  {
  factory $ChecklistAnswerDataCopyWith(ChecklistAnswerData value, $Res Function(ChecklistAnswerData) _then) = _$ChecklistAnswerDataCopyWithImpl;
@useResult
$Res call({
 String value, String note
});




}
/// @nodoc
class _$ChecklistAnswerDataCopyWithImpl<$Res>
    implements $ChecklistAnswerDataCopyWith<$Res> {
  _$ChecklistAnswerDataCopyWithImpl(this._self, this._then);

  final ChecklistAnswerData _self;
  final $Res Function(ChecklistAnswerData) _then;

/// Create a copy of ChecklistAnswerData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? note = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistAnswerData].
extension ChecklistAnswerDataPatterns on ChecklistAnswerData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistAnswerData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistAnswerData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistAnswerData value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistAnswerData value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswerData() when $default != null:
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
case _ChecklistAnswerData() when $default != null:
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
case _ChecklistAnswerData():
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
case _ChecklistAnswerData() when $default != null:
return $default(_that.value,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _ChecklistAnswerData implements ChecklistAnswerData {
  const _ChecklistAnswerData({required this.value, this.note = ''});
  

@override final  String value;
@override@JsonKey() final  String note;

/// Create a copy of ChecklistAnswerData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistAnswerDataCopyWith<_ChecklistAnswerData> get copyWith => __$ChecklistAnswerDataCopyWithImpl<_ChecklistAnswerData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistAnswerData&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,value,note);

@override
String toString() {
  return 'ChecklistAnswerData(value: $value, note: $note)';
}


}

/// @nodoc
abstract mixin class _$ChecklistAnswerDataCopyWith<$Res> implements $ChecklistAnswerDataCopyWith<$Res> {
  factory _$ChecklistAnswerDataCopyWith(_ChecklistAnswerData value, $Res Function(_ChecklistAnswerData) _then) = __$ChecklistAnswerDataCopyWithImpl;
@override @useResult
$Res call({
 String value, String note
});




}
/// @nodoc
class __$ChecklistAnswerDataCopyWithImpl<$Res>
    implements _$ChecklistAnswerDataCopyWith<$Res> {
  __$ChecklistAnswerDataCopyWithImpl(this._self, this._then);

  final _ChecklistAnswerData _self;
  final $Res Function(_ChecklistAnswerData) _then;

/// Create a copy of ChecklistAnswerData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? note = null,}) {
  return _then(_ChecklistAnswerData(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

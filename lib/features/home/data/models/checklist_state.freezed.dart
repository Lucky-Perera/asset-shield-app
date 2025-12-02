// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChecklistState {

 Map<String, ChecklistAnswerData> get answers; bool get isLoading; bool get answersAlreadySubmitted; String? get error;
/// Create a copy of ChecklistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistStateCopyWith<ChecklistState> get copyWith => _$ChecklistStateCopyWithImpl<ChecklistState>(this as ChecklistState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistState&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.answersAlreadySubmitted, answersAlreadySubmitted) || other.answersAlreadySubmitted == answersAlreadySubmitted)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers),isLoading,answersAlreadySubmitted,error);

@override
String toString() {
  return 'ChecklistState(answers: $answers, isLoading: $isLoading, answersAlreadySubmitted: $answersAlreadySubmitted, error: $error)';
}


}

/// @nodoc
abstract mixin class $ChecklistStateCopyWith<$Res>  {
  factory $ChecklistStateCopyWith(ChecklistState value, $Res Function(ChecklistState) _then) = _$ChecklistStateCopyWithImpl;
@useResult
$Res call({
 Map<String, ChecklistAnswerData> answers, bool isLoading, bool answersAlreadySubmitted, String? error
});




}
/// @nodoc
class _$ChecklistStateCopyWithImpl<$Res>
    implements $ChecklistStateCopyWith<$Res> {
  _$ChecklistStateCopyWithImpl(this._self, this._then);

  final ChecklistState _self;
  final $Res Function(ChecklistState) _then;

/// Create a copy of ChecklistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = null,Object? isLoading = null,Object? answersAlreadySubmitted = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, ChecklistAnswerData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,answersAlreadySubmitted: null == answersAlreadySubmitted ? _self.answersAlreadySubmitted : answersAlreadySubmitted // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistState].
extension ChecklistStatePatterns on ChecklistState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistState value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistState value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, ChecklistAnswerData> answers,  bool isLoading,  bool answersAlreadySubmitted,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistState() when $default != null:
return $default(_that.answers,_that.isLoading,_that.answersAlreadySubmitted,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, ChecklistAnswerData> answers,  bool isLoading,  bool answersAlreadySubmitted,  String? error)  $default,) {final _that = this;
switch (_that) {
case _ChecklistState():
return $default(_that.answers,_that.isLoading,_that.answersAlreadySubmitted,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, ChecklistAnswerData> answers,  bool isLoading,  bool answersAlreadySubmitted,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistState() when $default != null:
return $default(_that.answers,_that.isLoading,_that.answersAlreadySubmitted,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ChecklistState implements ChecklistState {
  const _ChecklistState({final  Map<String, ChecklistAnswerData> answers = const {}, this.isLoading = false, this.answersAlreadySubmitted = false, this.error}): _answers = answers;
  

 final  Map<String, ChecklistAnswerData> _answers;
@override@JsonKey() Map<String, ChecklistAnswerData> get answers {
  if (_answers is EqualUnmodifiableMapView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_answers);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool answersAlreadySubmitted;
@override final  String? error;

/// Create a copy of ChecklistState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistStateCopyWith<_ChecklistState> get copyWith => __$ChecklistStateCopyWithImpl<_ChecklistState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistState&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.answersAlreadySubmitted, answersAlreadySubmitted) || other.answersAlreadySubmitted == answersAlreadySubmitted)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answers),isLoading,answersAlreadySubmitted,error);

@override
String toString() {
  return 'ChecklistState(answers: $answers, isLoading: $isLoading, answersAlreadySubmitted: $answersAlreadySubmitted, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ChecklistStateCopyWith<$Res> implements $ChecklistStateCopyWith<$Res> {
  factory _$ChecklistStateCopyWith(_ChecklistState value, $Res Function(_ChecklistState) _then) = __$ChecklistStateCopyWithImpl;
@override @useResult
$Res call({
 Map<String, ChecklistAnswerData> answers, bool isLoading, bool answersAlreadySubmitted, String? error
});




}
/// @nodoc
class __$ChecklistStateCopyWithImpl<$Res>
    implements _$ChecklistStateCopyWith<$Res> {
  __$ChecklistStateCopyWithImpl(this._self, this._then);

  final _ChecklistState _self;
  final $Res Function(_ChecklistState) _then;

/// Create a copy of ChecklistState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = null,Object? isLoading = null,Object? answersAlreadySubmitted = null,Object? error = freezed,}) {
  return _then(_ChecklistState(
answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, ChecklistAnswerData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,answersAlreadySubmitted: null == answersAlreadySubmitted ? _self.answersAlreadySubmitted : answersAlreadySubmitted // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

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

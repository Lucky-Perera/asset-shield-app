// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_with_checklist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecordWithChecklistState {

 bool get isLoading; String? get error; RecordResponse? get record; List<ChecklistQuestionItem> get answeredQuestions; bool get hasSubmittedAnswers;
/// Create a copy of RecordWithChecklistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordWithChecklistStateCopyWith<RecordWithChecklistState> get copyWith => _$RecordWithChecklistStateCopyWithImpl<RecordWithChecklistState>(this as RecordWithChecklistState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordWithChecklistState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.record, record) || other.record == record)&&const DeepCollectionEquality().equals(other.answeredQuestions, answeredQuestions)&&(identical(other.hasSubmittedAnswers, hasSubmittedAnswers) || other.hasSubmittedAnswers == hasSubmittedAnswers));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,record,const DeepCollectionEquality().hash(answeredQuestions),hasSubmittedAnswers);

@override
String toString() {
  return 'RecordWithChecklistState(isLoading: $isLoading, error: $error, record: $record, answeredQuestions: $answeredQuestions, hasSubmittedAnswers: $hasSubmittedAnswers)';
}


}

/// @nodoc
abstract mixin class $RecordWithChecklistStateCopyWith<$Res>  {
  factory $RecordWithChecklistStateCopyWith(RecordWithChecklistState value, $Res Function(RecordWithChecklistState) _then) = _$RecordWithChecklistStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? error, RecordResponse? record, List<ChecklistQuestionItem> answeredQuestions, bool hasSubmittedAnswers
});


$RecordResponseCopyWith<$Res>? get record;

}
/// @nodoc
class _$RecordWithChecklistStateCopyWithImpl<$Res>
    implements $RecordWithChecklistStateCopyWith<$Res> {
  _$RecordWithChecklistStateCopyWithImpl(this._self, this._then);

  final RecordWithChecklistState _self;
  final $Res Function(RecordWithChecklistState) _then;

/// Create a copy of RecordWithChecklistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? error = freezed,Object? record = freezed,Object? answeredQuestions = null,Object? hasSubmittedAnswers = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,record: freezed == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as RecordResponse?,answeredQuestions: null == answeredQuestions ? _self.answeredQuestions : answeredQuestions // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionItem>,hasSubmittedAnswers: null == hasSubmittedAnswers ? _self.hasSubmittedAnswers : hasSubmittedAnswers // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of RecordWithChecklistState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecordResponseCopyWith<$Res>? get record {
    if (_self.record == null) {
    return null;
  }

  return $RecordResponseCopyWith<$Res>(_self.record!, (value) {
    return _then(_self.copyWith(record: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecordWithChecklistState].
extension RecordWithChecklistStatePatterns on RecordWithChecklistState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordWithChecklistState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordWithChecklistState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordWithChecklistState value)  $default,){
final _that = this;
switch (_that) {
case _RecordWithChecklistState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordWithChecklistState value)?  $default,){
final _that = this;
switch (_that) {
case _RecordWithChecklistState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? error,  RecordResponse? record,  List<ChecklistQuestionItem> answeredQuestions,  bool hasSubmittedAnswers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordWithChecklistState() when $default != null:
return $default(_that.isLoading,_that.error,_that.record,_that.answeredQuestions,_that.hasSubmittedAnswers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? error,  RecordResponse? record,  List<ChecklistQuestionItem> answeredQuestions,  bool hasSubmittedAnswers)  $default,) {final _that = this;
switch (_that) {
case _RecordWithChecklistState():
return $default(_that.isLoading,_that.error,_that.record,_that.answeredQuestions,_that.hasSubmittedAnswers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? error,  RecordResponse? record,  List<ChecklistQuestionItem> answeredQuestions,  bool hasSubmittedAnswers)?  $default,) {final _that = this;
switch (_that) {
case _RecordWithChecklistState() when $default != null:
return $default(_that.isLoading,_that.error,_that.record,_that.answeredQuestions,_that.hasSubmittedAnswers);case _:
  return null;

}
}

}

/// @nodoc


class _RecordWithChecklistState implements RecordWithChecklistState {
  const _RecordWithChecklistState({this.isLoading = false, this.error, this.record, final  List<ChecklistQuestionItem> answeredQuestions = const [], this.hasSubmittedAnswers = false}): _answeredQuestions = answeredQuestions;
  

@override@JsonKey() final  bool isLoading;
@override final  String? error;
@override final  RecordResponse? record;
 final  List<ChecklistQuestionItem> _answeredQuestions;
@override@JsonKey() List<ChecklistQuestionItem> get answeredQuestions {
  if (_answeredQuestions is EqualUnmodifiableListView) return _answeredQuestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answeredQuestions);
}

@override@JsonKey() final  bool hasSubmittedAnswers;

/// Create a copy of RecordWithChecklistState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordWithChecklistStateCopyWith<_RecordWithChecklistState> get copyWith => __$RecordWithChecklistStateCopyWithImpl<_RecordWithChecklistState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordWithChecklistState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.record, record) || other.record == record)&&const DeepCollectionEquality().equals(other._answeredQuestions, _answeredQuestions)&&(identical(other.hasSubmittedAnswers, hasSubmittedAnswers) || other.hasSubmittedAnswers == hasSubmittedAnswers));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,record,const DeepCollectionEquality().hash(_answeredQuestions),hasSubmittedAnswers);

@override
String toString() {
  return 'RecordWithChecklistState(isLoading: $isLoading, error: $error, record: $record, answeredQuestions: $answeredQuestions, hasSubmittedAnswers: $hasSubmittedAnswers)';
}


}

/// @nodoc
abstract mixin class _$RecordWithChecklistStateCopyWith<$Res> implements $RecordWithChecklistStateCopyWith<$Res> {
  factory _$RecordWithChecklistStateCopyWith(_RecordWithChecklistState value, $Res Function(_RecordWithChecklistState) _then) = __$RecordWithChecklistStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? error, RecordResponse? record, List<ChecklistQuestionItem> answeredQuestions, bool hasSubmittedAnswers
});


@override $RecordResponseCopyWith<$Res>? get record;

}
/// @nodoc
class __$RecordWithChecklistStateCopyWithImpl<$Res>
    implements _$RecordWithChecklistStateCopyWith<$Res> {
  __$RecordWithChecklistStateCopyWithImpl(this._self, this._then);

  final _RecordWithChecklistState _self;
  final $Res Function(_RecordWithChecklistState) _then;

/// Create a copy of RecordWithChecklistState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? error = freezed,Object? record = freezed,Object? answeredQuestions = null,Object? hasSubmittedAnswers = null,}) {
  return _then(_RecordWithChecklistState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,record: freezed == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as RecordResponse?,answeredQuestions: null == answeredQuestions ? _self._answeredQuestions : answeredQuestions // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionItem>,hasSubmittedAnswers: null == hasSubmittedAnswers ? _self.hasSubmittedAnswers : hasSubmittedAnswers // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of RecordWithChecklistState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecordResponseCopyWith<$Res>? get record {
    if (_self.record == null) {
    return null;
  }

  return $RecordResponseCopyWith<$Res>(_self.record!, (value) {
    return _then(_self.copyWith(record: value));
  });
}
}

// dart format on

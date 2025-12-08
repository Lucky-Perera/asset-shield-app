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

// dart format on

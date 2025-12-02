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

 bool get success; List<ChecklistQuestionV2> get data; String? get message;
/// Create a copy of ChecklistAnswerResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistAnswerResponseCopyWith<ChecklistAnswerResponse> get copyWith => _$ChecklistAnswerResponseCopyWithImpl<ChecklistAnswerResponse>(this as ChecklistAnswerResponse, _$identity);

  /// Serializes this ChecklistAnswerResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistAnswerResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),message);

@override
String toString() {
  return 'ChecklistAnswerResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $ChecklistAnswerResponseCopyWith<$Res>  {
  factory $ChecklistAnswerResponseCopyWith(ChecklistAnswerResponse value, $Res Function(ChecklistAnswerResponse) _then) = _$ChecklistAnswerResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<ChecklistQuestionV2> data, String? message
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
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionV2>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<ChecklistQuestionV2> data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistAnswerResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<ChecklistQuestionV2> data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<ChecklistQuestionV2> data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswerResponse() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistAnswerResponse implements ChecklistAnswerResponse {
  const _ChecklistAnswerResponse({required this.success, required final  List<ChecklistQuestionV2> data, this.message}): _data = data;
  factory _ChecklistAnswerResponse.fromJson(Map<String, dynamic> json) => _$ChecklistAnswerResponseFromJson(json);

@override final  bool success;
 final  List<ChecklistQuestionV2> _data;
@override List<ChecklistQuestionV2> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String? message;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistAnswerResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data),message);

@override
String toString() {
  return 'ChecklistAnswerResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ChecklistAnswerResponseCopyWith<$Res> implements $ChecklistAnswerResponseCopyWith<$Res> {
  factory _$ChecklistAnswerResponseCopyWith(_ChecklistAnswerResponse value, $Res Function(_ChecklistAnswerResponse) _then) = __$ChecklistAnswerResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<ChecklistQuestionV2> data, String? message
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
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_ChecklistAnswerResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionV2>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

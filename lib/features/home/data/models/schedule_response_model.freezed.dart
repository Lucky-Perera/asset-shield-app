// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleResponseModel {

 bool get success; List<ScheduleModel> get data;
/// Create a copy of ScheduleResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleResponseModelCopyWith<ScheduleResponseModel> get copyWith => _$ScheduleResponseModelCopyWithImpl<ScheduleResponseModel>(this as ScheduleResponseModel, _$identity);

  /// Serializes this ScheduleResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleResponseModel&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ScheduleResponseModel(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ScheduleResponseModelCopyWith<$Res>  {
  factory $ScheduleResponseModelCopyWith(ScheduleResponseModel value, $Res Function(ScheduleResponseModel) _then) = _$ScheduleResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, List<ScheduleModel> data
});




}
/// @nodoc
class _$ScheduleResponseModelCopyWithImpl<$Res>
    implements $ScheduleResponseModelCopyWith<$Res> {
  _$ScheduleResponseModelCopyWithImpl(this._self, this._then);

  final ScheduleResponseModel _self;
  final $Res Function(ScheduleResponseModel) _then;

/// Create a copy of ScheduleResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ScheduleModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ScheduleResponseModel].
extension ScheduleResponseModelPatterns on ScheduleResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<ScheduleModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<ScheduleModel> data)  $default,) {final _that = this;
switch (_that) {
case _ScheduleResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<ScheduleModel> data)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleResponseModel() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleResponseModel implements ScheduleResponseModel {
  const _ScheduleResponseModel({required this.success, required final  List<ScheduleModel> data}): _data = data;
  factory _ScheduleResponseModel.fromJson(Map<String, dynamic> json) => _$ScheduleResponseModelFromJson(json);

@override final  bool success;
 final  List<ScheduleModel> _data;
@override List<ScheduleModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ScheduleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleResponseModelCopyWith<_ScheduleResponseModel> get copyWith => __$ScheduleResponseModelCopyWithImpl<_ScheduleResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleResponseModel&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ScheduleResponseModel(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ScheduleResponseModelCopyWith<$Res> implements $ScheduleResponseModelCopyWith<$Res> {
  factory _$ScheduleResponseModelCopyWith(_ScheduleResponseModel value, $Res Function(_ScheduleResponseModel) _then) = __$ScheduleResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<ScheduleModel> data
});




}
/// @nodoc
class __$ScheduleResponseModelCopyWithImpl<$Res>
    implements _$ScheduleResponseModelCopyWith<$Res> {
  __$ScheduleResponseModelCopyWithImpl(this._self, this._then);

  final _ScheduleResponseModel _self;
  final $Res Function(_ScheduleResponseModel) _then;

/// Create a copy of ScheduleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ScheduleResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ScheduleModel>,
  ));
}


}

// dart format on

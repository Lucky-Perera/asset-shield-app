// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'corrosion_loop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CorrosionLoopModel {

 String get id; String get loopId;
/// Create a copy of CorrosionLoopModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorrosionLoopModelCopyWith<CorrosionLoopModel> get copyWith => _$CorrosionLoopModelCopyWithImpl<CorrosionLoopModel>(this as CorrosionLoopModel, _$identity);

  /// Serializes this CorrosionLoopModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorrosionLoopModel&&(identical(other.id, id) || other.id == id)&&(identical(other.loopId, loopId) || other.loopId == loopId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,loopId);

@override
String toString() {
  return 'CorrosionLoopModel(id: $id, loopId: $loopId)';
}


}

/// @nodoc
abstract mixin class $CorrosionLoopModelCopyWith<$Res>  {
  factory $CorrosionLoopModelCopyWith(CorrosionLoopModel value, $Res Function(CorrosionLoopModel) _then) = _$CorrosionLoopModelCopyWithImpl;
@useResult
$Res call({
 String id, String loopId
});




}
/// @nodoc
class _$CorrosionLoopModelCopyWithImpl<$Res>
    implements $CorrosionLoopModelCopyWith<$Res> {
  _$CorrosionLoopModelCopyWithImpl(this._self, this._then);

  final CorrosionLoopModel _self;
  final $Res Function(CorrosionLoopModel) _then;

/// Create a copy of CorrosionLoopModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? loopId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,loopId: null == loopId ? _self.loopId : loopId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CorrosionLoopModel].
extension CorrosionLoopModelPatterns on CorrosionLoopModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorrosionLoopModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorrosionLoopModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorrosionLoopModel value)  $default,){
final _that = this;
switch (_that) {
case _CorrosionLoopModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorrosionLoopModel value)?  $default,){
final _that = this;
switch (_that) {
case _CorrosionLoopModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String loopId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorrosionLoopModel() when $default != null:
return $default(_that.id,_that.loopId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String loopId)  $default,) {final _that = this;
switch (_that) {
case _CorrosionLoopModel():
return $default(_that.id,_that.loopId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String loopId)?  $default,) {final _that = this;
switch (_that) {
case _CorrosionLoopModel() when $default != null:
return $default(_that.id,_that.loopId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CorrosionLoopModel implements CorrosionLoopModel {
  const _CorrosionLoopModel({required this.id, required this.loopId});
  factory _CorrosionLoopModel.fromJson(Map<String, dynamic> json) => _$CorrosionLoopModelFromJson(json);

@override final  String id;
@override final  String loopId;

/// Create a copy of CorrosionLoopModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorrosionLoopModelCopyWith<_CorrosionLoopModel> get copyWith => __$CorrosionLoopModelCopyWithImpl<_CorrosionLoopModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorrosionLoopModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorrosionLoopModel&&(identical(other.id, id) || other.id == id)&&(identical(other.loopId, loopId) || other.loopId == loopId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,loopId);

@override
String toString() {
  return 'CorrosionLoopModel(id: $id, loopId: $loopId)';
}


}

/// @nodoc
abstract mixin class _$CorrosionLoopModelCopyWith<$Res> implements $CorrosionLoopModelCopyWith<$Res> {
  factory _$CorrosionLoopModelCopyWith(_CorrosionLoopModel value, $Res Function(_CorrosionLoopModel) _then) = __$CorrosionLoopModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String loopId
});




}
/// @nodoc
class __$CorrosionLoopModelCopyWithImpl<$Res>
    implements _$CorrosionLoopModelCopyWith<$Res> {
  __$CorrosionLoopModelCopyWithImpl(this._self, this._then);

  final _CorrosionLoopModel _self;
  final $Res Function(_CorrosionLoopModel) _then;

/// Create a copy of CorrosionLoopModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? loopId = null,}) {
  return _then(_CorrosionLoopModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,loopId: null == loopId ? _self.loopId : loopId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

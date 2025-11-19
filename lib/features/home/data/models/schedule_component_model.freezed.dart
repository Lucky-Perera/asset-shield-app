// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_component_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleComponentModel {

 String get id; String get createdAt; String get updatedAt; String get scheduleId; String get componentId; ComponentModel? get component;
/// Create a copy of ScheduleComponentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleComponentModelCopyWith<ScheduleComponentModel> get copyWith => _$ScheduleComponentModelCopyWithImpl<ScheduleComponentModel>(this as ScheduleComponentModel, _$identity);

  /// Serializes this ScheduleComponentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleComponentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.componentId, componentId) || other.componentId == componentId)&&(identical(other.component, component) || other.component == component));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleId,componentId,component);

@override
String toString() {
  return 'ScheduleComponentModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleId: $scheduleId, componentId: $componentId, component: $component)';
}


}

/// @nodoc
abstract mixin class $ScheduleComponentModelCopyWith<$Res>  {
  factory $ScheduleComponentModelCopyWith(ScheduleComponentModel value, $Res Function(ScheduleComponentModel) _then) = _$ScheduleComponentModelCopyWithImpl;
@useResult
$Res call({
 String id, String createdAt, String updatedAt, String scheduleId, String componentId, ComponentModel? component
});


$ComponentModelCopyWith<$Res>? get component;

}
/// @nodoc
class _$ScheduleComponentModelCopyWithImpl<$Res>
    implements $ScheduleComponentModelCopyWith<$Res> {
  _$ScheduleComponentModelCopyWithImpl(this._self, this._then);

  final ScheduleComponentModel _self;
  final $Res Function(ScheduleComponentModel) _then;

/// Create a copy of ScheduleComponentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scheduleId = null,Object? componentId = null,Object? component = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,componentId: null == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String,component: freezed == component ? _self.component : component // ignore: cast_nullable_to_non_nullable
as ComponentModel?,
  ));
}
/// Create a copy of ScheduleComponentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentModelCopyWith<$Res>? get component {
    if (_self.component == null) {
    return null;
  }

  return $ComponentModelCopyWith<$Res>(_self.component!, (value) {
    return _then(_self.copyWith(component: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleComponentModel].
extension ScheduleComponentModelPatterns on ScheduleComponentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleComponentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleComponentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleComponentModel value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleComponentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleComponentModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleComponentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String createdAt,  String updatedAt,  String scheduleId,  String componentId,  ComponentModel? component)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleComponentModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleId,_that.componentId,_that.component);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String createdAt,  String updatedAt,  String scheduleId,  String componentId,  ComponentModel? component)  $default,) {final _that = this;
switch (_that) {
case _ScheduleComponentModel():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleId,_that.componentId,_that.component);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String createdAt,  String updatedAt,  String scheduleId,  String componentId,  ComponentModel? component)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleComponentModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleId,_that.componentId,_that.component);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleComponentModel implements ScheduleComponentModel {
  const _ScheduleComponentModel({required this.id, required this.createdAt, required this.updatedAt, required this.scheduleId, required this.componentId, this.component});
  factory _ScheduleComponentModel.fromJson(Map<String, dynamic> json) => _$ScheduleComponentModelFromJson(json);

@override final  String id;
@override final  String createdAt;
@override final  String updatedAt;
@override final  String scheduleId;
@override final  String componentId;
@override final  ComponentModel? component;

/// Create a copy of ScheduleComponentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleComponentModelCopyWith<_ScheduleComponentModel> get copyWith => __$ScheduleComponentModelCopyWithImpl<_ScheduleComponentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleComponentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleComponentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.componentId, componentId) || other.componentId == componentId)&&(identical(other.component, component) || other.component == component));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleId,componentId,component);

@override
String toString() {
  return 'ScheduleComponentModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleId: $scheduleId, componentId: $componentId, component: $component)';
}


}

/// @nodoc
abstract mixin class _$ScheduleComponentModelCopyWith<$Res> implements $ScheduleComponentModelCopyWith<$Res> {
  factory _$ScheduleComponentModelCopyWith(_ScheduleComponentModel value, $Res Function(_ScheduleComponentModel) _then) = __$ScheduleComponentModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String createdAt, String updatedAt, String scheduleId, String componentId, ComponentModel? component
});


@override $ComponentModelCopyWith<$Res>? get component;

}
/// @nodoc
class __$ScheduleComponentModelCopyWithImpl<$Res>
    implements _$ScheduleComponentModelCopyWith<$Res> {
  __$ScheduleComponentModelCopyWithImpl(this._self, this._then);

  final _ScheduleComponentModel _self;
  final $Res Function(_ScheduleComponentModel) _then;

/// Create a copy of ScheduleComponentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scheduleId = null,Object? componentId = null,Object? component = freezed,}) {
  return _then(_ScheduleComponentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,componentId: null == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String,component: freezed == component ? _self.component : component // ignore: cast_nullable_to_non_nullable
as ComponentModel?,
  ));
}

/// Create a copy of ScheduleComponentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentModelCopyWith<$Res>? get component {
    if (_self.component == null) {
    return null;
  }

  return $ComponentModelCopyWith<$Res>(_self.component!, (value) {
    return _then(_self.copyWith(component: value));
  });
}
}

// dart format on

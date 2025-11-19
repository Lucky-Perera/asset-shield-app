// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EquipmentModel {

 String get id; String get createdAt; String get updatedAt; String get equipmentId; String get name; String get cmmsSystem; bool get isCorrosionLoopAvailable; String? get corrosionLoopId; bool get isDeleted; CorrosionLoopModel? get corrosionLoop;
/// Create a copy of EquipmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EquipmentModelCopyWith<EquipmentModel> get copyWith => _$EquipmentModelCopyWithImpl<EquipmentModel>(this as EquipmentModel, _$identity);

  /// Serializes this EquipmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EquipmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.cmmsSystem, cmmsSystem) || other.cmmsSystem == cmmsSystem)&&(identical(other.isCorrosionLoopAvailable, isCorrosionLoopAvailable) || other.isCorrosionLoopAvailable == isCorrosionLoopAvailable)&&(identical(other.corrosionLoopId, corrosionLoopId) || other.corrosionLoopId == corrosionLoopId)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.corrosionLoop, corrosionLoop) || other.corrosionLoop == corrosionLoop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,equipmentId,name,cmmsSystem,isCorrosionLoopAvailable,corrosionLoopId,isDeleted,corrosionLoop);

@override
String toString() {
  return 'EquipmentModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, equipmentId: $equipmentId, name: $name, cmmsSystem: $cmmsSystem, isCorrosionLoopAvailable: $isCorrosionLoopAvailable, corrosionLoopId: $corrosionLoopId, isDeleted: $isDeleted, corrosionLoop: $corrosionLoop)';
}


}

/// @nodoc
abstract mixin class $EquipmentModelCopyWith<$Res>  {
  factory $EquipmentModelCopyWith(EquipmentModel value, $Res Function(EquipmentModel) _then) = _$EquipmentModelCopyWithImpl;
@useResult
$Res call({
 String id, String createdAt, String updatedAt, String equipmentId, String name, String cmmsSystem, bool isCorrosionLoopAvailable, String? corrosionLoopId, bool isDeleted, CorrosionLoopModel? corrosionLoop
});


$CorrosionLoopModelCopyWith<$Res>? get corrosionLoop;

}
/// @nodoc
class _$EquipmentModelCopyWithImpl<$Res>
    implements $EquipmentModelCopyWith<$Res> {
  _$EquipmentModelCopyWithImpl(this._self, this._then);

  final EquipmentModel _self;
  final $Res Function(EquipmentModel) _then;

/// Create a copy of EquipmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? equipmentId = null,Object? name = null,Object? cmmsSystem = null,Object? isCorrosionLoopAvailable = null,Object? corrosionLoopId = freezed,Object? isDeleted = null,Object? corrosionLoop = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cmmsSystem: null == cmmsSystem ? _self.cmmsSystem : cmmsSystem // ignore: cast_nullable_to_non_nullable
as String,isCorrosionLoopAvailable: null == isCorrosionLoopAvailable ? _self.isCorrosionLoopAvailable : isCorrosionLoopAvailable // ignore: cast_nullable_to_non_nullable
as bool,corrosionLoopId: freezed == corrosionLoopId ? _self.corrosionLoopId : corrosionLoopId // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,corrosionLoop: freezed == corrosionLoop ? _self.corrosionLoop : corrosionLoop // ignore: cast_nullable_to_non_nullable
as CorrosionLoopModel?,
  ));
}
/// Create a copy of EquipmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrosionLoopModelCopyWith<$Res>? get corrosionLoop {
    if (_self.corrosionLoop == null) {
    return null;
  }

  return $CorrosionLoopModelCopyWith<$Res>(_self.corrosionLoop!, (value) {
    return _then(_self.copyWith(corrosionLoop: value));
  });
}
}


/// Adds pattern-matching-related methods to [EquipmentModel].
extension EquipmentModelPatterns on EquipmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EquipmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EquipmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EquipmentModel value)  $default,){
final _that = this;
switch (_that) {
case _EquipmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EquipmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _EquipmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String createdAt,  String updatedAt,  String equipmentId,  String name,  String cmmsSystem,  bool isCorrosionLoopAvailable,  String? corrosionLoopId,  bool isDeleted,  CorrosionLoopModel? corrosionLoop)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EquipmentModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentId,_that.name,_that.cmmsSystem,_that.isCorrosionLoopAvailable,_that.corrosionLoopId,_that.isDeleted,_that.corrosionLoop);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String createdAt,  String updatedAt,  String equipmentId,  String name,  String cmmsSystem,  bool isCorrosionLoopAvailable,  String? corrosionLoopId,  bool isDeleted,  CorrosionLoopModel? corrosionLoop)  $default,) {final _that = this;
switch (_that) {
case _EquipmentModel():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentId,_that.name,_that.cmmsSystem,_that.isCorrosionLoopAvailable,_that.corrosionLoopId,_that.isDeleted,_that.corrosionLoop);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String createdAt,  String updatedAt,  String equipmentId,  String name,  String cmmsSystem,  bool isCorrosionLoopAvailable,  String? corrosionLoopId,  bool isDeleted,  CorrosionLoopModel? corrosionLoop)?  $default,) {final _that = this;
switch (_that) {
case _EquipmentModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentId,_that.name,_that.cmmsSystem,_that.isCorrosionLoopAvailable,_that.corrosionLoopId,_that.isDeleted,_that.corrosionLoop);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EquipmentModel implements EquipmentModel {
  const _EquipmentModel({required this.id, required this.createdAt, required this.updatedAt, required this.equipmentId, required this.name, required this.cmmsSystem, required this.isCorrosionLoopAvailable, this.corrosionLoopId, required this.isDeleted, this.corrosionLoop});
  factory _EquipmentModel.fromJson(Map<String, dynamic> json) => _$EquipmentModelFromJson(json);

@override final  String id;
@override final  String createdAt;
@override final  String updatedAt;
@override final  String equipmentId;
@override final  String name;
@override final  String cmmsSystem;
@override final  bool isCorrosionLoopAvailable;
@override final  String? corrosionLoopId;
@override final  bool isDeleted;
@override final  CorrosionLoopModel? corrosionLoop;

/// Create a copy of EquipmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EquipmentModelCopyWith<_EquipmentModel> get copyWith => __$EquipmentModelCopyWithImpl<_EquipmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EquipmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EquipmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.cmmsSystem, cmmsSystem) || other.cmmsSystem == cmmsSystem)&&(identical(other.isCorrosionLoopAvailable, isCorrosionLoopAvailable) || other.isCorrosionLoopAvailable == isCorrosionLoopAvailable)&&(identical(other.corrosionLoopId, corrosionLoopId) || other.corrosionLoopId == corrosionLoopId)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.corrosionLoop, corrosionLoop) || other.corrosionLoop == corrosionLoop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,equipmentId,name,cmmsSystem,isCorrosionLoopAvailable,corrosionLoopId,isDeleted,corrosionLoop);

@override
String toString() {
  return 'EquipmentModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, equipmentId: $equipmentId, name: $name, cmmsSystem: $cmmsSystem, isCorrosionLoopAvailable: $isCorrosionLoopAvailable, corrosionLoopId: $corrosionLoopId, isDeleted: $isDeleted, corrosionLoop: $corrosionLoop)';
}


}

/// @nodoc
abstract mixin class _$EquipmentModelCopyWith<$Res> implements $EquipmentModelCopyWith<$Res> {
  factory _$EquipmentModelCopyWith(_EquipmentModel value, $Res Function(_EquipmentModel) _then) = __$EquipmentModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String createdAt, String updatedAt, String equipmentId, String name, String cmmsSystem, bool isCorrosionLoopAvailable, String? corrosionLoopId, bool isDeleted, CorrosionLoopModel? corrosionLoop
});


@override $CorrosionLoopModelCopyWith<$Res>? get corrosionLoop;

}
/// @nodoc
class __$EquipmentModelCopyWithImpl<$Res>
    implements _$EquipmentModelCopyWith<$Res> {
  __$EquipmentModelCopyWithImpl(this._self, this._then);

  final _EquipmentModel _self;
  final $Res Function(_EquipmentModel) _then;

/// Create a copy of EquipmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? equipmentId = null,Object? name = null,Object? cmmsSystem = null,Object? isCorrosionLoopAvailable = null,Object? corrosionLoopId = freezed,Object? isDeleted = null,Object? corrosionLoop = freezed,}) {
  return _then(_EquipmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cmmsSystem: null == cmmsSystem ? _self.cmmsSystem : cmmsSystem // ignore: cast_nullable_to_non_nullable
as String,isCorrosionLoopAvailable: null == isCorrosionLoopAvailable ? _self.isCorrosionLoopAvailable : isCorrosionLoopAvailable // ignore: cast_nullable_to_non_nullable
as bool,corrosionLoopId: freezed == corrosionLoopId ? _self.corrosionLoopId : corrosionLoopId // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,corrosionLoop: freezed == corrosionLoop ? _self.corrosionLoop : corrosionLoop // ignore: cast_nullable_to_non_nullable
as CorrosionLoopModel?,
  ));
}

/// Create a copy of EquipmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrosionLoopModelCopyWith<$Res>? get corrosionLoop {
    if (_self.corrosionLoop == null) {
    return null;
  }

  return $CorrosionLoopModelCopyWith<$Res>(_self.corrosionLoop!, (value) {
    return _then(_self.copyWith(corrosionLoop: value));
  });
}
}

// dart format on

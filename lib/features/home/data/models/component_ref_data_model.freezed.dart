// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'component_ref_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComponentRefDataModel {

 String get id; String get createdAt; String get updatedAt; String get category; String get value; String? get displayValue;
/// Create a copy of ComponentRefDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComponentRefDataModelCopyWith<ComponentRefDataModel> get copyWith => _$ComponentRefDataModelCopyWithImpl<ComponentRefDataModel>(this as ComponentRefDataModel, _$identity);

  /// Serializes this ComponentRefDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComponentRefDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.category, category) || other.category == category)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,category,value,displayValue);

@override
String toString() {
  return 'ComponentRefDataModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, category: $category, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class $ComponentRefDataModelCopyWith<$Res>  {
  factory $ComponentRefDataModelCopyWith(ComponentRefDataModel value, $Res Function(ComponentRefDataModel) _then) = _$ComponentRefDataModelCopyWithImpl;
@useResult
$Res call({
 String id, String createdAt, String updatedAt, String category, String value, String? displayValue
});




}
/// @nodoc
class _$ComponentRefDataModelCopyWithImpl<$Res>
    implements $ComponentRefDataModelCopyWith<$Res> {
  _$ComponentRefDataModelCopyWithImpl(this._self, this._then);

  final ComponentRefDataModel _self;
  final $Res Function(ComponentRefDataModel) _then;

/// Create a copy of ComponentRefDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? category = null,Object? value = null,Object? displayValue = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,displayValue: freezed == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComponentRefDataModel].
extension ComponentRefDataModelPatterns on ComponentRefDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComponentRefDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComponentRefDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComponentRefDataModel value)  $default,){
final _that = this;
switch (_that) {
case _ComponentRefDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComponentRefDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _ComponentRefDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String createdAt,  String updatedAt,  String category,  String value,  String? displayValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComponentRefDataModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.category,_that.value,_that.displayValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String createdAt,  String updatedAt,  String category,  String value,  String? displayValue)  $default,) {final _that = this;
switch (_that) {
case _ComponentRefDataModel():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.category,_that.value,_that.displayValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String createdAt,  String updatedAt,  String category,  String value,  String? displayValue)?  $default,) {final _that = this;
switch (_that) {
case _ComponentRefDataModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.category,_that.value,_that.displayValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComponentRefDataModel implements ComponentRefDataModel {
  const _ComponentRefDataModel({required this.id, required this.createdAt, required this.updatedAt, required this.category, required this.value, this.displayValue});
  factory _ComponentRefDataModel.fromJson(Map<String, dynamic> json) => _$ComponentRefDataModelFromJson(json);

@override final  String id;
@override final  String createdAt;
@override final  String updatedAt;
@override final  String category;
@override final  String value;
@override final  String? displayValue;

/// Create a copy of ComponentRefDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComponentRefDataModelCopyWith<_ComponentRefDataModel> get copyWith => __$ComponentRefDataModelCopyWithImpl<_ComponentRefDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComponentRefDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComponentRefDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.category, category) || other.category == category)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,category,value,displayValue);

@override
String toString() {
  return 'ComponentRefDataModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, category: $category, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class _$ComponentRefDataModelCopyWith<$Res> implements $ComponentRefDataModelCopyWith<$Res> {
  factory _$ComponentRefDataModelCopyWith(_ComponentRefDataModel value, $Res Function(_ComponentRefDataModel) _then) = __$ComponentRefDataModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String createdAt, String updatedAt, String category, String value, String? displayValue
});




}
/// @nodoc
class __$ComponentRefDataModelCopyWithImpl<$Res>
    implements _$ComponentRefDataModelCopyWith<$Res> {
  __$ComponentRefDataModelCopyWithImpl(this._self, this._then);

  final _ComponentRefDataModel _self;
  final $Res Function(_ComponentRefDataModel) _then;

/// Create a copy of ComponentRefDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? category = null,Object? value = null,Object? displayValue = freezed,}) {
  return _then(_ComponentRefDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,displayValue: freezed == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

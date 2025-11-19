// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefDataModel {

 String get id; String get value; String? get displayValue;
/// Create a copy of RefDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefDataModelCopyWith<RefDataModel> get copyWith => _$RefDataModelCopyWithImpl<RefDataModel>(this as RefDataModel, _$identity);

  /// Serializes this RefDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,displayValue);

@override
String toString() {
  return 'RefDataModel(id: $id, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class $RefDataModelCopyWith<$Res>  {
  factory $RefDataModelCopyWith(RefDataModel value, $Res Function(RefDataModel) _then) = _$RefDataModelCopyWithImpl;
@useResult
$Res call({
 String id, String value, String? displayValue
});




}
/// @nodoc
class _$RefDataModelCopyWithImpl<$Res>
    implements $RefDataModelCopyWith<$Res> {
  _$RefDataModelCopyWithImpl(this._self, this._then);

  final RefDataModel _self;
  final $Res Function(RefDataModel) _then;

/// Create a copy of RefDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? value = null,Object? displayValue = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,displayValue: freezed == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RefDataModel].
extension RefDataModelPatterns on RefDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefDataModel value)  $default,){
final _that = this;
switch (_that) {
case _RefDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _RefDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String value,  String? displayValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefDataModel() when $default != null:
return $default(_that.id,_that.value,_that.displayValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String value,  String? displayValue)  $default,) {final _that = this;
switch (_that) {
case _RefDataModel():
return $default(_that.id,_that.value,_that.displayValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String value,  String? displayValue)?  $default,) {final _that = this;
switch (_that) {
case _RefDataModel() when $default != null:
return $default(_that.id,_that.value,_that.displayValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefDataModel implements RefDataModel {
  const _RefDataModel({required this.id, required this.value, this.displayValue});
  factory _RefDataModel.fromJson(Map<String, dynamic> json) => _$RefDataModelFromJson(json);

@override final  String id;
@override final  String value;
@override final  String? displayValue;

/// Create a copy of RefDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefDataModelCopyWith<_RefDataModel> get copyWith => __$RefDataModelCopyWithImpl<_RefDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,displayValue);

@override
String toString() {
  return 'RefDataModel(id: $id, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class _$RefDataModelCopyWith<$Res> implements $RefDataModelCopyWith<$Res> {
  factory _$RefDataModelCopyWith(_RefDataModel value, $Res Function(_RefDataModel) _then) = __$RefDataModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String value, String? displayValue
});




}
/// @nodoc
class __$RefDataModelCopyWithImpl<$Res>
    implements _$RefDataModelCopyWith<$Res> {
  __$RefDataModelCopyWithImpl(this._self, this._then);

  final _RefDataModel _self;
  final $Res Function(_RefDataModel) _then;

/// Create a copy of RefDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? value = null,Object? displayValue = freezed,}) {
  return _then(_RefDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,displayValue: freezed == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

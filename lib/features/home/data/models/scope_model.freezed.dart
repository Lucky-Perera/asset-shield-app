// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scope_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Scope {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get scheduleId; String get damageMechanism; String get inspectionEffectiveness; bool get isDeleted; List<InspectionMethod> get inspectionMethods; List<PotentialEmergentWork> get potentialEmergentWorks;
/// Create a copy of Scope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScopeCopyWith<Scope> get copyWith => _$ScopeCopyWithImpl<Scope>(this as Scope, _$identity);

  /// Serializes this Scope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Scope&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.damageMechanism, damageMechanism) || other.damageMechanism == damageMechanism)&&(identical(other.inspectionEffectiveness, inspectionEffectiveness) || other.inspectionEffectiveness == inspectionEffectiveness)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other.inspectionMethods, inspectionMethods)&&const DeepCollectionEquality().equals(other.potentialEmergentWorks, potentialEmergentWorks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleId,damageMechanism,inspectionEffectiveness,isDeleted,const DeepCollectionEquality().hash(inspectionMethods),const DeepCollectionEquality().hash(potentialEmergentWorks));

@override
String toString() {
  return 'Scope(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleId: $scheduleId, damageMechanism: $damageMechanism, inspectionEffectiveness: $inspectionEffectiveness, isDeleted: $isDeleted, inspectionMethods: $inspectionMethods, potentialEmergentWorks: $potentialEmergentWorks)';
}


}

/// @nodoc
abstract mixin class $ScopeCopyWith<$Res>  {
  factory $ScopeCopyWith(Scope value, $Res Function(Scope) _then) = _$ScopeCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String scheduleId, String damageMechanism, String inspectionEffectiveness, bool isDeleted, List<InspectionMethod> inspectionMethods, List<PotentialEmergentWork> potentialEmergentWorks
});




}
/// @nodoc
class _$ScopeCopyWithImpl<$Res>
    implements $ScopeCopyWith<$Res> {
  _$ScopeCopyWithImpl(this._self, this._then);

  final Scope _self;
  final $Res Function(Scope) _then;

/// Create a copy of Scope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scheduleId = null,Object? damageMechanism = null,Object? inspectionEffectiveness = null,Object? isDeleted = null,Object? inspectionMethods = null,Object? potentialEmergentWorks = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,damageMechanism: null == damageMechanism ? _self.damageMechanism : damageMechanism // ignore: cast_nullable_to_non_nullable
as String,inspectionEffectiveness: null == inspectionEffectiveness ? _self.inspectionEffectiveness : inspectionEffectiveness // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,inspectionMethods: null == inspectionMethods ? _self.inspectionMethods : inspectionMethods // ignore: cast_nullable_to_non_nullable
as List<InspectionMethod>,potentialEmergentWorks: null == potentialEmergentWorks ? _self.potentialEmergentWorks : potentialEmergentWorks // ignore: cast_nullable_to_non_nullable
as List<PotentialEmergentWork>,
  ));
}

}


/// Adds pattern-matching-related methods to [Scope].
extension ScopePatterns on Scope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Scope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Scope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Scope value)  $default,){
final _that = this;
switch (_that) {
case _Scope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Scope value)?  $default,){
final _that = this;
switch (_that) {
case _Scope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scheduleId,  String damageMechanism,  String inspectionEffectiveness,  bool isDeleted,  List<InspectionMethod> inspectionMethods,  List<PotentialEmergentWork> potentialEmergentWorks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Scope() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleId,_that.damageMechanism,_that.inspectionEffectiveness,_that.isDeleted,_that.inspectionMethods,_that.potentialEmergentWorks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scheduleId,  String damageMechanism,  String inspectionEffectiveness,  bool isDeleted,  List<InspectionMethod> inspectionMethods,  List<PotentialEmergentWork> potentialEmergentWorks)  $default,) {final _that = this;
switch (_that) {
case _Scope():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleId,_that.damageMechanism,_that.inspectionEffectiveness,_that.isDeleted,_that.inspectionMethods,_that.potentialEmergentWorks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scheduleId,  String damageMechanism,  String inspectionEffectiveness,  bool isDeleted,  List<InspectionMethod> inspectionMethods,  List<PotentialEmergentWork> potentialEmergentWorks)?  $default,) {final _that = this;
switch (_that) {
case _Scope() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleId,_that.damageMechanism,_that.inspectionEffectiveness,_that.isDeleted,_that.inspectionMethods,_that.potentialEmergentWorks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Scope implements Scope {
  const _Scope({required this.id, required this.createdAt, required this.updatedAt, required this.scheduleId, required this.damageMechanism, required this.inspectionEffectiveness, required this.isDeleted, required final  List<InspectionMethod> inspectionMethods, required final  List<PotentialEmergentWork> potentialEmergentWorks}): _inspectionMethods = inspectionMethods,_potentialEmergentWorks = potentialEmergentWorks;
  factory _Scope.fromJson(Map<String, dynamic> json) => _$ScopeFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String scheduleId;
@override final  String damageMechanism;
@override final  String inspectionEffectiveness;
@override final  bool isDeleted;
 final  List<InspectionMethod> _inspectionMethods;
@override List<InspectionMethod> get inspectionMethods {
  if (_inspectionMethods is EqualUnmodifiableListView) return _inspectionMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inspectionMethods);
}

 final  List<PotentialEmergentWork> _potentialEmergentWorks;
@override List<PotentialEmergentWork> get potentialEmergentWorks {
  if (_potentialEmergentWorks is EqualUnmodifiableListView) return _potentialEmergentWorks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_potentialEmergentWorks);
}


/// Create a copy of Scope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScopeCopyWith<_Scope> get copyWith => __$ScopeCopyWithImpl<_Scope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Scope&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.damageMechanism, damageMechanism) || other.damageMechanism == damageMechanism)&&(identical(other.inspectionEffectiveness, inspectionEffectiveness) || other.inspectionEffectiveness == inspectionEffectiveness)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other._inspectionMethods, _inspectionMethods)&&const DeepCollectionEquality().equals(other._potentialEmergentWorks, _potentialEmergentWorks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleId,damageMechanism,inspectionEffectiveness,isDeleted,const DeepCollectionEquality().hash(_inspectionMethods),const DeepCollectionEquality().hash(_potentialEmergentWorks));

@override
String toString() {
  return 'Scope(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleId: $scheduleId, damageMechanism: $damageMechanism, inspectionEffectiveness: $inspectionEffectiveness, isDeleted: $isDeleted, inspectionMethods: $inspectionMethods, potentialEmergentWorks: $potentialEmergentWorks)';
}


}

/// @nodoc
abstract mixin class _$ScopeCopyWith<$Res> implements $ScopeCopyWith<$Res> {
  factory _$ScopeCopyWith(_Scope value, $Res Function(_Scope) _then) = __$ScopeCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String scheduleId, String damageMechanism, String inspectionEffectiveness, bool isDeleted, List<InspectionMethod> inspectionMethods, List<PotentialEmergentWork> potentialEmergentWorks
});




}
/// @nodoc
class __$ScopeCopyWithImpl<$Res>
    implements _$ScopeCopyWith<$Res> {
  __$ScopeCopyWithImpl(this._self, this._then);

  final _Scope _self;
  final $Res Function(_Scope) _then;

/// Create a copy of Scope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scheduleId = null,Object? damageMechanism = null,Object? inspectionEffectiveness = null,Object? isDeleted = null,Object? inspectionMethods = null,Object? potentialEmergentWorks = null,}) {
  return _then(_Scope(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,damageMechanism: null == damageMechanism ? _self.damageMechanism : damageMechanism // ignore: cast_nullable_to_non_nullable
as String,inspectionEffectiveness: null == inspectionEffectiveness ? _self.inspectionEffectiveness : inspectionEffectiveness // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,inspectionMethods: null == inspectionMethods ? _self._inspectionMethods : inspectionMethods // ignore: cast_nullable_to_non_nullable
as List<InspectionMethod>,potentialEmergentWorks: null == potentialEmergentWorks ? _self._potentialEmergentWorks : potentialEmergentWorks // ignore: cast_nullable_to_non_nullable
as List<PotentialEmergentWork>,
  ));
}


}


/// @nodoc
mixin _$ScopeResponse {

 bool get success; Scope? get data;
/// Create a copy of ScopeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScopeResponseCopyWith<ScopeResponse> get copyWith => _$ScopeResponseCopyWithImpl<ScopeResponse>(this as ScopeResponse, _$identity);

  /// Serializes this ScopeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScopeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ScopeResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ScopeResponseCopyWith<$Res>  {
  factory $ScopeResponseCopyWith(ScopeResponse value, $Res Function(ScopeResponse) _then) = _$ScopeResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Scope? data
});


$ScopeCopyWith<$Res>? get data;

}
/// @nodoc
class _$ScopeResponseCopyWithImpl<$Res>
    implements $ScopeResponseCopyWith<$Res> {
  _$ScopeResponseCopyWithImpl(this._self, this._then);

  final ScopeResponse _self;
  final $Res Function(ScopeResponse) _then;

/// Create a copy of ScopeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Scope?,
  ));
}
/// Create a copy of ScopeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScopeCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ScopeCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScopeResponse].
extension ScopeResponsePatterns on ScopeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScopeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScopeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScopeResponse value)  $default,){
final _that = this;
switch (_that) {
case _ScopeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScopeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ScopeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Scope? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScopeResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Scope? data)  $default,) {final _that = this;
switch (_that) {
case _ScopeResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Scope? data)?  $default,) {final _that = this;
switch (_that) {
case _ScopeResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScopeResponse implements ScopeResponse {
  const _ScopeResponse({required this.success, this.data});
  factory _ScopeResponse.fromJson(Map<String, dynamic> json) => _$ScopeResponseFromJson(json);

@override final  bool success;
@override final  Scope? data;

/// Create a copy of ScopeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScopeResponseCopyWith<_ScopeResponse> get copyWith => __$ScopeResponseCopyWithImpl<_ScopeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScopeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScopeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ScopeResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ScopeResponseCopyWith<$Res> implements $ScopeResponseCopyWith<$Res> {
  factory _$ScopeResponseCopyWith(_ScopeResponse value, $Res Function(_ScopeResponse) _then) = __$ScopeResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Scope? data
});


@override $ScopeCopyWith<$Res>? get data;

}
/// @nodoc
class __$ScopeResponseCopyWithImpl<$Res>
    implements _$ScopeResponseCopyWith<$Res> {
  __$ScopeResponseCopyWithImpl(this._self, this._then);

  final _ScopeResponse _self;
  final $Res Function(_ScopeResponse) _then;

/// Create a copy of ScopeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_ScopeResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Scope?,
  ));
}

/// Create a copy of ScopeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScopeCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ScopeCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ReferenceData {

 String get id; String get value; String? get displayValue;
/// Create a copy of ReferenceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<ReferenceData> get copyWith => _$ReferenceDataCopyWithImpl<ReferenceData>(this as ReferenceData, _$identity);

  /// Serializes this ReferenceData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferenceData&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,displayValue);

@override
String toString() {
  return 'ReferenceData(id: $id, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class $ReferenceDataCopyWith<$Res>  {
  factory $ReferenceDataCopyWith(ReferenceData value, $Res Function(ReferenceData) _then) = _$ReferenceDataCopyWithImpl;
@useResult
$Res call({
 String id, String value, String? displayValue
});




}
/// @nodoc
class _$ReferenceDataCopyWithImpl<$Res>
    implements $ReferenceDataCopyWith<$Res> {
  _$ReferenceDataCopyWithImpl(this._self, this._then);

  final ReferenceData _self;
  final $Res Function(ReferenceData) _then;

/// Create a copy of ReferenceData
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


/// Adds pattern-matching-related methods to [ReferenceData].
extension ReferenceDataPatterns on ReferenceData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferenceData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferenceData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferenceData value)  $default,){
final _that = this;
switch (_that) {
case _ReferenceData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferenceData value)?  $default,){
final _that = this;
switch (_that) {
case _ReferenceData() when $default != null:
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
case _ReferenceData() when $default != null:
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
case _ReferenceData():
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
case _ReferenceData() when $default != null:
return $default(_that.id,_that.value,_that.displayValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReferenceData implements ReferenceData {
  const _ReferenceData({required this.id, required this.value, this.displayValue});
  factory _ReferenceData.fromJson(Map<String, dynamic> json) => _$ReferenceDataFromJson(json);

@override final  String id;
@override final  String value;
@override final  String? displayValue;

/// Create a copy of ReferenceData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferenceDataCopyWith<_ReferenceData> get copyWith => __$ReferenceDataCopyWithImpl<_ReferenceData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReferenceDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferenceData&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,displayValue);

@override
String toString() {
  return 'ReferenceData(id: $id, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class _$ReferenceDataCopyWith<$Res> implements $ReferenceDataCopyWith<$Res> {
  factory _$ReferenceDataCopyWith(_ReferenceData value, $Res Function(_ReferenceData) _then) = __$ReferenceDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String value, String? displayValue
});




}
/// @nodoc
class __$ReferenceDataCopyWithImpl<$Res>
    implements _$ReferenceDataCopyWith<$Res> {
  __$ReferenceDataCopyWithImpl(this._self, this._then);

  final _ReferenceData _self;
  final $Res Function(_ReferenceData) _then;

/// Create a copy of ReferenceData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? value = null,Object? displayValue = freezed,}) {
  return _then(_ReferenceData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,displayValue: freezed == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InspectionMethod {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get scopeId; String get methodId; String get specialAccessId; String get insulationRemovalId; String get cleaningId; String get location; String get notes; bool get isDeleted; ReferenceData get method; ReferenceData get specialAccess; ReferenceData get insulationRemoval; ReferenceData get cleaning;
/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InspectionMethodCopyWith<InspectionMethod> get copyWith => _$InspectionMethodCopyWithImpl<InspectionMethod>(this as InspectionMethod, _$identity);

  /// Serializes this InspectionMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InspectionMethod&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scopeId, scopeId) || other.scopeId == scopeId)&&(identical(other.methodId, methodId) || other.methodId == methodId)&&(identical(other.specialAccessId, specialAccessId) || other.specialAccessId == specialAccessId)&&(identical(other.insulationRemovalId, insulationRemovalId) || other.insulationRemovalId == insulationRemovalId)&&(identical(other.cleaningId, cleaningId) || other.cleaningId == cleaningId)&&(identical(other.location, location) || other.location == location)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.method, method) || other.method == method)&&(identical(other.specialAccess, specialAccess) || other.specialAccess == specialAccess)&&(identical(other.insulationRemoval, insulationRemoval) || other.insulationRemoval == insulationRemoval)&&(identical(other.cleaning, cleaning) || other.cleaning == cleaning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scopeId,methodId,specialAccessId,insulationRemovalId,cleaningId,location,notes,isDeleted,method,specialAccess,insulationRemoval,cleaning);

@override
String toString() {
  return 'InspectionMethod(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scopeId: $scopeId, methodId: $methodId, specialAccessId: $specialAccessId, insulationRemovalId: $insulationRemovalId, cleaningId: $cleaningId, location: $location, notes: $notes, isDeleted: $isDeleted, method: $method, specialAccess: $specialAccess, insulationRemoval: $insulationRemoval, cleaning: $cleaning)';
}


}

/// @nodoc
abstract mixin class $InspectionMethodCopyWith<$Res>  {
  factory $InspectionMethodCopyWith(InspectionMethod value, $Res Function(InspectionMethod) _then) = _$InspectionMethodCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String scopeId, String methodId, String specialAccessId, String insulationRemovalId, String cleaningId, String location, String notes, bool isDeleted, ReferenceData method, ReferenceData specialAccess, ReferenceData insulationRemoval, ReferenceData cleaning
});


$ReferenceDataCopyWith<$Res> get method;$ReferenceDataCopyWith<$Res> get specialAccess;$ReferenceDataCopyWith<$Res> get insulationRemoval;$ReferenceDataCopyWith<$Res> get cleaning;

}
/// @nodoc
class _$InspectionMethodCopyWithImpl<$Res>
    implements $InspectionMethodCopyWith<$Res> {
  _$InspectionMethodCopyWithImpl(this._self, this._then);

  final InspectionMethod _self;
  final $Res Function(InspectionMethod) _then;

/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scopeId = null,Object? methodId = null,Object? specialAccessId = null,Object? insulationRemovalId = null,Object? cleaningId = null,Object? location = null,Object? notes = null,Object? isDeleted = null,Object? method = null,Object? specialAccess = null,Object? insulationRemoval = null,Object? cleaning = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,scopeId: null == scopeId ? _self.scopeId : scopeId // ignore: cast_nullable_to_non_nullable
as String,methodId: null == methodId ? _self.methodId : methodId // ignore: cast_nullable_to_non_nullable
as String,specialAccessId: null == specialAccessId ? _self.specialAccessId : specialAccessId // ignore: cast_nullable_to_non_nullable
as String,insulationRemovalId: null == insulationRemovalId ? _self.insulationRemovalId : insulationRemovalId // ignore: cast_nullable_to_non_nullable
as String,cleaningId: null == cleaningId ? _self.cleaningId : cleaningId // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as ReferenceData,specialAccess: null == specialAccess ? _self.specialAccess : specialAccess // ignore: cast_nullable_to_non_nullable
as ReferenceData,insulationRemoval: null == insulationRemoval ? _self.insulationRemoval : insulationRemoval // ignore: cast_nullable_to_non_nullable
as ReferenceData,cleaning: null == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as ReferenceData,
  ));
}
/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get method {
  
  return $ReferenceDataCopyWith<$Res>(_self.method, (value) {
    return _then(_self.copyWith(method: value));
  });
}/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get specialAccess {
  
  return $ReferenceDataCopyWith<$Res>(_self.specialAccess, (value) {
    return _then(_self.copyWith(specialAccess: value));
  });
}/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get insulationRemoval {
  
  return $ReferenceDataCopyWith<$Res>(_self.insulationRemoval, (value) {
    return _then(_self.copyWith(insulationRemoval: value));
  });
}/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get cleaning {
  
  return $ReferenceDataCopyWith<$Res>(_self.cleaning, (value) {
    return _then(_self.copyWith(cleaning: value));
  });
}
}


/// Adds pattern-matching-related methods to [InspectionMethod].
extension InspectionMethodPatterns on InspectionMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InspectionMethod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InspectionMethod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InspectionMethod value)  $default,){
final _that = this;
switch (_that) {
case _InspectionMethod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InspectionMethod value)?  $default,){
final _that = this;
switch (_that) {
case _InspectionMethod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scopeId,  String methodId,  String specialAccessId,  String insulationRemovalId,  String cleaningId,  String location,  String notes,  bool isDeleted,  ReferenceData method,  ReferenceData specialAccess,  ReferenceData insulationRemoval,  ReferenceData cleaning)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InspectionMethod() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scopeId,_that.methodId,_that.specialAccessId,_that.insulationRemovalId,_that.cleaningId,_that.location,_that.notes,_that.isDeleted,_that.method,_that.specialAccess,_that.insulationRemoval,_that.cleaning);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scopeId,  String methodId,  String specialAccessId,  String insulationRemovalId,  String cleaningId,  String location,  String notes,  bool isDeleted,  ReferenceData method,  ReferenceData specialAccess,  ReferenceData insulationRemoval,  ReferenceData cleaning)  $default,) {final _that = this;
switch (_that) {
case _InspectionMethod():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scopeId,_that.methodId,_that.specialAccessId,_that.insulationRemovalId,_that.cleaningId,_that.location,_that.notes,_that.isDeleted,_that.method,_that.specialAccess,_that.insulationRemoval,_that.cleaning);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scopeId,  String methodId,  String specialAccessId,  String insulationRemovalId,  String cleaningId,  String location,  String notes,  bool isDeleted,  ReferenceData method,  ReferenceData specialAccess,  ReferenceData insulationRemoval,  ReferenceData cleaning)?  $default,) {final _that = this;
switch (_that) {
case _InspectionMethod() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scopeId,_that.methodId,_that.specialAccessId,_that.insulationRemovalId,_that.cleaningId,_that.location,_that.notes,_that.isDeleted,_that.method,_that.specialAccess,_that.insulationRemoval,_that.cleaning);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InspectionMethod implements InspectionMethod {
  const _InspectionMethod({required this.id, required this.createdAt, required this.updatedAt, required this.scopeId, required this.methodId, required this.specialAccessId, required this.insulationRemovalId, required this.cleaningId, required this.location, required this.notes, required this.isDeleted, required this.method, required this.specialAccess, required this.insulationRemoval, required this.cleaning});
  factory _InspectionMethod.fromJson(Map<String, dynamic> json) => _$InspectionMethodFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String scopeId;
@override final  String methodId;
@override final  String specialAccessId;
@override final  String insulationRemovalId;
@override final  String cleaningId;
@override final  String location;
@override final  String notes;
@override final  bool isDeleted;
@override final  ReferenceData method;
@override final  ReferenceData specialAccess;
@override final  ReferenceData insulationRemoval;
@override final  ReferenceData cleaning;

/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InspectionMethodCopyWith<_InspectionMethod> get copyWith => __$InspectionMethodCopyWithImpl<_InspectionMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InspectionMethodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectionMethod&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scopeId, scopeId) || other.scopeId == scopeId)&&(identical(other.methodId, methodId) || other.methodId == methodId)&&(identical(other.specialAccessId, specialAccessId) || other.specialAccessId == specialAccessId)&&(identical(other.insulationRemovalId, insulationRemovalId) || other.insulationRemovalId == insulationRemovalId)&&(identical(other.cleaningId, cleaningId) || other.cleaningId == cleaningId)&&(identical(other.location, location) || other.location == location)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.method, method) || other.method == method)&&(identical(other.specialAccess, specialAccess) || other.specialAccess == specialAccess)&&(identical(other.insulationRemoval, insulationRemoval) || other.insulationRemoval == insulationRemoval)&&(identical(other.cleaning, cleaning) || other.cleaning == cleaning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scopeId,methodId,specialAccessId,insulationRemovalId,cleaningId,location,notes,isDeleted,method,specialAccess,insulationRemoval,cleaning);

@override
String toString() {
  return 'InspectionMethod(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scopeId: $scopeId, methodId: $methodId, specialAccessId: $specialAccessId, insulationRemovalId: $insulationRemovalId, cleaningId: $cleaningId, location: $location, notes: $notes, isDeleted: $isDeleted, method: $method, specialAccess: $specialAccess, insulationRemoval: $insulationRemoval, cleaning: $cleaning)';
}


}

/// @nodoc
abstract mixin class _$InspectionMethodCopyWith<$Res> implements $InspectionMethodCopyWith<$Res> {
  factory _$InspectionMethodCopyWith(_InspectionMethod value, $Res Function(_InspectionMethod) _then) = __$InspectionMethodCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String scopeId, String methodId, String specialAccessId, String insulationRemovalId, String cleaningId, String location, String notes, bool isDeleted, ReferenceData method, ReferenceData specialAccess, ReferenceData insulationRemoval, ReferenceData cleaning
});


@override $ReferenceDataCopyWith<$Res> get method;@override $ReferenceDataCopyWith<$Res> get specialAccess;@override $ReferenceDataCopyWith<$Res> get insulationRemoval;@override $ReferenceDataCopyWith<$Res> get cleaning;

}
/// @nodoc
class __$InspectionMethodCopyWithImpl<$Res>
    implements _$InspectionMethodCopyWith<$Res> {
  __$InspectionMethodCopyWithImpl(this._self, this._then);

  final _InspectionMethod _self;
  final $Res Function(_InspectionMethod) _then;

/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scopeId = null,Object? methodId = null,Object? specialAccessId = null,Object? insulationRemovalId = null,Object? cleaningId = null,Object? location = null,Object? notes = null,Object? isDeleted = null,Object? method = null,Object? specialAccess = null,Object? insulationRemoval = null,Object? cleaning = null,}) {
  return _then(_InspectionMethod(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,scopeId: null == scopeId ? _self.scopeId : scopeId // ignore: cast_nullable_to_non_nullable
as String,methodId: null == methodId ? _self.methodId : methodId // ignore: cast_nullable_to_non_nullable
as String,specialAccessId: null == specialAccessId ? _self.specialAccessId : specialAccessId // ignore: cast_nullable_to_non_nullable
as String,insulationRemovalId: null == insulationRemovalId ? _self.insulationRemovalId : insulationRemovalId // ignore: cast_nullable_to_non_nullable
as String,cleaningId: null == cleaningId ? _self.cleaningId : cleaningId // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as ReferenceData,specialAccess: null == specialAccess ? _self.specialAccess : specialAccess // ignore: cast_nullable_to_non_nullable
as ReferenceData,insulationRemoval: null == insulationRemoval ? _self.insulationRemoval : insulationRemoval // ignore: cast_nullable_to_non_nullable
as ReferenceData,cleaning: null == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as ReferenceData,
  ));
}

/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get method {
  
  return $ReferenceDataCopyWith<$Res>(_self.method, (value) {
    return _then(_self.copyWith(method: value));
  });
}/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get specialAccess {
  
  return $ReferenceDataCopyWith<$Res>(_self.specialAccess, (value) {
    return _then(_self.copyWith(specialAccess: value));
  });
}/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get insulationRemoval {
  
  return $ReferenceDataCopyWith<$Res>(_self.insulationRemoval, (value) {
    return _then(_self.copyWith(insulationRemoval: value));
  });
}/// Create a copy of InspectionMethod
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get cleaning {
  
  return $ReferenceDataCopyWith<$Res>(_self.cleaning, (value) {
    return _then(_self.copyWith(cleaning: value));
  });
}
}


/// @nodoc
mixin _$PotentialEmergentWork {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get scopeId; String get potentialEmergentWorkId; String get likelihoodId; String get notes; bool get isDeleted; ReferenceData get potentialEmergentWork; ReferenceData get likelihood;
/// Create a copy of PotentialEmergentWork
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PotentialEmergentWorkCopyWith<PotentialEmergentWork> get copyWith => _$PotentialEmergentWorkCopyWithImpl<PotentialEmergentWork>(this as PotentialEmergentWork, _$identity);

  /// Serializes this PotentialEmergentWork to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PotentialEmergentWork&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scopeId, scopeId) || other.scopeId == scopeId)&&(identical(other.potentialEmergentWorkId, potentialEmergentWorkId) || other.potentialEmergentWorkId == potentialEmergentWorkId)&&(identical(other.likelihoodId, likelihoodId) || other.likelihoodId == likelihoodId)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.potentialEmergentWork, potentialEmergentWork) || other.potentialEmergentWork == potentialEmergentWork)&&(identical(other.likelihood, likelihood) || other.likelihood == likelihood));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scopeId,potentialEmergentWorkId,likelihoodId,notes,isDeleted,potentialEmergentWork,likelihood);

@override
String toString() {
  return 'PotentialEmergentWork(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scopeId: $scopeId, potentialEmergentWorkId: $potentialEmergentWorkId, likelihoodId: $likelihoodId, notes: $notes, isDeleted: $isDeleted, potentialEmergentWork: $potentialEmergentWork, likelihood: $likelihood)';
}


}

/// @nodoc
abstract mixin class $PotentialEmergentWorkCopyWith<$Res>  {
  factory $PotentialEmergentWorkCopyWith(PotentialEmergentWork value, $Res Function(PotentialEmergentWork) _then) = _$PotentialEmergentWorkCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String scopeId, String potentialEmergentWorkId, String likelihoodId, String notes, bool isDeleted, ReferenceData potentialEmergentWork, ReferenceData likelihood
});


$ReferenceDataCopyWith<$Res> get potentialEmergentWork;$ReferenceDataCopyWith<$Res> get likelihood;

}
/// @nodoc
class _$PotentialEmergentWorkCopyWithImpl<$Res>
    implements $PotentialEmergentWorkCopyWith<$Res> {
  _$PotentialEmergentWorkCopyWithImpl(this._self, this._then);

  final PotentialEmergentWork _self;
  final $Res Function(PotentialEmergentWork) _then;

/// Create a copy of PotentialEmergentWork
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scopeId = null,Object? potentialEmergentWorkId = null,Object? likelihoodId = null,Object? notes = null,Object? isDeleted = null,Object? potentialEmergentWork = null,Object? likelihood = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,scopeId: null == scopeId ? _self.scopeId : scopeId // ignore: cast_nullable_to_non_nullable
as String,potentialEmergentWorkId: null == potentialEmergentWorkId ? _self.potentialEmergentWorkId : potentialEmergentWorkId // ignore: cast_nullable_to_non_nullable
as String,likelihoodId: null == likelihoodId ? _self.likelihoodId : likelihoodId // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,potentialEmergentWork: null == potentialEmergentWork ? _self.potentialEmergentWork : potentialEmergentWork // ignore: cast_nullable_to_non_nullable
as ReferenceData,likelihood: null == likelihood ? _self.likelihood : likelihood // ignore: cast_nullable_to_non_nullable
as ReferenceData,
  ));
}
/// Create a copy of PotentialEmergentWork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get potentialEmergentWork {
  
  return $ReferenceDataCopyWith<$Res>(_self.potentialEmergentWork, (value) {
    return _then(_self.copyWith(potentialEmergentWork: value));
  });
}/// Create a copy of PotentialEmergentWork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get likelihood {
  
  return $ReferenceDataCopyWith<$Res>(_self.likelihood, (value) {
    return _then(_self.copyWith(likelihood: value));
  });
}
}


/// Adds pattern-matching-related methods to [PotentialEmergentWork].
extension PotentialEmergentWorkPatterns on PotentialEmergentWork {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PotentialEmergentWork value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PotentialEmergentWork() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PotentialEmergentWork value)  $default,){
final _that = this;
switch (_that) {
case _PotentialEmergentWork():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PotentialEmergentWork value)?  $default,){
final _that = this;
switch (_that) {
case _PotentialEmergentWork() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scopeId,  String potentialEmergentWorkId,  String likelihoodId,  String notes,  bool isDeleted,  ReferenceData potentialEmergentWork,  ReferenceData likelihood)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PotentialEmergentWork() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scopeId,_that.potentialEmergentWorkId,_that.likelihoodId,_that.notes,_that.isDeleted,_that.potentialEmergentWork,_that.likelihood);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scopeId,  String potentialEmergentWorkId,  String likelihoodId,  String notes,  bool isDeleted,  ReferenceData potentialEmergentWork,  ReferenceData likelihood)  $default,) {final _that = this;
switch (_that) {
case _PotentialEmergentWork():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scopeId,_that.potentialEmergentWorkId,_that.likelihoodId,_that.notes,_that.isDeleted,_that.potentialEmergentWork,_that.likelihood);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scopeId,  String potentialEmergentWorkId,  String likelihoodId,  String notes,  bool isDeleted,  ReferenceData potentialEmergentWork,  ReferenceData likelihood)?  $default,) {final _that = this;
switch (_that) {
case _PotentialEmergentWork() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scopeId,_that.potentialEmergentWorkId,_that.likelihoodId,_that.notes,_that.isDeleted,_that.potentialEmergentWork,_that.likelihood);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PotentialEmergentWork implements PotentialEmergentWork {
  const _PotentialEmergentWork({required this.id, required this.createdAt, required this.updatedAt, required this.scopeId, required this.potentialEmergentWorkId, required this.likelihoodId, required this.notes, required this.isDeleted, required this.potentialEmergentWork, required this.likelihood});
  factory _PotentialEmergentWork.fromJson(Map<String, dynamic> json) => _$PotentialEmergentWorkFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String scopeId;
@override final  String potentialEmergentWorkId;
@override final  String likelihoodId;
@override final  String notes;
@override final  bool isDeleted;
@override final  ReferenceData potentialEmergentWork;
@override final  ReferenceData likelihood;

/// Create a copy of PotentialEmergentWork
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PotentialEmergentWorkCopyWith<_PotentialEmergentWork> get copyWith => __$PotentialEmergentWorkCopyWithImpl<_PotentialEmergentWork>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PotentialEmergentWorkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PotentialEmergentWork&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scopeId, scopeId) || other.scopeId == scopeId)&&(identical(other.potentialEmergentWorkId, potentialEmergentWorkId) || other.potentialEmergentWorkId == potentialEmergentWorkId)&&(identical(other.likelihoodId, likelihoodId) || other.likelihoodId == likelihoodId)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.potentialEmergentWork, potentialEmergentWork) || other.potentialEmergentWork == potentialEmergentWork)&&(identical(other.likelihood, likelihood) || other.likelihood == likelihood));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scopeId,potentialEmergentWorkId,likelihoodId,notes,isDeleted,potentialEmergentWork,likelihood);

@override
String toString() {
  return 'PotentialEmergentWork(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scopeId: $scopeId, potentialEmergentWorkId: $potentialEmergentWorkId, likelihoodId: $likelihoodId, notes: $notes, isDeleted: $isDeleted, potentialEmergentWork: $potentialEmergentWork, likelihood: $likelihood)';
}


}

/// @nodoc
abstract mixin class _$PotentialEmergentWorkCopyWith<$Res> implements $PotentialEmergentWorkCopyWith<$Res> {
  factory _$PotentialEmergentWorkCopyWith(_PotentialEmergentWork value, $Res Function(_PotentialEmergentWork) _then) = __$PotentialEmergentWorkCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String scopeId, String potentialEmergentWorkId, String likelihoodId, String notes, bool isDeleted, ReferenceData potentialEmergentWork, ReferenceData likelihood
});


@override $ReferenceDataCopyWith<$Res> get potentialEmergentWork;@override $ReferenceDataCopyWith<$Res> get likelihood;

}
/// @nodoc
class __$PotentialEmergentWorkCopyWithImpl<$Res>
    implements _$PotentialEmergentWorkCopyWith<$Res> {
  __$PotentialEmergentWorkCopyWithImpl(this._self, this._then);

  final _PotentialEmergentWork _self;
  final $Res Function(_PotentialEmergentWork) _then;

/// Create a copy of PotentialEmergentWork
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scopeId = null,Object? potentialEmergentWorkId = null,Object? likelihoodId = null,Object? notes = null,Object? isDeleted = null,Object? potentialEmergentWork = null,Object? likelihood = null,}) {
  return _then(_PotentialEmergentWork(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,scopeId: null == scopeId ? _self.scopeId : scopeId // ignore: cast_nullable_to_non_nullable
as String,potentialEmergentWorkId: null == potentialEmergentWorkId ? _self.potentialEmergentWorkId : potentialEmergentWorkId // ignore: cast_nullable_to_non_nullable
as String,likelihoodId: null == likelihoodId ? _self.likelihoodId : likelihoodId // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,potentialEmergentWork: null == potentialEmergentWork ? _self.potentialEmergentWork : potentialEmergentWork // ignore: cast_nullable_to_non_nullable
as ReferenceData,likelihood: null == likelihood ? _self.likelihood : likelihood // ignore: cast_nullable_to_non_nullable
as ReferenceData,
  ));
}

/// Create a copy of PotentialEmergentWork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get potentialEmergentWork {
  
  return $ReferenceDataCopyWith<$Res>(_self.potentialEmergentWork, (value) {
    return _then(_self.copyWith(potentialEmergentWork: value));
  });
}/// Create a copy of PotentialEmergentWork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res> get likelihood {
  
  return $ReferenceDataCopyWith<$Res>(_self.likelihood, (value) {
    return _then(_self.copyWith(likelihood: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecordState {

 bool get isLoading; String? get error; RecordResponse? get record;
/// Create a copy of RecordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordStateCopyWith<RecordState> get copyWith => _$RecordStateCopyWithImpl<RecordState>(this as RecordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.record, record) || other.record == record));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,record);

@override
String toString() {
  return 'RecordState(isLoading: $isLoading, error: $error, record: $record)';
}


}

/// @nodoc
abstract mixin class $RecordStateCopyWith<$Res>  {
  factory $RecordStateCopyWith(RecordState value, $Res Function(RecordState) _then) = _$RecordStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? error, RecordResponse? record
});


$RecordResponseCopyWith<$Res>? get record;

}
/// @nodoc
class _$RecordStateCopyWithImpl<$Res>
    implements $RecordStateCopyWith<$Res> {
  _$RecordStateCopyWithImpl(this._self, this._then);

  final RecordState _self;
  final $Res Function(RecordState) _then;

/// Create a copy of RecordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? error = freezed,Object? record = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,record: freezed == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as RecordResponse?,
  ));
}
/// Create a copy of RecordState
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


/// Adds pattern-matching-related methods to [RecordState].
extension RecordStatePatterns on RecordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordState value)  $default,){
final _that = this;
switch (_that) {
case _RecordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordState value)?  $default,){
final _that = this;
switch (_that) {
case _RecordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? error,  RecordResponse? record)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordState() when $default != null:
return $default(_that.isLoading,_that.error,_that.record);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? error,  RecordResponse? record)  $default,) {final _that = this;
switch (_that) {
case _RecordState():
return $default(_that.isLoading,_that.error,_that.record);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? error,  RecordResponse? record)?  $default,) {final _that = this;
switch (_that) {
case _RecordState() when $default != null:
return $default(_that.isLoading,_that.error,_that.record);case _:
  return null;

}
}

}

/// @nodoc


class _RecordState implements RecordState {
  const _RecordState({this.isLoading = false, this.error, this.record});
  

@override@JsonKey() final  bool isLoading;
@override final  String? error;
@override final  RecordResponse? record;

/// Create a copy of RecordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordStateCopyWith<_RecordState> get copyWith => __$RecordStateCopyWithImpl<_RecordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.record, record) || other.record == record));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,record);

@override
String toString() {
  return 'RecordState(isLoading: $isLoading, error: $error, record: $record)';
}


}

/// @nodoc
abstract mixin class _$RecordStateCopyWith<$Res> implements $RecordStateCopyWith<$Res> {
  factory _$RecordStateCopyWith(_RecordState value, $Res Function(_RecordState) _then) = __$RecordStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? error, RecordResponse? record
});


@override $RecordResponseCopyWith<$Res>? get record;

}
/// @nodoc
class __$RecordStateCopyWithImpl<$Res>
    implements _$RecordStateCopyWith<$Res> {
  __$RecordStateCopyWithImpl(this._self, this._then);

  final _RecordState _self;
  final $Res Function(_RecordState) _then;

/// Create a copy of RecordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? error = freezed,Object? record = freezed,}) {
  return _then(_RecordState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,record: freezed == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as RecordResponse?,
  ));
}

/// Create a copy of RecordState
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

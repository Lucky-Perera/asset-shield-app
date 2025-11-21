// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleResponse {

 bool get success; ScheduleData get data;
/// Create a copy of ScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleResponseCopyWith<ScheduleResponse> get copyWith => _$ScheduleResponseCopyWithImpl<ScheduleResponse>(this as ScheduleResponse, _$identity);

  /// Serializes this ScheduleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ScheduleResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ScheduleResponseCopyWith<$Res>  {
  factory $ScheduleResponseCopyWith(ScheduleResponse value, $Res Function(ScheduleResponse) _then) = _$ScheduleResponseCopyWithImpl;
@useResult
$Res call({
 bool success, ScheduleData data
});


$ScheduleDataCopyWith<$Res> get data;

}
/// @nodoc
class _$ScheduleResponseCopyWithImpl<$Res>
    implements $ScheduleResponseCopyWith<$Res> {
  _$ScheduleResponseCopyWithImpl(this._self, this._then);

  final ScheduleResponse _self;
  final $Res Function(ScheduleResponse) _then;

/// Create a copy of ScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ScheduleData,
  ));
}
/// Create a copy of ScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleDataCopyWith<$Res> get data {
  
  return $ScheduleDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleResponse].
extension ScheduleResponsePatterns on ScheduleResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleResponse value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ScheduleData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ScheduleData data)  $default,) {final _that = this;
switch (_that) {
case _ScheduleResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ScheduleData data)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleResponse implements ScheduleResponse {
  const _ScheduleResponse({required this.success, required this.data});
  factory _ScheduleResponse.fromJson(Map<String, dynamic> json) => _$ScheduleResponseFromJson(json);

@override final  bool success;
@override final  ScheduleData data;

/// Create a copy of ScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleResponseCopyWith<_ScheduleResponse> get copyWith => __$ScheduleResponseCopyWithImpl<_ScheduleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ScheduleResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ScheduleResponseCopyWith<$Res> implements $ScheduleResponseCopyWith<$Res> {
  factory _$ScheduleResponseCopyWith(_ScheduleResponse value, $Res Function(_ScheduleResponse) _then) = __$ScheduleResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, ScheduleData data
});


@override $ScheduleDataCopyWith<$Res> get data;

}
/// @nodoc
class __$ScheduleResponseCopyWithImpl<$Res>
    implements _$ScheduleResponseCopyWith<$Res> {
  __$ScheduleResponseCopyWithImpl(this._self, this._then);

  final _ScheduleResponse _self;
  final $Res Function(_ScheduleResponse) _then;

/// Create a copy of ScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ScheduleResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ScheduleData,
  ));
}

/// Create a copy of ScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleDataCopyWith<$Res> get data {
  
  return $ScheduleDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ScheduleData {

 List<Schedule> get data; Pagination get pagination;
/// Create a copy of ScheduleData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleDataCopyWith<ScheduleData> get copyWith => _$ScheduleDataCopyWithImpl<ScheduleData>(this as ScheduleData, _$identity);

  /// Serializes this ScheduleData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleData&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'ScheduleData(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ScheduleDataCopyWith<$Res>  {
  factory $ScheduleDataCopyWith(ScheduleData value, $Res Function(ScheduleData) _then) = _$ScheduleDataCopyWithImpl;
@useResult
$Res call({
 List<Schedule> data, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$ScheduleDataCopyWithImpl<$Res>
    implements $ScheduleDataCopyWith<$Res> {
  _$ScheduleDataCopyWithImpl(this._self, this._then);

  final ScheduleData _self;
  final $Res Function(ScheduleData) _then;

/// Create a copy of ScheduleData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Schedule>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}
/// Create a copy of ScheduleData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleData].
extension ScheduleDataPatterns on ScheduleData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleData value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleData value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Schedule> data,  Pagination pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleData() when $default != null:
return $default(_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Schedule> data,  Pagination pagination)  $default,) {final _that = this;
switch (_that) {
case _ScheduleData():
return $default(_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Schedule> data,  Pagination pagination)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleData() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleData implements ScheduleData {
  const _ScheduleData({required final  List<Schedule> data, required this.pagination}): _data = data;
  factory _ScheduleData.fromJson(Map<String, dynamic> json) => _$ScheduleDataFromJson(json);

 final  List<Schedule> _data;
@override List<Schedule> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  Pagination pagination;

/// Create a copy of ScheduleData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleDataCopyWith<_ScheduleData> get copyWith => __$ScheduleDataCopyWithImpl<_ScheduleData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleData&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'ScheduleData(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$ScheduleDataCopyWith<$Res> implements $ScheduleDataCopyWith<$Res> {
  factory _$ScheduleDataCopyWith(_ScheduleData value, $Res Function(_ScheduleData) _then) = __$ScheduleDataCopyWithImpl;
@override @useResult
$Res call({
 List<Schedule> data, Pagination pagination
});


@override $PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$ScheduleDataCopyWithImpl<$Res>
    implements _$ScheduleDataCopyWith<$Res> {
  __$ScheduleDataCopyWithImpl(this._self, this._then);

  final _ScheduleData _self;
  final $Res Function(_ScheduleData) _then;

/// Create a copy of ScheduleData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_ScheduleData(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Schedule>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}

/// Create a copy of ScheduleData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$Pagination {

 int get total; int get page; int get limit; int get totalPages;
/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationCopyWith<Pagination> get copyWith => _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'Pagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res>  {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) _then) = _$PaginationCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class _$PaginationCopyWithImpl<$Res>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._self, this._then);

  final Pagination _self;
  final $Res Function(Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Pagination].
extension PaginationPatterns on Pagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pagination value)  $default,){
final _that = this;
switch (_that) {
case _Pagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pagination value)?  $default,){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _Pagination():
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pagination implements Pagination {
  const _Pagination({required this.total, required this.page, required this.limit, required this.totalPages});
  factory _Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);

@override final  int total;
@override final  int page;
@override final  int limit;
@override final  int totalPages;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationCopyWith<_Pagination> get copyWith => __$PaginationCopyWithImpl<_Pagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'Pagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(_Pagination value, $Res Function(_Pagination) _then) = __$PaginationCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class __$PaginationCopyWithImpl<$Res>
    implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(this._self, this._then);

  final _Pagination _self;
  final $Res Function(_Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? totalPages = null,}) {
  return _then(_Pagination(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Schedule {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get scheduleID; String get equipmentId; Equipment? get equipment; List<ScheduleComponent> get components; String get description; String get scheduleTypeId; ReferenceData? get scheduleType; String get status; DateTime get dueDate; String get operationId; ReferenceData? get operation; bool get isRBISchedule; bool get isRecurring; int? get inspectionInterval; bool get isScopeAttached; String? get comments; String? get aiSummary; List<Attachment> get attachments; List<RecordCreditedItem> get linkedItems;// Scope? scope,
 bool? get isDeleted;
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleCopyWith<Schedule> get copyWith => _$ScheduleCopyWithImpl<Schedule>(this as Schedule, _$identity);

  /// Serializes this Schedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Schedule&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleID, scheduleID) || other.scheduleID == scheduleID)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.equipment, equipment) || other.equipment == equipment)&&const DeepCollectionEquality().equals(other.components, components)&&(identical(other.description, description) || other.description == description)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.scheduleType, scheduleType) || other.scheduleType == scheduleType)&&(identical(other.status, status) || other.status == status)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.isRBISchedule, isRBISchedule) || other.isRBISchedule == isRBISchedule)&&(identical(other.isRecurring, isRecurring) || other.isRecurring == isRecurring)&&(identical(other.inspectionInterval, inspectionInterval) || other.inspectionInterval == inspectionInterval)&&(identical(other.isScopeAttached, isScopeAttached) || other.isScopeAttached == isScopeAttached)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.aiSummary, aiSummary) || other.aiSummary == aiSummary)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&const DeepCollectionEquality().equals(other.linkedItems, linkedItems)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,scheduleID,equipmentId,equipment,const DeepCollectionEquality().hash(components),description,scheduleTypeId,scheduleType,status,dueDate,operationId,operation,isRBISchedule,isRecurring,inspectionInterval,isScopeAttached,comments,aiSummary,const DeepCollectionEquality().hash(attachments),const DeepCollectionEquality().hash(linkedItems),isDeleted]);

@override
String toString() {
  return 'Schedule(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleID: $scheduleID, equipmentId: $equipmentId, equipment: $equipment, components: $components, description: $description, scheduleTypeId: $scheduleTypeId, scheduleType: $scheduleType, status: $status, dueDate: $dueDate, operationId: $operationId, operation: $operation, isRBISchedule: $isRBISchedule, isRecurring: $isRecurring, inspectionInterval: $inspectionInterval, isScopeAttached: $isScopeAttached, comments: $comments, aiSummary: $aiSummary, attachments: $attachments, linkedItems: $linkedItems, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $ScheduleCopyWith<$Res>  {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) _then) = _$ScheduleCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String scheduleID, String equipmentId, Equipment? equipment, List<ScheduleComponent> components, String description, String scheduleTypeId, ReferenceData? scheduleType, String status, DateTime dueDate, String operationId, ReferenceData? operation, bool isRBISchedule, bool isRecurring, int? inspectionInterval, bool isScopeAttached, String? comments, String? aiSummary, List<Attachment> attachments, List<RecordCreditedItem> linkedItems, bool? isDeleted
});


$EquipmentCopyWith<$Res>? get equipment;$ReferenceDataCopyWith<$Res>? get scheduleType;$ReferenceDataCopyWith<$Res>? get operation;

}
/// @nodoc
class _$ScheduleCopyWithImpl<$Res>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._self, this._then);

  final Schedule _self;
  final $Res Function(Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scheduleID = null,Object? equipmentId = null,Object? equipment = freezed,Object? components = null,Object? description = null,Object? scheduleTypeId = null,Object? scheduleType = freezed,Object? status = null,Object? dueDate = null,Object? operationId = null,Object? operation = freezed,Object? isRBISchedule = null,Object? isRecurring = null,Object? inspectionInterval = freezed,Object? isScopeAttached = null,Object? comments = freezed,Object? aiSummary = freezed,Object? attachments = null,Object? linkedItems = null,Object? isDeleted = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduleID: null == scheduleID ? _self.scheduleID : scheduleID // ignore: cast_nullable_to_non_nullable
as String,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as Equipment?,components: null == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as List<ScheduleComponent>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,scheduleTypeId: null == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String,scheduleType: freezed == scheduleType ? _self.scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,operationId: null == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as ReferenceData?,isRBISchedule: null == isRBISchedule ? _self.isRBISchedule : isRBISchedule // ignore: cast_nullable_to_non_nullable
as bool,isRecurring: null == isRecurring ? _self.isRecurring : isRecurring // ignore: cast_nullable_to_non_nullable
as bool,inspectionInterval: freezed == inspectionInterval ? _self.inspectionInterval : inspectionInterval // ignore: cast_nullable_to_non_nullable
as int?,isScopeAttached: null == isScopeAttached ? _self.isScopeAttached : isScopeAttached // ignore: cast_nullable_to_non_nullable
as bool,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,aiSummary: freezed == aiSummary ? _self.aiSummary : aiSummary // ignore: cast_nullable_to_non_nullable
as String?,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<Attachment>,linkedItems: null == linkedItems ? _self.linkedItems : linkedItems // ignore: cast_nullable_to_non_nullable
as List<RecordCreditedItem>,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EquipmentCopyWith<$Res>? get equipment {
    if (_self.equipment == null) {
    return null;
  }

  return $EquipmentCopyWith<$Res>(_self.equipment!, (value) {
    return _then(_self.copyWith(equipment: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get scheduleType {
    if (_self.scheduleType == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.scheduleType!, (value) {
    return _then(_self.copyWith(scheduleType: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get operation {
    if (_self.operation == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.operation!, (value) {
    return _then(_self.copyWith(operation: value));
  });
}
}


/// Adds pattern-matching-related methods to [Schedule].
extension SchedulePatterns on Schedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Schedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Schedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Schedule value)  $default,){
final _that = this;
switch (_that) {
case _Schedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Schedule value)?  $default,){
final _that = this;
switch (_that) {
case _Schedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scheduleID,  String equipmentId,  Equipment? equipment,  List<ScheduleComponent> components,  String description,  String scheduleTypeId,  ReferenceData? scheduleType,  String status,  DateTime dueDate,  String operationId,  ReferenceData? operation,  bool isRBISchedule,  bool isRecurring,  int? inspectionInterval,  bool isScopeAttached,  String? comments,  String? aiSummary,  List<Attachment> attachments,  List<RecordCreditedItem> linkedItems,  bool? isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Schedule() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleID,_that.equipmentId,_that.equipment,_that.components,_that.description,_that.scheduleTypeId,_that.scheduleType,_that.status,_that.dueDate,_that.operationId,_that.operation,_that.isRBISchedule,_that.isRecurring,_that.inspectionInterval,_that.isScopeAttached,_that.comments,_that.aiSummary,_that.attachments,_that.linkedItems,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scheduleID,  String equipmentId,  Equipment? equipment,  List<ScheduleComponent> components,  String description,  String scheduleTypeId,  ReferenceData? scheduleType,  String status,  DateTime dueDate,  String operationId,  ReferenceData? operation,  bool isRBISchedule,  bool isRecurring,  int? inspectionInterval,  bool isScopeAttached,  String? comments,  String? aiSummary,  List<Attachment> attachments,  List<RecordCreditedItem> linkedItems,  bool? isDeleted)  $default,) {final _that = this;
switch (_that) {
case _Schedule():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleID,_that.equipmentId,_that.equipment,_that.components,_that.description,_that.scheduleTypeId,_that.scheduleType,_that.status,_that.dueDate,_that.operationId,_that.operation,_that.isRBISchedule,_that.isRecurring,_that.inspectionInterval,_that.isScopeAttached,_that.comments,_that.aiSummary,_that.attachments,_that.linkedItems,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scheduleID,  String equipmentId,  Equipment? equipment,  List<ScheduleComponent> components,  String description,  String scheduleTypeId,  ReferenceData? scheduleType,  String status,  DateTime dueDate,  String operationId,  ReferenceData? operation,  bool isRBISchedule,  bool isRecurring,  int? inspectionInterval,  bool isScopeAttached,  String? comments,  String? aiSummary,  List<Attachment> attachments,  List<RecordCreditedItem> linkedItems,  bool? isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _Schedule() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleID,_that.equipmentId,_that.equipment,_that.components,_that.description,_that.scheduleTypeId,_that.scheduleType,_that.status,_that.dueDate,_that.operationId,_that.operation,_that.isRBISchedule,_that.isRecurring,_that.inspectionInterval,_that.isScopeAttached,_that.comments,_that.aiSummary,_that.attachments,_that.linkedItems,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Schedule implements Schedule {
  const _Schedule({required this.id, required this.createdAt, required this.updatedAt, required this.scheduleID, required this.equipmentId, this.equipment, final  List<ScheduleComponent> components = const [], required this.description, required this.scheduleTypeId, this.scheduleType, required this.status, required this.dueDate, required this.operationId, this.operation, required this.isRBISchedule, required this.isRecurring, this.inspectionInterval, required this.isScopeAttached, this.comments, this.aiSummary, final  List<Attachment> attachments = const [], final  List<RecordCreditedItem> linkedItems = const [], this.isDeleted}): _components = components,_attachments = attachments,_linkedItems = linkedItems;
  factory _Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String scheduleID;
@override final  String equipmentId;
@override final  Equipment? equipment;
 final  List<ScheduleComponent> _components;
@override@JsonKey() List<ScheduleComponent> get components {
  if (_components is EqualUnmodifiableListView) return _components;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_components);
}

@override final  String description;
@override final  String scheduleTypeId;
@override final  ReferenceData? scheduleType;
@override final  String status;
@override final  DateTime dueDate;
@override final  String operationId;
@override final  ReferenceData? operation;
@override final  bool isRBISchedule;
@override final  bool isRecurring;
@override final  int? inspectionInterval;
@override final  bool isScopeAttached;
@override final  String? comments;
@override final  String? aiSummary;
 final  List<Attachment> _attachments;
@override@JsonKey() List<Attachment> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

 final  List<RecordCreditedItem> _linkedItems;
@override@JsonKey() List<RecordCreditedItem> get linkedItems {
  if (_linkedItems is EqualUnmodifiableListView) return _linkedItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_linkedItems);
}

// Scope? scope,
@override final  bool? isDeleted;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleCopyWith<_Schedule> get copyWith => __$ScheduleCopyWithImpl<_Schedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Schedule&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleID, scheduleID) || other.scheduleID == scheduleID)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.equipment, equipment) || other.equipment == equipment)&&const DeepCollectionEquality().equals(other._components, _components)&&(identical(other.description, description) || other.description == description)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.scheduleType, scheduleType) || other.scheduleType == scheduleType)&&(identical(other.status, status) || other.status == status)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.isRBISchedule, isRBISchedule) || other.isRBISchedule == isRBISchedule)&&(identical(other.isRecurring, isRecurring) || other.isRecurring == isRecurring)&&(identical(other.inspectionInterval, inspectionInterval) || other.inspectionInterval == inspectionInterval)&&(identical(other.isScopeAttached, isScopeAttached) || other.isScopeAttached == isScopeAttached)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.aiSummary, aiSummary) || other.aiSummary == aiSummary)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&const DeepCollectionEquality().equals(other._linkedItems, _linkedItems)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,scheduleID,equipmentId,equipment,const DeepCollectionEquality().hash(_components),description,scheduleTypeId,scheduleType,status,dueDate,operationId,operation,isRBISchedule,isRecurring,inspectionInterval,isScopeAttached,comments,aiSummary,const DeepCollectionEquality().hash(_attachments),const DeepCollectionEquality().hash(_linkedItems),isDeleted]);

@override
String toString() {
  return 'Schedule(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleID: $scheduleID, equipmentId: $equipmentId, equipment: $equipment, components: $components, description: $description, scheduleTypeId: $scheduleTypeId, scheduleType: $scheduleType, status: $status, dueDate: $dueDate, operationId: $operationId, operation: $operation, isRBISchedule: $isRBISchedule, isRecurring: $isRecurring, inspectionInterval: $inspectionInterval, isScopeAttached: $isScopeAttached, comments: $comments, aiSummary: $aiSummary, attachments: $attachments, linkedItems: $linkedItems, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$ScheduleCopyWith(_Schedule value, $Res Function(_Schedule) _then) = __$ScheduleCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String scheduleID, String equipmentId, Equipment? equipment, List<ScheduleComponent> components, String description, String scheduleTypeId, ReferenceData? scheduleType, String status, DateTime dueDate, String operationId, ReferenceData? operation, bool isRBISchedule, bool isRecurring, int? inspectionInterval, bool isScopeAttached, String? comments, String? aiSummary, List<Attachment> attachments, List<RecordCreditedItem> linkedItems, bool? isDeleted
});


@override $EquipmentCopyWith<$Res>? get equipment;@override $ReferenceDataCopyWith<$Res>? get scheduleType;@override $ReferenceDataCopyWith<$Res>? get operation;

}
/// @nodoc
class __$ScheduleCopyWithImpl<$Res>
    implements _$ScheduleCopyWith<$Res> {
  __$ScheduleCopyWithImpl(this._self, this._then);

  final _Schedule _self;
  final $Res Function(_Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scheduleID = null,Object? equipmentId = null,Object? equipment = freezed,Object? components = null,Object? description = null,Object? scheduleTypeId = null,Object? scheduleType = freezed,Object? status = null,Object? dueDate = null,Object? operationId = null,Object? operation = freezed,Object? isRBISchedule = null,Object? isRecurring = null,Object? inspectionInterval = freezed,Object? isScopeAttached = null,Object? comments = freezed,Object? aiSummary = freezed,Object? attachments = null,Object? linkedItems = null,Object? isDeleted = freezed,}) {
  return _then(_Schedule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduleID: null == scheduleID ? _self.scheduleID : scheduleID // ignore: cast_nullable_to_non_nullable
as String,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as Equipment?,components: null == components ? _self._components : components // ignore: cast_nullable_to_non_nullable
as List<ScheduleComponent>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,scheduleTypeId: null == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String,scheduleType: freezed == scheduleType ? _self.scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,operationId: null == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as ReferenceData?,isRBISchedule: null == isRBISchedule ? _self.isRBISchedule : isRBISchedule // ignore: cast_nullable_to_non_nullable
as bool,isRecurring: null == isRecurring ? _self.isRecurring : isRecurring // ignore: cast_nullable_to_non_nullable
as bool,inspectionInterval: freezed == inspectionInterval ? _self.inspectionInterval : inspectionInterval // ignore: cast_nullable_to_non_nullable
as int?,isScopeAttached: null == isScopeAttached ? _self.isScopeAttached : isScopeAttached // ignore: cast_nullable_to_non_nullable
as bool,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,aiSummary: freezed == aiSummary ? _self.aiSummary : aiSummary // ignore: cast_nullable_to_non_nullable
as String?,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<Attachment>,linkedItems: null == linkedItems ? _self._linkedItems : linkedItems // ignore: cast_nullable_to_non_nullable
as List<RecordCreditedItem>,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EquipmentCopyWith<$Res>? get equipment {
    if (_self.equipment == null) {
    return null;
  }

  return $EquipmentCopyWith<$Res>(_self.equipment!, (value) {
    return _then(_self.copyWith(equipment: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get scheduleType {
    if (_self.scheduleType == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.scheduleType!, (value) {
    return _then(_self.copyWith(scheduleType: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get operation {
    if (_self.operation == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.operation!, (value) {
    return _then(_self.copyWith(operation: value));
  });
}
}


/// @nodoc
mixin _$Equipment {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get equipmentId; String? get name; String? get cmmsSystem; bool? get isCorrosionLoopAvailable; String? get corrosionLoopId; CorrosionLoop? get corrosionLoop; bool? get isDeleted;
/// Create a copy of Equipment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EquipmentCopyWith<Equipment> get copyWith => _$EquipmentCopyWithImpl<Equipment>(this as Equipment, _$identity);

  /// Serializes this Equipment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Equipment&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.cmmsSystem, cmmsSystem) || other.cmmsSystem == cmmsSystem)&&(identical(other.isCorrosionLoopAvailable, isCorrosionLoopAvailable) || other.isCorrosionLoopAvailable == isCorrosionLoopAvailable)&&(identical(other.corrosionLoopId, corrosionLoopId) || other.corrosionLoopId == corrosionLoopId)&&(identical(other.corrosionLoop, corrosionLoop) || other.corrosionLoop == corrosionLoop)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,equipmentId,name,cmmsSystem,isCorrosionLoopAvailable,corrosionLoopId,corrosionLoop,isDeleted);

@override
String toString() {
  return 'Equipment(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, equipmentId: $equipmentId, name: $name, cmmsSystem: $cmmsSystem, isCorrosionLoopAvailable: $isCorrosionLoopAvailable, corrosionLoopId: $corrosionLoopId, corrosionLoop: $corrosionLoop, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $EquipmentCopyWith<$Res>  {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) _then) = _$EquipmentCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? equipmentId, String? name, String? cmmsSystem, bool? isCorrosionLoopAvailable, String? corrosionLoopId, CorrosionLoop? corrosionLoop, bool? isDeleted
});


$CorrosionLoopCopyWith<$Res>? get corrosionLoop;

}
/// @nodoc
class _$EquipmentCopyWithImpl<$Res>
    implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._self, this._then);

  final Equipment _self;
  final $Res Function(Equipment) _then;

/// Create a copy of Equipment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? equipmentId = freezed,Object? name = freezed,Object? cmmsSystem = freezed,Object? isCorrosionLoopAvailable = freezed,Object? corrosionLoopId = freezed,Object? corrosionLoop = freezed,Object? isDeleted = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,cmmsSystem: freezed == cmmsSystem ? _self.cmmsSystem : cmmsSystem // ignore: cast_nullable_to_non_nullable
as String?,isCorrosionLoopAvailable: freezed == isCorrosionLoopAvailable ? _self.isCorrosionLoopAvailable : isCorrosionLoopAvailable // ignore: cast_nullable_to_non_nullable
as bool?,corrosionLoopId: freezed == corrosionLoopId ? _self.corrosionLoopId : corrosionLoopId // ignore: cast_nullable_to_non_nullable
as String?,corrosionLoop: freezed == corrosionLoop ? _self.corrosionLoop : corrosionLoop // ignore: cast_nullable_to_non_nullable
as CorrosionLoop?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of Equipment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrosionLoopCopyWith<$Res>? get corrosionLoop {
    if (_self.corrosionLoop == null) {
    return null;
  }

  return $CorrosionLoopCopyWith<$Res>(_self.corrosionLoop!, (value) {
    return _then(_self.copyWith(corrosionLoop: value));
  });
}
}


/// Adds pattern-matching-related methods to [Equipment].
extension EquipmentPatterns on Equipment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Equipment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Equipment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Equipment value)  $default,){
final _that = this;
switch (_that) {
case _Equipment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Equipment value)?  $default,){
final _that = this;
switch (_that) {
case _Equipment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? equipmentId,  String? name,  String? cmmsSystem,  bool? isCorrosionLoopAvailable,  String? corrosionLoopId,  CorrosionLoop? corrosionLoop,  bool? isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Equipment() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentId,_that.name,_that.cmmsSystem,_that.isCorrosionLoopAvailable,_that.corrosionLoopId,_that.corrosionLoop,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? equipmentId,  String? name,  String? cmmsSystem,  bool? isCorrosionLoopAvailable,  String? corrosionLoopId,  CorrosionLoop? corrosionLoop,  bool? isDeleted)  $default,) {final _that = this;
switch (_that) {
case _Equipment():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentId,_that.name,_that.cmmsSystem,_that.isCorrosionLoopAvailable,_that.corrosionLoopId,_that.corrosionLoop,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? equipmentId,  String? name,  String? cmmsSystem,  bool? isCorrosionLoopAvailable,  String? corrosionLoopId,  CorrosionLoop? corrosionLoop,  bool? isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _Equipment() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentId,_that.name,_that.cmmsSystem,_that.isCorrosionLoopAvailable,_that.corrosionLoopId,_that.corrosionLoop,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Equipment implements Equipment {
  const _Equipment({this.id, this.createdAt, this.updatedAt, this.equipmentId, this.name, this.cmmsSystem, this.isCorrosionLoopAvailable, this.corrosionLoopId, this.corrosionLoop, this.isDeleted});
  factory _Equipment.fromJson(Map<String, dynamic> json) => _$EquipmentFromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? equipmentId;
@override final  String? name;
@override final  String? cmmsSystem;
@override final  bool? isCorrosionLoopAvailable;
@override final  String? corrosionLoopId;
@override final  CorrosionLoop? corrosionLoop;
@override final  bool? isDeleted;

/// Create a copy of Equipment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EquipmentCopyWith<_Equipment> get copyWith => __$EquipmentCopyWithImpl<_Equipment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EquipmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Equipment&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.cmmsSystem, cmmsSystem) || other.cmmsSystem == cmmsSystem)&&(identical(other.isCorrosionLoopAvailable, isCorrosionLoopAvailable) || other.isCorrosionLoopAvailable == isCorrosionLoopAvailable)&&(identical(other.corrosionLoopId, corrosionLoopId) || other.corrosionLoopId == corrosionLoopId)&&(identical(other.corrosionLoop, corrosionLoop) || other.corrosionLoop == corrosionLoop)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,equipmentId,name,cmmsSystem,isCorrosionLoopAvailable,corrosionLoopId,corrosionLoop,isDeleted);

@override
String toString() {
  return 'Equipment(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, equipmentId: $equipmentId, name: $name, cmmsSystem: $cmmsSystem, isCorrosionLoopAvailable: $isCorrosionLoopAvailable, corrosionLoopId: $corrosionLoopId, corrosionLoop: $corrosionLoop, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$EquipmentCopyWith<$Res> implements $EquipmentCopyWith<$Res> {
  factory _$EquipmentCopyWith(_Equipment value, $Res Function(_Equipment) _then) = __$EquipmentCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? equipmentId, String? name, String? cmmsSystem, bool? isCorrosionLoopAvailable, String? corrosionLoopId, CorrosionLoop? corrosionLoop, bool? isDeleted
});


@override $CorrosionLoopCopyWith<$Res>? get corrosionLoop;

}
/// @nodoc
class __$EquipmentCopyWithImpl<$Res>
    implements _$EquipmentCopyWith<$Res> {
  __$EquipmentCopyWithImpl(this._self, this._then);

  final _Equipment _self;
  final $Res Function(_Equipment) _then;

/// Create a copy of Equipment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? equipmentId = freezed,Object? name = freezed,Object? cmmsSystem = freezed,Object? isCorrosionLoopAvailable = freezed,Object? corrosionLoopId = freezed,Object? corrosionLoop = freezed,Object? isDeleted = freezed,}) {
  return _then(_Equipment(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,cmmsSystem: freezed == cmmsSystem ? _self.cmmsSystem : cmmsSystem // ignore: cast_nullable_to_non_nullable
as String?,isCorrosionLoopAvailable: freezed == isCorrosionLoopAvailable ? _self.isCorrosionLoopAvailable : isCorrosionLoopAvailable // ignore: cast_nullable_to_non_nullable
as bool?,corrosionLoopId: freezed == corrosionLoopId ? _self.corrosionLoopId : corrosionLoopId // ignore: cast_nullable_to_non_nullable
as String?,corrosionLoop: freezed == corrosionLoop ? _self.corrosionLoop : corrosionLoop // ignore: cast_nullable_to_non_nullable
as CorrosionLoop?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of Equipment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrosionLoopCopyWith<$Res>? get corrosionLoop {
    if (_self.corrosionLoop == null) {
    return null;
  }

  return $CorrosionLoopCopyWith<$Res>(_self.corrosionLoop!, (value) {
    return _then(_self.copyWith(corrosionLoop: value));
  });
}
}


/// @nodoc
mixin _$CorrosionLoop {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get loopId; String? get from; String? get to; String? get riskLevel; String? get degMechComments; bool? get isDeleted;
/// Create a copy of CorrosionLoop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorrosionLoopCopyWith<CorrosionLoop> get copyWith => _$CorrosionLoopCopyWithImpl<CorrosionLoop>(this as CorrosionLoop, _$identity);

  /// Serializes this CorrosionLoop to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorrosionLoop&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.loopId, loopId) || other.loopId == loopId)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.degMechComments, degMechComments) || other.degMechComments == degMechComments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,loopId,from,to,riskLevel,degMechComments,isDeleted);

@override
String toString() {
  return 'CorrosionLoop(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, loopId: $loopId, from: $from, to: $to, riskLevel: $riskLevel, degMechComments: $degMechComments, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $CorrosionLoopCopyWith<$Res>  {
  factory $CorrosionLoopCopyWith(CorrosionLoop value, $Res Function(CorrosionLoop) _then) = _$CorrosionLoopCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? loopId, String? from, String? to, String? riskLevel, String? degMechComments, bool? isDeleted
});




}
/// @nodoc
class _$CorrosionLoopCopyWithImpl<$Res>
    implements $CorrosionLoopCopyWith<$Res> {
  _$CorrosionLoopCopyWithImpl(this._self, this._then);

  final CorrosionLoop _self;
  final $Res Function(CorrosionLoop) _then;

/// Create a copy of CorrosionLoop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? loopId = freezed,Object? from = freezed,Object? to = freezed,Object? riskLevel = freezed,Object? degMechComments = freezed,Object? isDeleted = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,loopId: freezed == loopId ? _self.loopId : loopId // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,riskLevel: freezed == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String?,degMechComments: freezed == degMechComments ? _self.degMechComments : degMechComments // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CorrosionLoop].
extension CorrosionLoopPatterns on CorrosionLoop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorrosionLoop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorrosionLoop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorrosionLoop value)  $default,){
final _that = this;
switch (_that) {
case _CorrosionLoop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorrosionLoop value)?  $default,){
final _that = this;
switch (_that) {
case _CorrosionLoop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? loopId,  String? from,  String? to,  String? riskLevel,  String? degMechComments,  bool? isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorrosionLoop() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.loopId,_that.from,_that.to,_that.riskLevel,_that.degMechComments,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? loopId,  String? from,  String? to,  String? riskLevel,  String? degMechComments,  bool? isDeleted)  $default,) {final _that = this;
switch (_that) {
case _CorrosionLoop():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.loopId,_that.from,_that.to,_that.riskLevel,_that.degMechComments,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? loopId,  String? from,  String? to,  String? riskLevel,  String? degMechComments,  bool? isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _CorrosionLoop() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.loopId,_that.from,_that.to,_that.riskLevel,_that.degMechComments,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CorrosionLoop implements CorrosionLoop {
  const _CorrosionLoop({this.id, this.createdAt, this.updatedAt, this.loopId, this.from, this.to, this.riskLevel, this.degMechComments, this.isDeleted});
  factory _CorrosionLoop.fromJson(Map<String, dynamic> json) => _$CorrosionLoopFromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? loopId;
@override final  String? from;
@override final  String? to;
@override final  String? riskLevel;
@override final  String? degMechComments;
@override final  bool? isDeleted;

/// Create a copy of CorrosionLoop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorrosionLoopCopyWith<_CorrosionLoop> get copyWith => __$CorrosionLoopCopyWithImpl<_CorrosionLoop>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorrosionLoopToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorrosionLoop&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.loopId, loopId) || other.loopId == loopId)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.degMechComments, degMechComments) || other.degMechComments == degMechComments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,loopId,from,to,riskLevel,degMechComments,isDeleted);

@override
String toString() {
  return 'CorrosionLoop(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, loopId: $loopId, from: $from, to: $to, riskLevel: $riskLevel, degMechComments: $degMechComments, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$CorrosionLoopCopyWith<$Res> implements $CorrosionLoopCopyWith<$Res> {
  factory _$CorrosionLoopCopyWith(_CorrosionLoop value, $Res Function(_CorrosionLoop) _then) = __$CorrosionLoopCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? loopId, String? from, String? to, String? riskLevel, String? degMechComments, bool? isDeleted
});




}
/// @nodoc
class __$CorrosionLoopCopyWithImpl<$Res>
    implements _$CorrosionLoopCopyWith<$Res> {
  __$CorrosionLoopCopyWithImpl(this._self, this._then);

  final _CorrosionLoop _self;
  final $Res Function(_CorrosionLoop) _then;

/// Create a copy of CorrosionLoop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? loopId = freezed,Object? from = freezed,Object? to = freezed,Object? riskLevel = freezed,Object? degMechComments = freezed,Object? isDeleted = freezed,}) {
  return _then(_CorrosionLoop(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,loopId: freezed == loopId ? _self.loopId : loopId // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,riskLevel: freezed == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String?,degMechComments: freezed == degMechComments ? _self.degMechComments : degMechComments // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$ScheduleComponent {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get scheduleId; String? get componentId; Component? get component;
/// Create a copy of ScheduleComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleComponentCopyWith<ScheduleComponent> get copyWith => _$ScheduleComponentCopyWithImpl<ScheduleComponent>(this as ScheduleComponent, _$identity);

  /// Serializes this ScheduleComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleComponent&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.componentId, componentId) || other.componentId == componentId)&&(identical(other.component, component) || other.component == component));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleId,componentId,component);

@override
String toString() {
  return 'ScheduleComponent(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleId: $scheduleId, componentId: $componentId, component: $component)';
}


}

/// @nodoc
abstract mixin class $ScheduleComponentCopyWith<$Res>  {
  factory $ScheduleComponentCopyWith(ScheduleComponent value, $Res Function(ScheduleComponent) _then) = _$ScheduleComponentCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? scheduleId, String? componentId, Component? component
});


$ComponentCopyWith<$Res>? get component;

}
/// @nodoc
class _$ScheduleComponentCopyWithImpl<$Res>
    implements $ScheduleComponentCopyWith<$Res> {
  _$ScheduleComponentCopyWithImpl(this._self, this._then);

  final ScheduleComponent _self;
  final $Res Function(ScheduleComponent) _then;

/// Create a copy of ScheduleComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? scheduleId = freezed,Object? componentId = freezed,Object? component = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,componentId: freezed == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String?,component: freezed == component ? _self.component : component // ignore: cast_nullable_to_non_nullable
as Component?,
  ));
}
/// Create a copy of ScheduleComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentCopyWith<$Res>? get component {
    if (_self.component == null) {
    return null;
  }

  return $ComponentCopyWith<$Res>(_self.component!, (value) {
    return _then(_self.copyWith(component: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleComponent].
extension ScheduleComponentPatterns on ScheduleComponent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleComponent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleComponent value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleComponent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleComponent value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleComponent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleId,  String? componentId,  Component? component)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleComponent() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleId,  String? componentId,  Component? component)  $default,) {final _that = this;
switch (_that) {
case _ScheduleComponent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleId,  String? componentId,  Component? component)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleComponent() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleId,_that.componentId,_that.component);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleComponent implements ScheduleComponent {
  const _ScheduleComponent({this.id, this.createdAt, this.updatedAt, this.scheduleId, this.componentId, this.component});
  factory _ScheduleComponent.fromJson(Map<String, dynamic> json) => _$ScheduleComponentFromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? scheduleId;
@override final  String? componentId;
@override final  Component? component;

/// Create a copy of ScheduleComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleComponentCopyWith<_ScheduleComponent> get copyWith => __$ScheduleComponentCopyWithImpl<_ScheduleComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleComponent&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.componentId, componentId) || other.componentId == componentId)&&(identical(other.component, component) || other.component == component));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleId,componentId,component);

@override
String toString() {
  return 'ScheduleComponent(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleId: $scheduleId, componentId: $componentId, component: $component)';
}


}

/// @nodoc
abstract mixin class _$ScheduleComponentCopyWith<$Res> implements $ScheduleComponentCopyWith<$Res> {
  factory _$ScheduleComponentCopyWith(_ScheduleComponent value, $Res Function(_ScheduleComponent) _then) = __$ScheduleComponentCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? scheduleId, String? componentId, Component? component
});


@override $ComponentCopyWith<$Res>? get component;

}
/// @nodoc
class __$ScheduleComponentCopyWithImpl<$Res>
    implements _$ScheduleComponentCopyWith<$Res> {
  __$ScheduleComponentCopyWithImpl(this._self, this._then);

  final _ScheduleComponent _self;
  final $Res Function(_ScheduleComponent) _then;

/// Create a copy of ScheduleComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? scheduleId = freezed,Object? componentId = freezed,Object? component = freezed,}) {
  return _then(_ScheduleComponent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,componentId: freezed == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String?,component: freezed == component ? _self.component : component // ignore: cast_nullable_to_non_nullable
as Component?,
  ));
}

/// Create a copy of ScheduleComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentCopyWith<$Res>? get component {
    if (_self.component == null) {
    return null;
  }

  return $ComponentCopyWith<$Res>(_self.component!, (value) {
    return _then(_self.copyWith(component: value));
  });
}
}


/// @nodoc
mixin _$Component {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get equipmentComponentId; String? get componentID; String? get name; String? get componentRefDataId; ReferenceData? get componentRefData; String? get equipmentId; String? get familyId; ReferenceData? get family; DateTime? get dateInService; int? get operatingPressure; int? get operatingPressureShell; int? get operatingTemperature; String? get areaHumidityId; ReferenceData? get areaHumidity; String? get foundationTypeId; ReferenceData? get foundationType; String? get initialFluidPhaseId; ReferenceData? get initialFluidPhase; bool? get isToxicMixture; double? get percentToxic; double? get inventory; double? get detectionTime; double? get isolationTime; double? get designPressure; double? get designPressureShellSide; double? get designTemperature; double? get designTemperatureShellSide; double? get diameter; double? get length; double? get fillHeight; double? get norminalThickness; String? get stressLookupTableId; ReferenceData? get stressLookupTable; String? get bmCode; String? get bmYear; String? get bmSpec; String? get bmGrade; String? get weldJointEffyId; ReferenceData? get weldJointEffy; bool? get isInsulated; String? get insulationTypeId; ReferenceData? get insulationType; double? get pipingCircuitLength; bool? get isPWHT; double? get courseNumber; String? get isEntryPossibleId; ReferenceData? get isEntryPossible; String? get corrosiveProduct; String? get internalCorrosionTypeId; ReferenceData? get internalCorrosionType; String? get internalCorrosionTypeShellSideId; ReferenceData? get internalCorrosionTypeShellSide; bool? get isPredictableIntCorrLocation; bool? get isPredictableIntCorrLocationShellSide; double? get estimatedInternalCorrosionRate; double? get estimatedExternalCorrosionRate; double? get measuredExternalCorrosionRate; String? get sourceOfCalculatedCorrosionRateId; ReferenceData? get sourceOfCalculatedCorrosionRate; DateTime? get lastKnownInspectionDate; String? get onlineMonitoringFlagId; ReferenceData? get onlineMonitoringFlag; String? get keyProcessVariableId; ReferenceData? get keyProcessVariable; String? get electricalResistanceProbeId; ReferenceData? get electricalResistanceProbe; String? get corrosionCouponsId; ReferenceData? get corrosionCoupons; DateTime? get linerInstallationDate; String? get linerConditionId; ReferenceData? get linerCondition; String? get immersionGradeCoatingQualityId; ReferenceData? get immersionGradeCoatingQuality; bool? get isDeleted;
/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComponentCopyWith<Component> get copyWith => _$ComponentCopyWithImpl<Component>(this as Component, _$identity);

  /// Serializes this Component to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Component&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.equipmentComponentId, equipmentComponentId) || other.equipmentComponentId == equipmentComponentId)&&(identical(other.componentID, componentID) || other.componentID == componentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.componentRefDataId, componentRefDataId) || other.componentRefDataId == componentRefDataId)&&(identical(other.componentRefData, componentRefData) || other.componentRefData == componentRefData)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.familyId, familyId) || other.familyId == familyId)&&(identical(other.family, family) || other.family == family)&&(identical(other.dateInService, dateInService) || other.dateInService == dateInService)&&(identical(other.operatingPressure, operatingPressure) || other.operatingPressure == operatingPressure)&&(identical(other.operatingPressureShell, operatingPressureShell) || other.operatingPressureShell == operatingPressureShell)&&(identical(other.operatingTemperature, operatingTemperature) || other.operatingTemperature == operatingTemperature)&&(identical(other.areaHumidityId, areaHumidityId) || other.areaHumidityId == areaHumidityId)&&(identical(other.areaHumidity, areaHumidity) || other.areaHumidity == areaHumidity)&&(identical(other.foundationTypeId, foundationTypeId) || other.foundationTypeId == foundationTypeId)&&(identical(other.foundationType, foundationType) || other.foundationType == foundationType)&&(identical(other.initialFluidPhaseId, initialFluidPhaseId) || other.initialFluidPhaseId == initialFluidPhaseId)&&(identical(other.initialFluidPhase, initialFluidPhase) || other.initialFluidPhase == initialFluidPhase)&&(identical(other.isToxicMixture, isToxicMixture) || other.isToxicMixture == isToxicMixture)&&(identical(other.percentToxic, percentToxic) || other.percentToxic == percentToxic)&&(identical(other.inventory, inventory) || other.inventory == inventory)&&(identical(other.detectionTime, detectionTime) || other.detectionTime == detectionTime)&&(identical(other.isolationTime, isolationTime) || other.isolationTime == isolationTime)&&(identical(other.designPressure, designPressure) || other.designPressure == designPressure)&&(identical(other.designPressureShellSide, designPressureShellSide) || other.designPressureShellSide == designPressureShellSide)&&(identical(other.designTemperature, designTemperature) || other.designTemperature == designTemperature)&&(identical(other.designTemperatureShellSide, designTemperatureShellSide) || other.designTemperatureShellSide == designTemperatureShellSide)&&(identical(other.diameter, diameter) || other.diameter == diameter)&&(identical(other.length, length) || other.length == length)&&(identical(other.fillHeight, fillHeight) || other.fillHeight == fillHeight)&&(identical(other.norminalThickness, norminalThickness) || other.norminalThickness == norminalThickness)&&(identical(other.stressLookupTableId, stressLookupTableId) || other.stressLookupTableId == stressLookupTableId)&&(identical(other.stressLookupTable, stressLookupTable) || other.stressLookupTable == stressLookupTable)&&(identical(other.bmCode, bmCode) || other.bmCode == bmCode)&&(identical(other.bmYear, bmYear) || other.bmYear == bmYear)&&(identical(other.bmSpec, bmSpec) || other.bmSpec == bmSpec)&&(identical(other.bmGrade, bmGrade) || other.bmGrade == bmGrade)&&(identical(other.weldJointEffyId, weldJointEffyId) || other.weldJointEffyId == weldJointEffyId)&&(identical(other.weldJointEffy, weldJointEffy) || other.weldJointEffy == weldJointEffy)&&(identical(other.isInsulated, isInsulated) || other.isInsulated == isInsulated)&&(identical(other.insulationTypeId, insulationTypeId) || other.insulationTypeId == insulationTypeId)&&(identical(other.insulationType, insulationType) || other.insulationType == insulationType)&&(identical(other.pipingCircuitLength, pipingCircuitLength) || other.pipingCircuitLength == pipingCircuitLength)&&(identical(other.isPWHT, isPWHT) || other.isPWHT == isPWHT)&&(identical(other.courseNumber, courseNumber) || other.courseNumber == courseNumber)&&(identical(other.isEntryPossibleId, isEntryPossibleId) || other.isEntryPossibleId == isEntryPossibleId)&&(identical(other.isEntryPossible, isEntryPossible) || other.isEntryPossible == isEntryPossible)&&(identical(other.corrosiveProduct, corrosiveProduct) || other.corrosiveProduct == corrosiveProduct)&&(identical(other.internalCorrosionTypeId, internalCorrosionTypeId) || other.internalCorrosionTypeId == internalCorrosionTypeId)&&(identical(other.internalCorrosionType, internalCorrosionType) || other.internalCorrosionType == internalCorrosionType)&&(identical(other.internalCorrosionTypeShellSideId, internalCorrosionTypeShellSideId) || other.internalCorrosionTypeShellSideId == internalCorrosionTypeShellSideId)&&(identical(other.internalCorrosionTypeShellSide, internalCorrosionTypeShellSide) || other.internalCorrosionTypeShellSide == internalCorrosionTypeShellSide)&&(identical(other.isPredictableIntCorrLocation, isPredictableIntCorrLocation) || other.isPredictableIntCorrLocation == isPredictableIntCorrLocation)&&(identical(other.isPredictableIntCorrLocationShellSide, isPredictableIntCorrLocationShellSide) || other.isPredictableIntCorrLocationShellSide == isPredictableIntCorrLocationShellSide)&&(identical(other.estimatedInternalCorrosionRate, estimatedInternalCorrosionRate) || other.estimatedInternalCorrosionRate == estimatedInternalCorrosionRate)&&(identical(other.estimatedExternalCorrosionRate, estimatedExternalCorrosionRate) || other.estimatedExternalCorrosionRate == estimatedExternalCorrosionRate)&&(identical(other.measuredExternalCorrosionRate, measuredExternalCorrosionRate) || other.measuredExternalCorrosionRate == measuredExternalCorrosionRate)&&(identical(other.sourceOfCalculatedCorrosionRateId, sourceOfCalculatedCorrosionRateId) || other.sourceOfCalculatedCorrosionRateId == sourceOfCalculatedCorrosionRateId)&&(identical(other.sourceOfCalculatedCorrosionRate, sourceOfCalculatedCorrosionRate) || other.sourceOfCalculatedCorrosionRate == sourceOfCalculatedCorrosionRate)&&(identical(other.lastKnownInspectionDate, lastKnownInspectionDate) || other.lastKnownInspectionDate == lastKnownInspectionDate)&&(identical(other.onlineMonitoringFlagId, onlineMonitoringFlagId) || other.onlineMonitoringFlagId == onlineMonitoringFlagId)&&(identical(other.onlineMonitoringFlag, onlineMonitoringFlag) || other.onlineMonitoringFlag == onlineMonitoringFlag)&&(identical(other.keyProcessVariableId, keyProcessVariableId) || other.keyProcessVariableId == keyProcessVariableId)&&(identical(other.keyProcessVariable, keyProcessVariable) || other.keyProcessVariable == keyProcessVariable)&&(identical(other.electricalResistanceProbeId, electricalResistanceProbeId) || other.electricalResistanceProbeId == electricalResistanceProbeId)&&(identical(other.electricalResistanceProbe, electricalResistanceProbe) || other.electricalResistanceProbe == electricalResistanceProbe)&&(identical(other.corrosionCouponsId, corrosionCouponsId) || other.corrosionCouponsId == corrosionCouponsId)&&(identical(other.corrosionCoupons, corrosionCoupons) || other.corrosionCoupons == corrosionCoupons)&&(identical(other.linerInstallationDate, linerInstallationDate) || other.linerInstallationDate == linerInstallationDate)&&(identical(other.linerConditionId, linerConditionId) || other.linerConditionId == linerConditionId)&&(identical(other.linerCondition, linerCondition) || other.linerCondition == linerCondition)&&(identical(other.immersionGradeCoatingQualityId, immersionGradeCoatingQualityId) || other.immersionGradeCoatingQualityId == immersionGradeCoatingQualityId)&&(identical(other.immersionGradeCoatingQuality, immersionGradeCoatingQuality) || other.immersionGradeCoatingQuality == immersionGradeCoatingQuality)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,equipmentComponentId,componentID,name,componentRefDataId,componentRefData,equipmentId,familyId,family,dateInService,operatingPressure,operatingPressureShell,operatingTemperature,areaHumidityId,areaHumidity,foundationTypeId,foundationType,initialFluidPhaseId,initialFluidPhase,isToxicMixture,percentToxic,inventory,detectionTime,isolationTime,designPressure,designPressureShellSide,designTemperature,designTemperatureShellSide,diameter,length,fillHeight,norminalThickness,stressLookupTableId,stressLookupTable,bmCode,bmYear,bmSpec,bmGrade,weldJointEffyId,weldJointEffy,isInsulated,insulationTypeId,insulationType,pipingCircuitLength,isPWHT,courseNumber,isEntryPossibleId,isEntryPossible,corrosiveProduct,internalCorrosionTypeId,internalCorrosionType,internalCorrosionTypeShellSideId,internalCorrosionTypeShellSide,isPredictableIntCorrLocation,isPredictableIntCorrLocationShellSide,estimatedInternalCorrosionRate,estimatedExternalCorrosionRate,measuredExternalCorrosionRate,sourceOfCalculatedCorrosionRateId,sourceOfCalculatedCorrosionRate,lastKnownInspectionDate,onlineMonitoringFlagId,onlineMonitoringFlag,keyProcessVariableId,keyProcessVariable,electricalResistanceProbeId,electricalResistanceProbe,corrosionCouponsId,corrosionCoupons,linerInstallationDate,linerConditionId,linerCondition,immersionGradeCoatingQualityId,immersionGradeCoatingQuality,isDeleted]);

@override
String toString() {
  return 'Component(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, equipmentComponentId: $equipmentComponentId, componentID: $componentID, name: $name, componentRefDataId: $componentRefDataId, componentRefData: $componentRefData, equipmentId: $equipmentId, familyId: $familyId, family: $family, dateInService: $dateInService, operatingPressure: $operatingPressure, operatingPressureShell: $operatingPressureShell, operatingTemperature: $operatingTemperature, areaHumidityId: $areaHumidityId, areaHumidity: $areaHumidity, foundationTypeId: $foundationTypeId, foundationType: $foundationType, initialFluidPhaseId: $initialFluidPhaseId, initialFluidPhase: $initialFluidPhase, isToxicMixture: $isToxicMixture, percentToxic: $percentToxic, inventory: $inventory, detectionTime: $detectionTime, isolationTime: $isolationTime, designPressure: $designPressure, designPressureShellSide: $designPressureShellSide, designTemperature: $designTemperature, designTemperatureShellSide: $designTemperatureShellSide, diameter: $diameter, length: $length, fillHeight: $fillHeight, norminalThickness: $norminalThickness, stressLookupTableId: $stressLookupTableId, stressLookupTable: $stressLookupTable, bmCode: $bmCode, bmYear: $bmYear, bmSpec: $bmSpec, bmGrade: $bmGrade, weldJointEffyId: $weldJointEffyId, weldJointEffy: $weldJointEffy, isInsulated: $isInsulated, insulationTypeId: $insulationTypeId, insulationType: $insulationType, pipingCircuitLength: $pipingCircuitLength, isPWHT: $isPWHT, courseNumber: $courseNumber, isEntryPossibleId: $isEntryPossibleId, isEntryPossible: $isEntryPossible, corrosiveProduct: $corrosiveProduct, internalCorrosionTypeId: $internalCorrosionTypeId, internalCorrosionType: $internalCorrosionType, internalCorrosionTypeShellSideId: $internalCorrosionTypeShellSideId, internalCorrosionTypeShellSide: $internalCorrosionTypeShellSide, isPredictableIntCorrLocation: $isPredictableIntCorrLocation, isPredictableIntCorrLocationShellSide: $isPredictableIntCorrLocationShellSide, estimatedInternalCorrosionRate: $estimatedInternalCorrosionRate, estimatedExternalCorrosionRate: $estimatedExternalCorrosionRate, measuredExternalCorrosionRate: $measuredExternalCorrosionRate, sourceOfCalculatedCorrosionRateId: $sourceOfCalculatedCorrosionRateId, sourceOfCalculatedCorrosionRate: $sourceOfCalculatedCorrosionRate, lastKnownInspectionDate: $lastKnownInspectionDate, onlineMonitoringFlagId: $onlineMonitoringFlagId, onlineMonitoringFlag: $onlineMonitoringFlag, keyProcessVariableId: $keyProcessVariableId, keyProcessVariable: $keyProcessVariable, electricalResistanceProbeId: $electricalResistanceProbeId, electricalResistanceProbe: $electricalResistanceProbe, corrosionCouponsId: $corrosionCouponsId, corrosionCoupons: $corrosionCoupons, linerInstallationDate: $linerInstallationDate, linerConditionId: $linerConditionId, linerCondition: $linerCondition, immersionGradeCoatingQualityId: $immersionGradeCoatingQualityId, immersionGradeCoatingQuality: $immersionGradeCoatingQuality, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $ComponentCopyWith<$Res>  {
  factory $ComponentCopyWith(Component value, $Res Function(Component) _then) = _$ComponentCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? equipmentComponentId, String? componentID, String? name, String? componentRefDataId, ReferenceData? componentRefData, String? equipmentId, String? familyId, ReferenceData? family, DateTime? dateInService, int? operatingPressure, int? operatingPressureShell, int? operatingTemperature, String? areaHumidityId, ReferenceData? areaHumidity, String? foundationTypeId, ReferenceData? foundationType, String? initialFluidPhaseId, ReferenceData? initialFluidPhase, bool? isToxicMixture, double? percentToxic, double? inventory, double? detectionTime, double? isolationTime, double? designPressure, double? designPressureShellSide, double? designTemperature, double? designTemperatureShellSide, double? diameter, double? length, double? fillHeight, double? norminalThickness, String? stressLookupTableId, ReferenceData? stressLookupTable, String? bmCode, String? bmYear, String? bmSpec, String? bmGrade, String? weldJointEffyId, ReferenceData? weldJointEffy, bool? isInsulated, String? insulationTypeId, ReferenceData? insulationType, double? pipingCircuitLength, bool? isPWHT, double? courseNumber, String? isEntryPossibleId, ReferenceData? isEntryPossible, String? corrosiveProduct, String? internalCorrosionTypeId, ReferenceData? internalCorrosionType, String? internalCorrosionTypeShellSideId, ReferenceData? internalCorrosionTypeShellSide, bool? isPredictableIntCorrLocation, bool? isPredictableIntCorrLocationShellSide, double? estimatedInternalCorrosionRate, double? estimatedExternalCorrosionRate, double? measuredExternalCorrosionRate, String? sourceOfCalculatedCorrosionRateId, ReferenceData? sourceOfCalculatedCorrosionRate, DateTime? lastKnownInspectionDate, String? onlineMonitoringFlagId, ReferenceData? onlineMonitoringFlag, String? keyProcessVariableId, ReferenceData? keyProcessVariable, String? electricalResistanceProbeId, ReferenceData? electricalResistanceProbe, String? corrosionCouponsId, ReferenceData? corrosionCoupons, DateTime? linerInstallationDate, String? linerConditionId, ReferenceData? linerCondition, String? immersionGradeCoatingQualityId, ReferenceData? immersionGradeCoatingQuality, bool? isDeleted
});


$ReferenceDataCopyWith<$Res>? get componentRefData;$ReferenceDataCopyWith<$Res>? get family;$ReferenceDataCopyWith<$Res>? get areaHumidity;$ReferenceDataCopyWith<$Res>? get foundationType;$ReferenceDataCopyWith<$Res>? get initialFluidPhase;$ReferenceDataCopyWith<$Res>? get stressLookupTable;$ReferenceDataCopyWith<$Res>? get weldJointEffy;$ReferenceDataCopyWith<$Res>? get insulationType;$ReferenceDataCopyWith<$Res>? get isEntryPossible;$ReferenceDataCopyWith<$Res>? get internalCorrosionType;$ReferenceDataCopyWith<$Res>? get internalCorrosionTypeShellSide;$ReferenceDataCopyWith<$Res>? get sourceOfCalculatedCorrosionRate;$ReferenceDataCopyWith<$Res>? get onlineMonitoringFlag;$ReferenceDataCopyWith<$Res>? get keyProcessVariable;$ReferenceDataCopyWith<$Res>? get electricalResistanceProbe;$ReferenceDataCopyWith<$Res>? get corrosionCoupons;$ReferenceDataCopyWith<$Res>? get linerCondition;$ReferenceDataCopyWith<$Res>? get immersionGradeCoatingQuality;

}
/// @nodoc
class _$ComponentCopyWithImpl<$Res>
    implements $ComponentCopyWith<$Res> {
  _$ComponentCopyWithImpl(this._self, this._then);

  final Component _self;
  final $Res Function(Component) _then;

/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? equipmentComponentId = freezed,Object? componentID = freezed,Object? name = freezed,Object? componentRefDataId = freezed,Object? componentRefData = freezed,Object? equipmentId = freezed,Object? familyId = freezed,Object? family = freezed,Object? dateInService = freezed,Object? operatingPressure = freezed,Object? operatingPressureShell = freezed,Object? operatingTemperature = freezed,Object? areaHumidityId = freezed,Object? areaHumidity = freezed,Object? foundationTypeId = freezed,Object? foundationType = freezed,Object? initialFluidPhaseId = freezed,Object? initialFluidPhase = freezed,Object? isToxicMixture = freezed,Object? percentToxic = freezed,Object? inventory = freezed,Object? detectionTime = freezed,Object? isolationTime = freezed,Object? designPressure = freezed,Object? designPressureShellSide = freezed,Object? designTemperature = freezed,Object? designTemperatureShellSide = freezed,Object? diameter = freezed,Object? length = freezed,Object? fillHeight = freezed,Object? norminalThickness = freezed,Object? stressLookupTableId = freezed,Object? stressLookupTable = freezed,Object? bmCode = freezed,Object? bmYear = freezed,Object? bmSpec = freezed,Object? bmGrade = freezed,Object? weldJointEffyId = freezed,Object? weldJointEffy = freezed,Object? isInsulated = freezed,Object? insulationTypeId = freezed,Object? insulationType = freezed,Object? pipingCircuitLength = freezed,Object? isPWHT = freezed,Object? courseNumber = freezed,Object? isEntryPossibleId = freezed,Object? isEntryPossible = freezed,Object? corrosiveProduct = freezed,Object? internalCorrosionTypeId = freezed,Object? internalCorrosionType = freezed,Object? internalCorrosionTypeShellSideId = freezed,Object? internalCorrosionTypeShellSide = freezed,Object? isPredictableIntCorrLocation = freezed,Object? isPredictableIntCorrLocationShellSide = freezed,Object? estimatedInternalCorrosionRate = freezed,Object? estimatedExternalCorrosionRate = freezed,Object? measuredExternalCorrosionRate = freezed,Object? sourceOfCalculatedCorrosionRateId = freezed,Object? sourceOfCalculatedCorrosionRate = freezed,Object? lastKnownInspectionDate = freezed,Object? onlineMonitoringFlagId = freezed,Object? onlineMonitoringFlag = freezed,Object? keyProcessVariableId = freezed,Object? keyProcessVariable = freezed,Object? electricalResistanceProbeId = freezed,Object? electricalResistanceProbe = freezed,Object? corrosionCouponsId = freezed,Object? corrosionCoupons = freezed,Object? linerInstallationDate = freezed,Object? linerConditionId = freezed,Object? linerCondition = freezed,Object? immersionGradeCoatingQualityId = freezed,Object? immersionGradeCoatingQuality = freezed,Object? isDeleted = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,equipmentComponentId: freezed == equipmentComponentId ? _self.equipmentComponentId : equipmentComponentId // ignore: cast_nullable_to_non_nullable
as String?,componentID: freezed == componentID ? _self.componentID : componentID // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,componentRefDataId: freezed == componentRefDataId ? _self.componentRefDataId : componentRefDataId // ignore: cast_nullable_to_non_nullable
as String?,componentRefData: freezed == componentRefData ? _self.componentRefData : componentRefData // ignore: cast_nullable_to_non_nullable
as ReferenceData?,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,familyId: freezed == familyId ? _self.familyId : familyId // ignore: cast_nullable_to_non_nullable
as String?,family: freezed == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as ReferenceData?,dateInService: freezed == dateInService ? _self.dateInService : dateInService // ignore: cast_nullable_to_non_nullable
as DateTime?,operatingPressure: freezed == operatingPressure ? _self.operatingPressure : operatingPressure // ignore: cast_nullable_to_non_nullable
as int?,operatingPressureShell: freezed == operatingPressureShell ? _self.operatingPressureShell : operatingPressureShell // ignore: cast_nullable_to_non_nullable
as int?,operatingTemperature: freezed == operatingTemperature ? _self.operatingTemperature : operatingTemperature // ignore: cast_nullable_to_non_nullable
as int?,areaHumidityId: freezed == areaHumidityId ? _self.areaHumidityId : areaHumidityId // ignore: cast_nullable_to_non_nullable
as String?,areaHumidity: freezed == areaHumidity ? _self.areaHumidity : areaHumidity // ignore: cast_nullable_to_non_nullable
as ReferenceData?,foundationTypeId: freezed == foundationTypeId ? _self.foundationTypeId : foundationTypeId // ignore: cast_nullable_to_non_nullable
as String?,foundationType: freezed == foundationType ? _self.foundationType : foundationType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,initialFluidPhaseId: freezed == initialFluidPhaseId ? _self.initialFluidPhaseId : initialFluidPhaseId // ignore: cast_nullable_to_non_nullable
as String?,initialFluidPhase: freezed == initialFluidPhase ? _self.initialFluidPhase : initialFluidPhase // ignore: cast_nullable_to_non_nullable
as ReferenceData?,isToxicMixture: freezed == isToxicMixture ? _self.isToxicMixture : isToxicMixture // ignore: cast_nullable_to_non_nullable
as bool?,percentToxic: freezed == percentToxic ? _self.percentToxic : percentToxic // ignore: cast_nullable_to_non_nullable
as double?,inventory: freezed == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as double?,detectionTime: freezed == detectionTime ? _self.detectionTime : detectionTime // ignore: cast_nullable_to_non_nullable
as double?,isolationTime: freezed == isolationTime ? _self.isolationTime : isolationTime // ignore: cast_nullable_to_non_nullable
as double?,designPressure: freezed == designPressure ? _self.designPressure : designPressure // ignore: cast_nullable_to_non_nullable
as double?,designPressureShellSide: freezed == designPressureShellSide ? _self.designPressureShellSide : designPressureShellSide // ignore: cast_nullable_to_non_nullable
as double?,designTemperature: freezed == designTemperature ? _self.designTemperature : designTemperature // ignore: cast_nullable_to_non_nullable
as double?,designTemperatureShellSide: freezed == designTemperatureShellSide ? _self.designTemperatureShellSide : designTemperatureShellSide // ignore: cast_nullable_to_non_nullable
as double?,diameter: freezed == diameter ? _self.diameter : diameter // ignore: cast_nullable_to_non_nullable
as double?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as double?,fillHeight: freezed == fillHeight ? _self.fillHeight : fillHeight // ignore: cast_nullable_to_non_nullable
as double?,norminalThickness: freezed == norminalThickness ? _self.norminalThickness : norminalThickness // ignore: cast_nullable_to_non_nullable
as double?,stressLookupTableId: freezed == stressLookupTableId ? _self.stressLookupTableId : stressLookupTableId // ignore: cast_nullable_to_non_nullable
as String?,stressLookupTable: freezed == stressLookupTable ? _self.stressLookupTable : stressLookupTable // ignore: cast_nullable_to_non_nullable
as ReferenceData?,bmCode: freezed == bmCode ? _self.bmCode : bmCode // ignore: cast_nullable_to_non_nullable
as String?,bmYear: freezed == bmYear ? _self.bmYear : bmYear // ignore: cast_nullable_to_non_nullable
as String?,bmSpec: freezed == bmSpec ? _self.bmSpec : bmSpec // ignore: cast_nullable_to_non_nullable
as String?,bmGrade: freezed == bmGrade ? _self.bmGrade : bmGrade // ignore: cast_nullable_to_non_nullable
as String?,weldJointEffyId: freezed == weldJointEffyId ? _self.weldJointEffyId : weldJointEffyId // ignore: cast_nullable_to_non_nullable
as String?,weldJointEffy: freezed == weldJointEffy ? _self.weldJointEffy : weldJointEffy // ignore: cast_nullable_to_non_nullable
as ReferenceData?,isInsulated: freezed == isInsulated ? _self.isInsulated : isInsulated // ignore: cast_nullable_to_non_nullable
as bool?,insulationTypeId: freezed == insulationTypeId ? _self.insulationTypeId : insulationTypeId // ignore: cast_nullable_to_non_nullable
as String?,insulationType: freezed == insulationType ? _self.insulationType : insulationType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,pipingCircuitLength: freezed == pipingCircuitLength ? _self.pipingCircuitLength : pipingCircuitLength // ignore: cast_nullable_to_non_nullable
as double?,isPWHT: freezed == isPWHT ? _self.isPWHT : isPWHT // ignore: cast_nullable_to_non_nullable
as bool?,courseNumber: freezed == courseNumber ? _self.courseNumber : courseNumber // ignore: cast_nullable_to_non_nullable
as double?,isEntryPossibleId: freezed == isEntryPossibleId ? _self.isEntryPossibleId : isEntryPossibleId // ignore: cast_nullable_to_non_nullable
as String?,isEntryPossible: freezed == isEntryPossible ? _self.isEntryPossible : isEntryPossible // ignore: cast_nullable_to_non_nullable
as ReferenceData?,corrosiveProduct: freezed == corrosiveProduct ? _self.corrosiveProduct : corrosiveProduct // ignore: cast_nullable_to_non_nullable
as String?,internalCorrosionTypeId: freezed == internalCorrosionTypeId ? _self.internalCorrosionTypeId : internalCorrosionTypeId // ignore: cast_nullable_to_non_nullable
as String?,internalCorrosionType: freezed == internalCorrosionType ? _self.internalCorrosionType : internalCorrosionType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,internalCorrosionTypeShellSideId: freezed == internalCorrosionTypeShellSideId ? _self.internalCorrosionTypeShellSideId : internalCorrosionTypeShellSideId // ignore: cast_nullable_to_non_nullable
as String?,internalCorrosionTypeShellSide: freezed == internalCorrosionTypeShellSide ? _self.internalCorrosionTypeShellSide : internalCorrosionTypeShellSide // ignore: cast_nullable_to_non_nullable
as ReferenceData?,isPredictableIntCorrLocation: freezed == isPredictableIntCorrLocation ? _self.isPredictableIntCorrLocation : isPredictableIntCorrLocation // ignore: cast_nullable_to_non_nullable
as bool?,isPredictableIntCorrLocationShellSide: freezed == isPredictableIntCorrLocationShellSide ? _self.isPredictableIntCorrLocationShellSide : isPredictableIntCorrLocationShellSide // ignore: cast_nullable_to_non_nullable
as bool?,estimatedInternalCorrosionRate: freezed == estimatedInternalCorrosionRate ? _self.estimatedInternalCorrosionRate : estimatedInternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as double?,estimatedExternalCorrosionRate: freezed == estimatedExternalCorrosionRate ? _self.estimatedExternalCorrosionRate : estimatedExternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as double?,measuredExternalCorrosionRate: freezed == measuredExternalCorrosionRate ? _self.measuredExternalCorrosionRate : measuredExternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as double?,sourceOfCalculatedCorrosionRateId: freezed == sourceOfCalculatedCorrosionRateId ? _self.sourceOfCalculatedCorrosionRateId : sourceOfCalculatedCorrosionRateId // ignore: cast_nullable_to_non_nullable
as String?,sourceOfCalculatedCorrosionRate: freezed == sourceOfCalculatedCorrosionRate ? _self.sourceOfCalculatedCorrosionRate : sourceOfCalculatedCorrosionRate // ignore: cast_nullable_to_non_nullable
as ReferenceData?,lastKnownInspectionDate: freezed == lastKnownInspectionDate ? _self.lastKnownInspectionDate : lastKnownInspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,onlineMonitoringFlagId: freezed == onlineMonitoringFlagId ? _self.onlineMonitoringFlagId : onlineMonitoringFlagId // ignore: cast_nullable_to_non_nullable
as String?,onlineMonitoringFlag: freezed == onlineMonitoringFlag ? _self.onlineMonitoringFlag : onlineMonitoringFlag // ignore: cast_nullable_to_non_nullable
as ReferenceData?,keyProcessVariableId: freezed == keyProcessVariableId ? _self.keyProcessVariableId : keyProcessVariableId // ignore: cast_nullable_to_non_nullable
as String?,keyProcessVariable: freezed == keyProcessVariable ? _self.keyProcessVariable : keyProcessVariable // ignore: cast_nullable_to_non_nullable
as ReferenceData?,electricalResistanceProbeId: freezed == electricalResistanceProbeId ? _self.electricalResistanceProbeId : electricalResistanceProbeId // ignore: cast_nullable_to_non_nullable
as String?,electricalResistanceProbe: freezed == electricalResistanceProbe ? _self.electricalResistanceProbe : electricalResistanceProbe // ignore: cast_nullable_to_non_nullable
as ReferenceData?,corrosionCouponsId: freezed == corrosionCouponsId ? _self.corrosionCouponsId : corrosionCouponsId // ignore: cast_nullable_to_non_nullable
as String?,corrosionCoupons: freezed == corrosionCoupons ? _self.corrosionCoupons : corrosionCoupons // ignore: cast_nullable_to_non_nullable
as ReferenceData?,linerInstallationDate: freezed == linerInstallationDate ? _self.linerInstallationDate : linerInstallationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,linerConditionId: freezed == linerConditionId ? _self.linerConditionId : linerConditionId // ignore: cast_nullable_to_non_nullable
as String?,linerCondition: freezed == linerCondition ? _self.linerCondition : linerCondition // ignore: cast_nullable_to_non_nullable
as ReferenceData?,immersionGradeCoatingQualityId: freezed == immersionGradeCoatingQualityId ? _self.immersionGradeCoatingQualityId : immersionGradeCoatingQualityId // ignore: cast_nullable_to_non_nullable
as String?,immersionGradeCoatingQuality: freezed == immersionGradeCoatingQuality ? _self.immersionGradeCoatingQuality : immersionGradeCoatingQuality // ignore: cast_nullable_to_non_nullable
as ReferenceData?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get componentRefData {
    if (_self.componentRefData == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.componentRefData!, (value) {
    return _then(_self.copyWith(componentRefData: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get family {
    if (_self.family == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.family!, (value) {
    return _then(_self.copyWith(family: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get areaHumidity {
    if (_self.areaHumidity == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.areaHumidity!, (value) {
    return _then(_self.copyWith(areaHumidity: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get foundationType {
    if (_self.foundationType == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.foundationType!, (value) {
    return _then(_self.copyWith(foundationType: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get initialFluidPhase {
    if (_self.initialFluidPhase == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.initialFluidPhase!, (value) {
    return _then(_self.copyWith(initialFluidPhase: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get stressLookupTable {
    if (_self.stressLookupTable == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.stressLookupTable!, (value) {
    return _then(_self.copyWith(stressLookupTable: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get weldJointEffy {
    if (_self.weldJointEffy == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.weldJointEffy!, (value) {
    return _then(_self.copyWith(weldJointEffy: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get insulationType {
    if (_self.insulationType == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.insulationType!, (value) {
    return _then(_self.copyWith(insulationType: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get isEntryPossible {
    if (_self.isEntryPossible == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.isEntryPossible!, (value) {
    return _then(_self.copyWith(isEntryPossible: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get internalCorrosionType {
    if (_self.internalCorrosionType == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.internalCorrosionType!, (value) {
    return _then(_self.copyWith(internalCorrosionType: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get internalCorrosionTypeShellSide {
    if (_self.internalCorrosionTypeShellSide == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.internalCorrosionTypeShellSide!, (value) {
    return _then(_self.copyWith(internalCorrosionTypeShellSide: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get sourceOfCalculatedCorrosionRate {
    if (_self.sourceOfCalculatedCorrosionRate == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.sourceOfCalculatedCorrosionRate!, (value) {
    return _then(_self.copyWith(sourceOfCalculatedCorrosionRate: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get onlineMonitoringFlag {
    if (_self.onlineMonitoringFlag == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.onlineMonitoringFlag!, (value) {
    return _then(_self.copyWith(onlineMonitoringFlag: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get keyProcessVariable {
    if (_self.keyProcessVariable == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.keyProcessVariable!, (value) {
    return _then(_self.copyWith(keyProcessVariable: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get electricalResistanceProbe {
    if (_self.electricalResistanceProbe == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.electricalResistanceProbe!, (value) {
    return _then(_self.copyWith(electricalResistanceProbe: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get corrosionCoupons {
    if (_self.corrosionCoupons == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.corrosionCoupons!, (value) {
    return _then(_self.copyWith(corrosionCoupons: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get linerCondition {
    if (_self.linerCondition == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.linerCondition!, (value) {
    return _then(_self.copyWith(linerCondition: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get immersionGradeCoatingQuality {
    if (_self.immersionGradeCoatingQuality == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.immersionGradeCoatingQuality!, (value) {
    return _then(_self.copyWith(immersionGradeCoatingQuality: value));
  });
}
}


/// Adds pattern-matching-related methods to [Component].
extension ComponentPatterns on Component {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Component value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Component() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Component value)  $default,){
final _that = this;
switch (_that) {
case _Component():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Component value)?  $default,){
final _that = this;
switch (_that) {
case _Component() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? equipmentComponentId,  String? componentID,  String? name,  String? componentRefDataId,  ReferenceData? componentRefData,  String? equipmentId,  String? familyId,  ReferenceData? family,  DateTime? dateInService,  int? operatingPressure,  int? operatingPressureShell,  int? operatingTemperature,  String? areaHumidityId,  ReferenceData? areaHumidity,  String? foundationTypeId,  ReferenceData? foundationType,  String? initialFluidPhaseId,  ReferenceData? initialFluidPhase,  bool? isToxicMixture,  double? percentToxic,  double? inventory,  double? detectionTime,  double? isolationTime,  double? designPressure,  double? designPressureShellSide,  double? designTemperature,  double? designTemperatureShellSide,  double? diameter,  double? length,  double? fillHeight,  double? norminalThickness,  String? stressLookupTableId,  ReferenceData? stressLookupTable,  String? bmCode,  String? bmYear,  String? bmSpec,  String? bmGrade,  String? weldJointEffyId,  ReferenceData? weldJointEffy,  bool? isInsulated,  String? insulationTypeId,  ReferenceData? insulationType,  double? pipingCircuitLength,  bool? isPWHT,  double? courseNumber,  String? isEntryPossibleId,  ReferenceData? isEntryPossible,  String? corrosiveProduct,  String? internalCorrosionTypeId,  ReferenceData? internalCorrosionType,  String? internalCorrosionTypeShellSideId,  ReferenceData? internalCorrosionTypeShellSide,  bool? isPredictableIntCorrLocation,  bool? isPredictableIntCorrLocationShellSide,  double? estimatedInternalCorrosionRate,  double? estimatedExternalCorrosionRate,  double? measuredExternalCorrosionRate,  String? sourceOfCalculatedCorrosionRateId,  ReferenceData? sourceOfCalculatedCorrosionRate,  DateTime? lastKnownInspectionDate,  String? onlineMonitoringFlagId,  ReferenceData? onlineMonitoringFlag,  String? keyProcessVariableId,  ReferenceData? keyProcessVariable,  String? electricalResistanceProbeId,  ReferenceData? electricalResistanceProbe,  String? corrosionCouponsId,  ReferenceData? corrosionCoupons,  DateTime? linerInstallationDate,  String? linerConditionId,  ReferenceData? linerCondition,  String? immersionGradeCoatingQualityId,  ReferenceData? immersionGradeCoatingQuality,  bool? isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Component() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentComponentId,_that.componentID,_that.name,_that.componentRefDataId,_that.componentRefData,_that.equipmentId,_that.familyId,_that.family,_that.dateInService,_that.operatingPressure,_that.operatingPressureShell,_that.operatingTemperature,_that.areaHumidityId,_that.areaHumidity,_that.foundationTypeId,_that.foundationType,_that.initialFluidPhaseId,_that.initialFluidPhase,_that.isToxicMixture,_that.percentToxic,_that.inventory,_that.detectionTime,_that.isolationTime,_that.designPressure,_that.designPressureShellSide,_that.designTemperature,_that.designTemperatureShellSide,_that.diameter,_that.length,_that.fillHeight,_that.norminalThickness,_that.stressLookupTableId,_that.stressLookupTable,_that.bmCode,_that.bmYear,_that.bmSpec,_that.bmGrade,_that.weldJointEffyId,_that.weldJointEffy,_that.isInsulated,_that.insulationTypeId,_that.insulationType,_that.pipingCircuitLength,_that.isPWHT,_that.courseNumber,_that.isEntryPossibleId,_that.isEntryPossible,_that.corrosiveProduct,_that.internalCorrosionTypeId,_that.internalCorrosionType,_that.internalCorrosionTypeShellSideId,_that.internalCorrosionTypeShellSide,_that.isPredictableIntCorrLocation,_that.isPredictableIntCorrLocationShellSide,_that.estimatedInternalCorrosionRate,_that.estimatedExternalCorrosionRate,_that.measuredExternalCorrosionRate,_that.sourceOfCalculatedCorrosionRateId,_that.sourceOfCalculatedCorrosionRate,_that.lastKnownInspectionDate,_that.onlineMonitoringFlagId,_that.onlineMonitoringFlag,_that.keyProcessVariableId,_that.keyProcessVariable,_that.electricalResistanceProbeId,_that.electricalResistanceProbe,_that.corrosionCouponsId,_that.corrosionCoupons,_that.linerInstallationDate,_that.linerConditionId,_that.linerCondition,_that.immersionGradeCoatingQualityId,_that.immersionGradeCoatingQuality,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? equipmentComponentId,  String? componentID,  String? name,  String? componentRefDataId,  ReferenceData? componentRefData,  String? equipmentId,  String? familyId,  ReferenceData? family,  DateTime? dateInService,  int? operatingPressure,  int? operatingPressureShell,  int? operatingTemperature,  String? areaHumidityId,  ReferenceData? areaHumidity,  String? foundationTypeId,  ReferenceData? foundationType,  String? initialFluidPhaseId,  ReferenceData? initialFluidPhase,  bool? isToxicMixture,  double? percentToxic,  double? inventory,  double? detectionTime,  double? isolationTime,  double? designPressure,  double? designPressureShellSide,  double? designTemperature,  double? designTemperatureShellSide,  double? diameter,  double? length,  double? fillHeight,  double? norminalThickness,  String? stressLookupTableId,  ReferenceData? stressLookupTable,  String? bmCode,  String? bmYear,  String? bmSpec,  String? bmGrade,  String? weldJointEffyId,  ReferenceData? weldJointEffy,  bool? isInsulated,  String? insulationTypeId,  ReferenceData? insulationType,  double? pipingCircuitLength,  bool? isPWHT,  double? courseNumber,  String? isEntryPossibleId,  ReferenceData? isEntryPossible,  String? corrosiveProduct,  String? internalCorrosionTypeId,  ReferenceData? internalCorrosionType,  String? internalCorrosionTypeShellSideId,  ReferenceData? internalCorrosionTypeShellSide,  bool? isPredictableIntCorrLocation,  bool? isPredictableIntCorrLocationShellSide,  double? estimatedInternalCorrosionRate,  double? estimatedExternalCorrosionRate,  double? measuredExternalCorrosionRate,  String? sourceOfCalculatedCorrosionRateId,  ReferenceData? sourceOfCalculatedCorrosionRate,  DateTime? lastKnownInspectionDate,  String? onlineMonitoringFlagId,  ReferenceData? onlineMonitoringFlag,  String? keyProcessVariableId,  ReferenceData? keyProcessVariable,  String? electricalResistanceProbeId,  ReferenceData? electricalResistanceProbe,  String? corrosionCouponsId,  ReferenceData? corrosionCoupons,  DateTime? linerInstallationDate,  String? linerConditionId,  ReferenceData? linerCondition,  String? immersionGradeCoatingQualityId,  ReferenceData? immersionGradeCoatingQuality,  bool? isDeleted)  $default,) {final _that = this;
switch (_that) {
case _Component():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentComponentId,_that.componentID,_that.name,_that.componentRefDataId,_that.componentRefData,_that.equipmentId,_that.familyId,_that.family,_that.dateInService,_that.operatingPressure,_that.operatingPressureShell,_that.operatingTemperature,_that.areaHumidityId,_that.areaHumidity,_that.foundationTypeId,_that.foundationType,_that.initialFluidPhaseId,_that.initialFluidPhase,_that.isToxicMixture,_that.percentToxic,_that.inventory,_that.detectionTime,_that.isolationTime,_that.designPressure,_that.designPressureShellSide,_that.designTemperature,_that.designTemperatureShellSide,_that.diameter,_that.length,_that.fillHeight,_that.norminalThickness,_that.stressLookupTableId,_that.stressLookupTable,_that.bmCode,_that.bmYear,_that.bmSpec,_that.bmGrade,_that.weldJointEffyId,_that.weldJointEffy,_that.isInsulated,_that.insulationTypeId,_that.insulationType,_that.pipingCircuitLength,_that.isPWHT,_that.courseNumber,_that.isEntryPossibleId,_that.isEntryPossible,_that.corrosiveProduct,_that.internalCorrosionTypeId,_that.internalCorrosionType,_that.internalCorrosionTypeShellSideId,_that.internalCorrosionTypeShellSide,_that.isPredictableIntCorrLocation,_that.isPredictableIntCorrLocationShellSide,_that.estimatedInternalCorrosionRate,_that.estimatedExternalCorrosionRate,_that.measuredExternalCorrosionRate,_that.sourceOfCalculatedCorrosionRateId,_that.sourceOfCalculatedCorrosionRate,_that.lastKnownInspectionDate,_that.onlineMonitoringFlagId,_that.onlineMonitoringFlag,_that.keyProcessVariableId,_that.keyProcessVariable,_that.electricalResistanceProbeId,_that.electricalResistanceProbe,_that.corrosionCouponsId,_that.corrosionCoupons,_that.linerInstallationDate,_that.linerConditionId,_that.linerCondition,_that.immersionGradeCoatingQualityId,_that.immersionGradeCoatingQuality,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? equipmentComponentId,  String? componentID,  String? name,  String? componentRefDataId,  ReferenceData? componentRefData,  String? equipmentId,  String? familyId,  ReferenceData? family,  DateTime? dateInService,  int? operatingPressure,  int? operatingPressureShell,  int? operatingTemperature,  String? areaHumidityId,  ReferenceData? areaHumidity,  String? foundationTypeId,  ReferenceData? foundationType,  String? initialFluidPhaseId,  ReferenceData? initialFluidPhase,  bool? isToxicMixture,  double? percentToxic,  double? inventory,  double? detectionTime,  double? isolationTime,  double? designPressure,  double? designPressureShellSide,  double? designTemperature,  double? designTemperatureShellSide,  double? diameter,  double? length,  double? fillHeight,  double? norminalThickness,  String? stressLookupTableId,  ReferenceData? stressLookupTable,  String? bmCode,  String? bmYear,  String? bmSpec,  String? bmGrade,  String? weldJointEffyId,  ReferenceData? weldJointEffy,  bool? isInsulated,  String? insulationTypeId,  ReferenceData? insulationType,  double? pipingCircuitLength,  bool? isPWHT,  double? courseNumber,  String? isEntryPossibleId,  ReferenceData? isEntryPossible,  String? corrosiveProduct,  String? internalCorrosionTypeId,  ReferenceData? internalCorrosionType,  String? internalCorrosionTypeShellSideId,  ReferenceData? internalCorrosionTypeShellSide,  bool? isPredictableIntCorrLocation,  bool? isPredictableIntCorrLocationShellSide,  double? estimatedInternalCorrosionRate,  double? estimatedExternalCorrosionRate,  double? measuredExternalCorrosionRate,  String? sourceOfCalculatedCorrosionRateId,  ReferenceData? sourceOfCalculatedCorrosionRate,  DateTime? lastKnownInspectionDate,  String? onlineMonitoringFlagId,  ReferenceData? onlineMonitoringFlag,  String? keyProcessVariableId,  ReferenceData? keyProcessVariable,  String? electricalResistanceProbeId,  ReferenceData? electricalResistanceProbe,  String? corrosionCouponsId,  ReferenceData? corrosionCoupons,  DateTime? linerInstallationDate,  String? linerConditionId,  ReferenceData? linerCondition,  String? immersionGradeCoatingQualityId,  ReferenceData? immersionGradeCoatingQuality,  bool? isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _Component() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentComponentId,_that.componentID,_that.name,_that.componentRefDataId,_that.componentRefData,_that.equipmentId,_that.familyId,_that.family,_that.dateInService,_that.operatingPressure,_that.operatingPressureShell,_that.operatingTemperature,_that.areaHumidityId,_that.areaHumidity,_that.foundationTypeId,_that.foundationType,_that.initialFluidPhaseId,_that.initialFluidPhase,_that.isToxicMixture,_that.percentToxic,_that.inventory,_that.detectionTime,_that.isolationTime,_that.designPressure,_that.designPressureShellSide,_that.designTemperature,_that.designTemperatureShellSide,_that.diameter,_that.length,_that.fillHeight,_that.norminalThickness,_that.stressLookupTableId,_that.stressLookupTable,_that.bmCode,_that.bmYear,_that.bmSpec,_that.bmGrade,_that.weldJointEffyId,_that.weldJointEffy,_that.isInsulated,_that.insulationTypeId,_that.insulationType,_that.pipingCircuitLength,_that.isPWHT,_that.courseNumber,_that.isEntryPossibleId,_that.isEntryPossible,_that.corrosiveProduct,_that.internalCorrosionTypeId,_that.internalCorrosionType,_that.internalCorrosionTypeShellSideId,_that.internalCorrosionTypeShellSide,_that.isPredictableIntCorrLocation,_that.isPredictableIntCorrLocationShellSide,_that.estimatedInternalCorrosionRate,_that.estimatedExternalCorrosionRate,_that.measuredExternalCorrosionRate,_that.sourceOfCalculatedCorrosionRateId,_that.sourceOfCalculatedCorrosionRate,_that.lastKnownInspectionDate,_that.onlineMonitoringFlagId,_that.onlineMonitoringFlag,_that.keyProcessVariableId,_that.keyProcessVariable,_that.electricalResistanceProbeId,_that.electricalResistanceProbe,_that.corrosionCouponsId,_that.corrosionCoupons,_that.linerInstallationDate,_that.linerConditionId,_that.linerCondition,_that.immersionGradeCoatingQualityId,_that.immersionGradeCoatingQuality,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Component implements Component {
  const _Component({this.id, this.createdAt, this.updatedAt, this.equipmentComponentId, this.componentID, this.name, this.componentRefDataId, this.componentRefData, this.equipmentId, this.familyId, this.family, this.dateInService, this.operatingPressure, this.operatingPressureShell, this.operatingTemperature, this.areaHumidityId, this.areaHumidity, this.foundationTypeId, this.foundationType, this.initialFluidPhaseId, this.initialFluidPhase, this.isToxicMixture, this.percentToxic, this.inventory, this.detectionTime, this.isolationTime, this.designPressure, this.designPressureShellSide, this.designTemperature, this.designTemperatureShellSide, this.diameter, this.length, this.fillHeight, this.norminalThickness, this.stressLookupTableId, this.stressLookupTable, this.bmCode, this.bmYear, this.bmSpec, this.bmGrade, this.weldJointEffyId, this.weldJointEffy, this.isInsulated, this.insulationTypeId, this.insulationType, this.pipingCircuitLength, this.isPWHT, this.courseNumber, this.isEntryPossibleId, this.isEntryPossible, this.corrosiveProduct, this.internalCorrosionTypeId, this.internalCorrosionType, this.internalCorrosionTypeShellSideId, this.internalCorrosionTypeShellSide, this.isPredictableIntCorrLocation, this.isPredictableIntCorrLocationShellSide, this.estimatedInternalCorrosionRate, this.estimatedExternalCorrosionRate, this.measuredExternalCorrosionRate, this.sourceOfCalculatedCorrosionRateId, this.sourceOfCalculatedCorrosionRate, this.lastKnownInspectionDate, this.onlineMonitoringFlagId, this.onlineMonitoringFlag, this.keyProcessVariableId, this.keyProcessVariable, this.electricalResistanceProbeId, this.electricalResistanceProbe, this.corrosionCouponsId, this.corrosionCoupons, this.linerInstallationDate, this.linerConditionId, this.linerCondition, this.immersionGradeCoatingQualityId, this.immersionGradeCoatingQuality, this.isDeleted});
  factory _Component.fromJson(Map<String, dynamic> json) => _$ComponentFromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? equipmentComponentId;
@override final  String? componentID;
@override final  String? name;
@override final  String? componentRefDataId;
@override final  ReferenceData? componentRefData;
@override final  String? equipmentId;
@override final  String? familyId;
@override final  ReferenceData? family;
@override final  DateTime? dateInService;
@override final  int? operatingPressure;
@override final  int? operatingPressureShell;
@override final  int? operatingTemperature;
@override final  String? areaHumidityId;
@override final  ReferenceData? areaHumidity;
@override final  String? foundationTypeId;
@override final  ReferenceData? foundationType;
@override final  String? initialFluidPhaseId;
@override final  ReferenceData? initialFluidPhase;
@override final  bool? isToxicMixture;
@override final  double? percentToxic;
@override final  double? inventory;
@override final  double? detectionTime;
@override final  double? isolationTime;
@override final  double? designPressure;
@override final  double? designPressureShellSide;
@override final  double? designTemperature;
@override final  double? designTemperatureShellSide;
@override final  double? diameter;
@override final  double? length;
@override final  double? fillHeight;
@override final  double? norminalThickness;
@override final  String? stressLookupTableId;
@override final  ReferenceData? stressLookupTable;
@override final  String? bmCode;
@override final  String? bmYear;
@override final  String? bmSpec;
@override final  String? bmGrade;
@override final  String? weldJointEffyId;
@override final  ReferenceData? weldJointEffy;
@override final  bool? isInsulated;
@override final  String? insulationTypeId;
@override final  ReferenceData? insulationType;
@override final  double? pipingCircuitLength;
@override final  bool? isPWHT;
@override final  double? courseNumber;
@override final  String? isEntryPossibleId;
@override final  ReferenceData? isEntryPossible;
@override final  String? corrosiveProduct;
@override final  String? internalCorrosionTypeId;
@override final  ReferenceData? internalCorrosionType;
@override final  String? internalCorrosionTypeShellSideId;
@override final  ReferenceData? internalCorrosionTypeShellSide;
@override final  bool? isPredictableIntCorrLocation;
@override final  bool? isPredictableIntCorrLocationShellSide;
@override final  double? estimatedInternalCorrosionRate;
@override final  double? estimatedExternalCorrosionRate;
@override final  double? measuredExternalCorrosionRate;
@override final  String? sourceOfCalculatedCorrosionRateId;
@override final  ReferenceData? sourceOfCalculatedCorrosionRate;
@override final  DateTime? lastKnownInspectionDate;
@override final  String? onlineMonitoringFlagId;
@override final  ReferenceData? onlineMonitoringFlag;
@override final  String? keyProcessVariableId;
@override final  ReferenceData? keyProcessVariable;
@override final  String? electricalResistanceProbeId;
@override final  ReferenceData? electricalResistanceProbe;
@override final  String? corrosionCouponsId;
@override final  ReferenceData? corrosionCoupons;
@override final  DateTime? linerInstallationDate;
@override final  String? linerConditionId;
@override final  ReferenceData? linerCondition;
@override final  String? immersionGradeCoatingQualityId;
@override final  ReferenceData? immersionGradeCoatingQuality;
@override final  bool? isDeleted;

/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComponentCopyWith<_Component> get copyWith => __$ComponentCopyWithImpl<_Component>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Component&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.equipmentComponentId, equipmentComponentId) || other.equipmentComponentId == equipmentComponentId)&&(identical(other.componentID, componentID) || other.componentID == componentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.componentRefDataId, componentRefDataId) || other.componentRefDataId == componentRefDataId)&&(identical(other.componentRefData, componentRefData) || other.componentRefData == componentRefData)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.familyId, familyId) || other.familyId == familyId)&&(identical(other.family, family) || other.family == family)&&(identical(other.dateInService, dateInService) || other.dateInService == dateInService)&&(identical(other.operatingPressure, operatingPressure) || other.operatingPressure == operatingPressure)&&(identical(other.operatingPressureShell, operatingPressureShell) || other.operatingPressureShell == operatingPressureShell)&&(identical(other.operatingTemperature, operatingTemperature) || other.operatingTemperature == operatingTemperature)&&(identical(other.areaHumidityId, areaHumidityId) || other.areaHumidityId == areaHumidityId)&&(identical(other.areaHumidity, areaHumidity) || other.areaHumidity == areaHumidity)&&(identical(other.foundationTypeId, foundationTypeId) || other.foundationTypeId == foundationTypeId)&&(identical(other.foundationType, foundationType) || other.foundationType == foundationType)&&(identical(other.initialFluidPhaseId, initialFluidPhaseId) || other.initialFluidPhaseId == initialFluidPhaseId)&&(identical(other.initialFluidPhase, initialFluidPhase) || other.initialFluidPhase == initialFluidPhase)&&(identical(other.isToxicMixture, isToxicMixture) || other.isToxicMixture == isToxicMixture)&&(identical(other.percentToxic, percentToxic) || other.percentToxic == percentToxic)&&(identical(other.inventory, inventory) || other.inventory == inventory)&&(identical(other.detectionTime, detectionTime) || other.detectionTime == detectionTime)&&(identical(other.isolationTime, isolationTime) || other.isolationTime == isolationTime)&&(identical(other.designPressure, designPressure) || other.designPressure == designPressure)&&(identical(other.designPressureShellSide, designPressureShellSide) || other.designPressureShellSide == designPressureShellSide)&&(identical(other.designTemperature, designTemperature) || other.designTemperature == designTemperature)&&(identical(other.designTemperatureShellSide, designTemperatureShellSide) || other.designTemperatureShellSide == designTemperatureShellSide)&&(identical(other.diameter, diameter) || other.diameter == diameter)&&(identical(other.length, length) || other.length == length)&&(identical(other.fillHeight, fillHeight) || other.fillHeight == fillHeight)&&(identical(other.norminalThickness, norminalThickness) || other.norminalThickness == norminalThickness)&&(identical(other.stressLookupTableId, stressLookupTableId) || other.stressLookupTableId == stressLookupTableId)&&(identical(other.stressLookupTable, stressLookupTable) || other.stressLookupTable == stressLookupTable)&&(identical(other.bmCode, bmCode) || other.bmCode == bmCode)&&(identical(other.bmYear, bmYear) || other.bmYear == bmYear)&&(identical(other.bmSpec, bmSpec) || other.bmSpec == bmSpec)&&(identical(other.bmGrade, bmGrade) || other.bmGrade == bmGrade)&&(identical(other.weldJointEffyId, weldJointEffyId) || other.weldJointEffyId == weldJointEffyId)&&(identical(other.weldJointEffy, weldJointEffy) || other.weldJointEffy == weldJointEffy)&&(identical(other.isInsulated, isInsulated) || other.isInsulated == isInsulated)&&(identical(other.insulationTypeId, insulationTypeId) || other.insulationTypeId == insulationTypeId)&&(identical(other.insulationType, insulationType) || other.insulationType == insulationType)&&(identical(other.pipingCircuitLength, pipingCircuitLength) || other.pipingCircuitLength == pipingCircuitLength)&&(identical(other.isPWHT, isPWHT) || other.isPWHT == isPWHT)&&(identical(other.courseNumber, courseNumber) || other.courseNumber == courseNumber)&&(identical(other.isEntryPossibleId, isEntryPossibleId) || other.isEntryPossibleId == isEntryPossibleId)&&(identical(other.isEntryPossible, isEntryPossible) || other.isEntryPossible == isEntryPossible)&&(identical(other.corrosiveProduct, corrosiveProduct) || other.corrosiveProduct == corrosiveProduct)&&(identical(other.internalCorrosionTypeId, internalCorrosionTypeId) || other.internalCorrosionTypeId == internalCorrosionTypeId)&&(identical(other.internalCorrosionType, internalCorrosionType) || other.internalCorrosionType == internalCorrosionType)&&(identical(other.internalCorrosionTypeShellSideId, internalCorrosionTypeShellSideId) || other.internalCorrosionTypeShellSideId == internalCorrosionTypeShellSideId)&&(identical(other.internalCorrosionTypeShellSide, internalCorrosionTypeShellSide) || other.internalCorrosionTypeShellSide == internalCorrosionTypeShellSide)&&(identical(other.isPredictableIntCorrLocation, isPredictableIntCorrLocation) || other.isPredictableIntCorrLocation == isPredictableIntCorrLocation)&&(identical(other.isPredictableIntCorrLocationShellSide, isPredictableIntCorrLocationShellSide) || other.isPredictableIntCorrLocationShellSide == isPredictableIntCorrLocationShellSide)&&(identical(other.estimatedInternalCorrosionRate, estimatedInternalCorrosionRate) || other.estimatedInternalCorrosionRate == estimatedInternalCorrosionRate)&&(identical(other.estimatedExternalCorrosionRate, estimatedExternalCorrosionRate) || other.estimatedExternalCorrosionRate == estimatedExternalCorrosionRate)&&(identical(other.measuredExternalCorrosionRate, measuredExternalCorrosionRate) || other.measuredExternalCorrosionRate == measuredExternalCorrosionRate)&&(identical(other.sourceOfCalculatedCorrosionRateId, sourceOfCalculatedCorrosionRateId) || other.sourceOfCalculatedCorrosionRateId == sourceOfCalculatedCorrosionRateId)&&(identical(other.sourceOfCalculatedCorrosionRate, sourceOfCalculatedCorrosionRate) || other.sourceOfCalculatedCorrosionRate == sourceOfCalculatedCorrosionRate)&&(identical(other.lastKnownInspectionDate, lastKnownInspectionDate) || other.lastKnownInspectionDate == lastKnownInspectionDate)&&(identical(other.onlineMonitoringFlagId, onlineMonitoringFlagId) || other.onlineMonitoringFlagId == onlineMonitoringFlagId)&&(identical(other.onlineMonitoringFlag, onlineMonitoringFlag) || other.onlineMonitoringFlag == onlineMonitoringFlag)&&(identical(other.keyProcessVariableId, keyProcessVariableId) || other.keyProcessVariableId == keyProcessVariableId)&&(identical(other.keyProcessVariable, keyProcessVariable) || other.keyProcessVariable == keyProcessVariable)&&(identical(other.electricalResistanceProbeId, electricalResistanceProbeId) || other.electricalResistanceProbeId == electricalResistanceProbeId)&&(identical(other.electricalResistanceProbe, electricalResistanceProbe) || other.electricalResistanceProbe == electricalResistanceProbe)&&(identical(other.corrosionCouponsId, corrosionCouponsId) || other.corrosionCouponsId == corrosionCouponsId)&&(identical(other.corrosionCoupons, corrosionCoupons) || other.corrosionCoupons == corrosionCoupons)&&(identical(other.linerInstallationDate, linerInstallationDate) || other.linerInstallationDate == linerInstallationDate)&&(identical(other.linerConditionId, linerConditionId) || other.linerConditionId == linerConditionId)&&(identical(other.linerCondition, linerCondition) || other.linerCondition == linerCondition)&&(identical(other.immersionGradeCoatingQualityId, immersionGradeCoatingQualityId) || other.immersionGradeCoatingQualityId == immersionGradeCoatingQualityId)&&(identical(other.immersionGradeCoatingQuality, immersionGradeCoatingQuality) || other.immersionGradeCoatingQuality == immersionGradeCoatingQuality)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,equipmentComponentId,componentID,name,componentRefDataId,componentRefData,equipmentId,familyId,family,dateInService,operatingPressure,operatingPressureShell,operatingTemperature,areaHumidityId,areaHumidity,foundationTypeId,foundationType,initialFluidPhaseId,initialFluidPhase,isToxicMixture,percentToxic,inventory,detectionTime,isolationTime,designPressure,designPressureShellSide,designTemperature,designTemperatureShellSide,diameter,length,fillHeight,norminalThickness,stressLookupTableId,stressLookupTable,bmCode,bmYear,bmSpec,bmGrade,weldJointEffyId,weldJointEffy,isInsulated,insulationTypeId,insulationType,pipingCircuitLength,isPWHT,courseNumber,isEntryPossibleId,isEntryPossible,corrosiveProduct,internalCorrosionTypeId,internalCorrosionType,internalCorrosionTypeShellSideId,internalCorrosionTypeShellSide,isPredictableIntCorrLocation,isPredictableIntCorrLocationShellSide,estimatedInternalCorrosionRate,estimatedExternalCorrosionRate,measuredExternalCorrosionRate,sourceOfCalculatedCorrosionRateId,sourceOfCalculatedCorrosionRate,lastKnownInspectionDate,onlineMonitoringFlagId,onlineMonitoringFlag,keyProcessVariableId,keyProcessVariable,electricalResistanceProbeId,electricalResistanceProbe,corrosionCouponsId,corrosionCoupons,linerInstallationDate,linerConditionId,linerCondition,immersionGradeCoatingQualityId,immersionGradeCoatingQuality,isDeleted]);

@override
String toString() {
  return 'Component(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, equipmentComponentId: $equipmentComponentId, componentID: $componentID, name: $name, componentRefDataId: $componentRefDataId, componentRefData: $componentRefData, equipmentId: $equipmentId, familyId: $familyId, family: $family, dateInService: $dateInService, operatingPressure: $operatingPressure, operatingPressureShell: $operatingPressureShell, operatingTemperature: $operatingTemperature, areaHumidityId: $areaHumidityId, areaHumidity: $areaHumidity, foundationTypeId: $foundationTypeId, foundationType: $foundationType, initialFluidPhaseId: $initialFluidPhaseId, initialFluidPhase: $initialFluidPhase, isToxicMixture: $isToxicMixture, percentToxic: $percentToxic, inventory: $inventory, detectionTime: $detectionTime, isolationTime: $isolationTime, designPressure: $designPressure, designPressureShellSide: $designPressureShellSide, designTemperature: $designTemperature, designTemperatureShellSide: $designTemperatureShellSide, diameter: $diameter, length: $length, fillHeight: $fillHeight, norminalThickness: $norminalThickness, stressLookupTableId: $stressLookupTableId, stressLookupTable: $stressLookupTable, bmCode: $bmCode, bmYear: $bmYear, bmSpec: $bmSpec, bmGrade: $bmGrade, weldJointEffyId: $weldJointEffyId, weldJointEffy: $weldJointEffy, isInsulated: $isInsulated, insulationTypeId: $insulationTypeId, insulationType: $insulationType, pipingCircuitLength: $pipingCircuitLength, isPWHT: $isPWHT, courseNumber: $courseNumber, isEntryPossibleId: $isEntryPossibleId, isEntryPossible: $isEntryPossible, corrosiveProduct: $corrosiveProduct, internalCorrosionTypeId: $internalCorrosionTypeId, internalCorrosionType: $internalCorrosionType, internalCorrosionTypeShellSideId: $internalCorrosionTypeShellSideId, internalCorrosionTypeShellSide: $internalCorrosionTypeShellSide, isPredictableIntCorrLocation: $isPredictableIntCorrLocation, isPredictableIntCorrLocationShellSide: $isPredictableIntCorrLocationShellSide, estimatedInternalCorrosionRate: $estimatedInternalCorrosionRate, estimatedExternalCorrosionRate: $estimatedExternalCorrosionRate, measuredExternalCorrosionRate: $measuredExternalCorrosionRate, sourceOfCalculatedCorrosionRateId: $sourceOfCalculatedCorrosionRateId, sourceOfCalculatedCorrosionRate: $sourceOfCalculatedCorrosionRate, lastKnownInspectionDate: $lastKnownInspectionDate, onlineMonitoringFlagId: $onlineMonitoringFlagId, onlineMonitoringFlag: $onlineMonitoringFlag, keyProcessVariableId: $keyProcessVariableId, keyProcessVariable: $keyProcessVariable, electricalResistanceProbeId: $electricalResistanceProbeId, electricalResistanceProbe: $electricalResistanceProbe, corrosionCouponsId: $corrosionCouponsId, corrosionCoupons: $corrosionCoupons, linerInstallationDate: $linerInstallationDate, linerConditionId: $linerConditionId, linerCondition: $linerCondition, immersionGradeCoatingQualityId: $immersionGradeCoatingQualityId, immersionGradeCoatingQuality: $immersionGradeCoatingQuality, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$ComponentCopyWith<$Res> implements $ComponentCopyWith<$Res> {
  factory _$ComponentCopyWith(_Component value, $Res Function(_Component) _then) = __$ComponentCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? equipmentComponentId, String? componentID, String? name, String? componentRefDataId, ReferenceData? componentRefData, String? equipmentId, String? familyId, ReferenceData? family, DateTime? dateInService, int? operatingPressure, int? operatingPressureShell, int? operatingTemperature, String? areaHumidityId, ReferenceData? areaHumidity, String? foundationTypeId, ReferenceData? foundationType, String? initialFluidPhaseId, ReferenceData? initialFluidPhase, bool? isToxicMixture, double? percentToxic, double? inventory, double? detectionTime, double? isolationTime, double? designPressure, double? designPressureShellSide, double? designTemperature, double? designTemperatureShellSide, double? diameter, double? length, double? fillHeight, double? norminalThickness, String? stressLookupTableId, ReferenceData? stressLookupTable, String? bmCode, String? bmYear, String? bmSpec, String? bmGrade, String? weldJointEffyId, ReferenceData? weldJointEffy, bool? isInsulated, String? insulationTypeId, ReferenceData? insulationType, double? pipingCircuitLength, bool? isPWHT, double? courseNumber, String? isEntryPossibleId, ReferenceData? isEntryPossible, String? corrosiveProduct, String? internalCorrosionTypeId, ReferenceData? internalCorrosionType, String? internalCorrosionTypeShellSideId, ReferenceData? internalCorrosionTypeShellSide, bool? isPredictableIntCorrLocation, bool? isPredictableIntCorrLocationShellSide, double? estimatedInternalCorrosionRate, double? estimatedExternalCorrosionRate, double? measuredExternalCorrosionRate, String? sourceOfCalculatedCorrosionRateId, ReferenceData? sourceOfCalculatedCorrosionRate, DateTime? lastKnownInspectionDate, String? onlineMonitoringFlagId, ReferenceData? onlineMonitoringFlag, String? keyProcessVariableId, ReferenceData? keyProcessVariable, String? electricalResistanceProbeId, ReferenceData? electricalResistanceProbe, String? corrosionCouponsId, ReferenceData? corrosionCoupons, DateTime? linerInstallationDate, String? linerConditionId, ReferenceData? linerCondition, String? immersionGradeCoatingQualityId, ReferenceData? immersionGradeCoatingQuality, bool? isDeleted
});


@override $ReferenceDataCopyWith<$Res>? get componentRefData;@override $ReferenceDataCopyWith<$Res>? get family;@override $ReferenceDataCopyWith<$Res>? get areaHumidity;@override $ReferenceDataCopyWith<$Res>? get foundationType;@override $ReferenceDataCopyWith<$Res>? get initialFluidPhase;@override $ReferenceDataCopyWith<$Res>? get stressLookupTable;@override $ReferenceDataCopyWith<$Res>? get weldJointEffy;@override $ReferenceDataCopyWith<$Res>? get insulationType;@override $ReferenceDataCopyWith<$Res>? get isEntryPossible;@override $ReferenceDataCopyWith<$Res>? get internalCorrosionType;@override $ReferenceDataCopyWith<$Res>? get internalCorrosionTypeShellSide;@override $ReferenceDataCopyWith<$Res>? get sourceOfCalculatedCorrosionRate;@override $ReferenceDataCopyWith<$Res>? get onlineMonitoringFlag;@override $ReferenceDataCopyWith<$Res>? get keyProcessVariable;@override $ReferenceDataCopyWith<$Res>? get electricalResistanceProbe;@override $ReferenceDataCopyWith<$Res>? get corrosionCoupons;@override $ReferenceDataCopyWith<$Res>? get linerCondition;@override $ReferenceDataCopyWith<$Res>? get immersionGradeCoatingQuality;

}
/// @nodoc
class __$ComponentCopyWithImpl<$Res>
    implements _$ComponentCopyWith<$Res> {
  __$ComponentCopyWithImpl(this._self, this._then);

  final _Component _self;
  final $Res Function(_Component) _then;

/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? equipmentComponentId = freezed,Object? componentID = freezed,Object? name = freezed,Object? componentRefDataId = freezed,Object? componentRefData = freezed,Object? equipmentId = freezed,Object? familyId = freezed,Object? family = freezed,Object? dateInService = freezed,Object? operatingPressure = freezed,Object? operatingPressureShell = freezed,Object? operatingTemperature = freezed,Object? areaHumidityId = freezed,Object? areaHumidity = freezed,Object? foundationTypeId = freezed,Object? foundationType = freezed,Object? initialFluidPhaseId = freezed,Object? initialFluidPhase = freezed,Object? isToxicMixture = freezed,Object? percentToxic = freezed,Object? inventory = freezed,Object? detectionTime = freezed,Object? isolationTime = freezed,Object? designPressure = freezed,Object? designPressureShellSide = freezed,Object? designTemperature = freezed,Object? designTemperatureShellSide = freezed,Object? diameter = freezed,Object? length = freezed,Object? fillHeight = freezed,Object? norminalThickness = freezed,Object? stressLookupTableId = freezed,Object? stressLookupTable = freezed,Object? bmCode = freezed,Object? bmYear = freezed,Object? bmSpec = freezed,Object? bmGrade = freezed,Object? weldJointEffyId = freezed,Object? weldJointEffy = freezed,Object? isInsulated = freezed,Object? insulationTypeId = freezed,Object? insulationType = freezed,Object? pipingCircuitLength = freezed,Object? isPWHT = freezed,Object? courseNumber = freezed,Object? isEntryPossibleId = freezed,Object? isEntryPossible = freezed,Object? corrosiveProduct = freezed,Object? internalCorrosionTypeId = freezed,Object? internalCorrosionType = freezed,Object? internalCorrosionTypeShellSideId = freezed,Object? internalCorrosionTypeShellSide = freezed,Object? isPredictableIntCorrLocation = freezed,Object? isPredictableIntCorrLocationShellSide = freezed,Object? estimatedInternalCorrosionRate = freezed,Object? estimatedExternalCorrosionRate = freezed,Object? measuredExternalCorrosionRate = freezed,Object? sourceOfCalculatedCorrosionRateId = freezed,Object? sourceOfCalculatedCorrosionRate = freezed,Object? lastKnownInspectionDate = freezed,Object? onlineMonitoringFlagId = freezed,Object? onlineMonitoringFlag = freezed,Object? keyProcessVariableId = freezed,Object? keyProcessVariable = freezed,Object? electricalResistanceProbeId = freezed,Object? electricalResistanceProbe = freezed,Object? corrosionCouponsId = freezed,Object? corrosionCoupons = freezed,Object? linerInstallationDate = freezed,Object? linerConditionId = freezed,Object? linerCondition = freezed,Object? immersionGradeCoatingQualityId = freezed,Object? immersionGradeCoatingQuality = freezed,Object? isDeleted = freezed,}) {
  return _then(_Component(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,equipmentComponentId: freezed == equipmentComponentId ? _self.equipmentComponentId : equipmentComponentId // ignore: cast_nullable_to_non_nullable
as String?,componentID: freezed == componentID ? _self.componentID : componentID // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,componentRefDataId: freezed == componentRefDataId ? _self.componentRefDataId : componentRefDataId // ignore: cast_nullable_to_non_nullable
as String?,componentRefData: freezed == componentRefData ? _self.componentRefData : componentRefData // ignore: cast_nullable_to_non_nullable
as ReferenceData?,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,familyId: freezed == familyId ? _self.familyId : familyId // ignore: cast_nullable_to_non_nullable
as String?,family: freezed == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as ReferenceData?,dateInService: freezed == dateInService ? _self.dateInService : dateInService // ignore: cast_nullable_to_non_nullable
as DateTime?,operatingPressure: freezed == operatingPressure ? _self.operatingPressure : operatingPressure // ignore: cast_nullable_to_non_nullable
as int?,operatingPressureShell: freezed == operatingPressureShell ? _self.operatingPressureShell : operatingPressureShell // ignore: cast_nullable_to_non_nullable
as int?,operatingTemperature: freezed == operatingTemperature ? _self.operatingTemperature : operatingTemperature // ignore: cast_nullable_to_non_nullable
as int?,areaHumidityId: freezed == areaHumidityId ? _self.areaHumidityId : areaHumidityId // ignore: cast_nullable_to_non_nullable
as String?,areaHumidity: freezed == areaHumidity ? _self.areaHumidity : areaHumidity // ignore: cast_nullable_to_non_nullable
as ReferenceData?,foundationTypeId: freezed == foundationTypeId ? _self.foundationTypeId : foundationTypeId // ignore: cast_nullable_to_non_nullable
as String?,foundationType: freezed == foundationType ? _self.foundationType : foundationType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,initialFluidPhaseId: freezed == initialFluidPhaseId ? _self.initialFluidPhaseId : initialFluidPhaseId // ignore: cast_nullable_to_non_nullable
as String?,initialFluidPhase: freezed == initialFluidPhase ? _self.initialFluidPhase : initialFluidPhase // ignore: cast_nullable_to_non_nullable
as ReferenceData?,isToxicMixture: freezed == isToxicMixture ? _self.isToxicMixture : isToxicMixture // ignore: cast_nullable_to_non_nullable
as bool?,percentToxic: freezed == percentToxic ? _self.percentToxic : percentToxic // ignore: cast_nullable_to_non_nullable
as double?,inventory: freezed == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as double?,detectionTime: freezed == detectionTime ? _self.detectionTime : detectionTime // ignore: cast_nullable_to_non_nullable
as double?,isolationTime: freezed == isolationTime ? _self.isolationTime : isolationTime // ignore: cast_nullable_to_non_nullable
as double?,designPressure: freezed == designPressure ? _self.designPressure : designPressure // ignore: cast_nullable_to_non_nullable
as double?,designPressureShellSide: freezed == designPressureShellSide ? _self.designPressureShellSide : designPressureShellSide // ignore: cast_nullable_to_non_nullable
as double?,designTemperature: freezed == designTemperature ? _self.designTemperature : designTemperature // ignore: cast_nullable_to_non_nullable
as double?,designTemperatureShellSide: freezed == designTemperatureShellSide ? _self.designTemperatureShellSide : designTemperatureShellSide // ignore: cast_nullable_to_non_nullable
as double?,diameter: freezed == diameter ? _self.diameter : diameter // ignore: cast_nullable_to_non_nullable
as double?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as double?,fillHeight: freezed == fillHeight ? _self.fillHeight : fillHeight // ignore: cast_nullable_to_non_nullable
as double?,norminalThickness: freezed == norminalThickness ? _self.norminalThickness : norminalThickness // ignore: cast_nullable_to_non_nullable
as double?,stressLookupTableId: freezed == stressLookupTableId ? _self.stressLookupTableId : stressLookupTableId // ignore: cast_nullable_to_non_nullable
as String?,stressLookupTable: freezed == stressLookupTable ? _self.stressLookupTable : stressLookupTable // ignore: cast_nullable_to_non_nullable
as ReferenceData?,bmCode: freezed == bmCode ? _self.bmCode : bmCode // ignore: cast_nullable_to_non_nullable
as String?,bmYear: freezed == bmYear ? _self.bmYear : bmYear // ignore: cast_nullable_to_non_nullable
as String?,bmSpec: freezed == bmSpec ? _self.bmSpec : bmSpec // ignore: cast_nullable_to_non_nullable
as String?,bmGrade: freezed == bmGrade ? _self.bmGrade : bmGrade // ignore: cast_nullable_to_non_nullable
as String?,weldJointEffyId: freezed == weldJointEffyId ? _self.weldJointEffyId : weldJointEffyId // ignore: cast_nullable_to_non_nullable
as String?,weldJointEffy: freezed == weldJointEffy ? _self.weldJointEffy : weldJointEffy // ignore: cast_nullable_to_non_nullable
as ReferenceData?,isInsulated: freezed == isInsulated ? _self.isInsulated : isInsulated // ignore: cast_nullable_to_non_nullable
as bool?,insulationTypeId: freezed == insulationTypeId ? _self.insulationTypeId : insulationTypeId // ignore: cast_nullable_to_non_nullable
as String?,insulationType: freezed == insulationType ? _self.insulationType : insulationType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,pipingCircuitLength: freezed == pipingCircuitLength ? _self.pipingCircuitLength : pipingCircuitLength // ignore: cast_nullable_to_non_nullable
as double?,isPWHT: freezed == isPWHT ? _self.isPWHT : isPWHT // ignore: cast_nullable_to_non_nullable
as bool?,courseNumber: freezed == courseNumber ? _self.courseNumber : courseNumber // ignore: cast_nullable_to_non_nullable
as double?,isEntryPossibleId: freezed == isEntryPossibleId ? _self.isEntryPossibleId : isEntryPossibleId // ignore: cast_nullable_to_non_nullable
as String?,isEntryPossible: freezed == isEntryPossible ? _self.isEntryPossible : isEntryPossible // ignore: cast_nullable_to_non_nullable
as ReferenceData?,corrosiveProduct: freezed == corrosiveProduct ? _self.corrosiveProduct : corrosiveProduct // ignore: cast_nullable_to_non_nullable
as String?,internalCorrosionTypeId: freezed == internalCorrosionTypeId ? _self.internalCorrosionTypeId : internalCorrosionTypeId // ignore: cast_nullable_to_non_nullable
as String?,internalCorrosionType: freezed == internalCorrosionType ? _self.internalCorrosionType : internalCorrosionType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,internalCorrosionTypeShellSideId: freezed == internalCorrosionTypeShellSideId ? _self.internalCorrosionTypeShellSideId : internalCorrosionTypeShellSideId // ignore: cast_nullable_to_non_nullable
as String?,internalCorrosionTypeShellSide: freezed == internalCorrosionTypeShellSide ? _self.internalCorrosionTypeShellSide : internalCorrosionTypeShellSide // ignore: cast_nullable_to_non_nullable
as ReferenceData?,isPredictableIntCorrLocation: freezed == isPredictableIntCorrLocation ? _self.isPredictableIntCorrLocation : isPredictableIntCorrLocation // ignore: cast_nullable_to_non_nullable
as bool?,isPredictableIntCorrLocationShellSide: freezed == isPredictableIntCorrLocationShellSide ? _self.isPredictableIntCorrLocationShellSide : isPredictableIntCorrLocationShellSide // ignore: cast_nullable_to_non_nullable
as bool?,estimatedInternalCorrosionRate: freezed == estimatedInternalCorrosionRate ? _self.estimatedInternalCorrosionRate : estimatedInternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as double?,estimatedExternalCorrosionRate: freezed == estimatedExternalCorrosionRate ? _self.estimatedExternalCorrosionRate : estimatedExternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as double?,measuredExternalCorrosionRate: freezed == measuredExternalCorrosionRate ? _self.measuredExternalCorrosionRate : measuredExternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as double?,sourceOfCalculatedCorrosionRateId: freezed == sourceOfCalculatedCorrosionRateId ? _self.sourceOfCalculatedCorrosionRateId : sourceOfCalculatedCorrosionRateId // ignore: cast_nullable_to_non_nullable
as String?,sourceOfCalculatedCorrosionRate: freezed == sourceOfCalculatedCorrosionRate ? _self.sourceOfCalculatedCorrosionRate : sourceOfCalculatedCorrosionRate // ignore: cast_nullable_to_non_nullable
as ReferenceData?,lastKnownInspectionDate: freezed == lastKnownInspectionDate ? _self.lastKnownInspectionDate : lastKnownInspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,onlineMonitoringFlagId: freezed == onlineMonitoringFlagId ? _self.onlineMonitoringFlagId : onlineMonitoringFlagId // ignore: cast_nullable_to_non_nullable
as String?,onlineMonitoringFlag: freezed == onlineMonitoringFlag ? _self.onlineMonitoringFlag : onlineMonitoringFlag // ignore: cast_nullable_to_non_nullable
as ReferenceData?,keyProcessVariableId: freezed == keyProcessVariableId ? _self.keyProcessVariableId : keyProcessVariableId // ignore: cast_nullable_to_non_nullable
as String?,keyProcessVariable: freezed == keyProcessVariable ? _self.keyProcessVariable : keyProcessVariable // ignore: cast_nullable_to_non_nullable
as ReferenceData?,electricalResistanceProbeId: freezed == electricalResistanceProbeId ? _self.electricalResistanceProbeId : electricalResistanceProbeId // ignore: cast_nullable_to_non_nullable
as String?,electricalResistanceProbe: freezed == electricalResistanceProbe ? _self.electricalResistanceProbe : electricalResistanceProbe // ignore: cast_nullable_to_non_nullable
as ReferenceData?,corrosionCouponsId: freezed == corrosionCouponsId ? _self.corrosionCouponsId : corrosionCouponsId // ignore: cast_nullable_to_non_nullable
as String?,corrosionCoupons: freezed == corrosionCoupons ? _self.corrosionCoupons : corrosionCoupons // ignore: cast_nullable_to_non_nullable
as ReferenceData?,linerInstallationDate: freezed == linerInstallationDate ? _self.linerInstallationDate : linerInstallationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,linerConditionId: freezed == linerConditionId ? _self.linerConditionId : linerConditionId // ignore: cast_nullable_to_non_nullable
as String?,linerCondition: freezed == linerCondition ? _self.linerCondition : linerCondition // ignore: cast_nullable_to_non_nullable
as ReferenceData?,immersionGradeCoatingQualityId: freezed == immersionGradeCoatingQualityId ? _self.immersionGradeCoatingQualityId : immersionGradeCoatingQualityId // ignore: cast_nullable_to_non_nullable
as String?,immersionGradeCoatingQuality: freezed == immersionGradeCoatingQuality ? _self.immersionGradeCoatingQuality : immersionGradeCoatingQuality // ignore: cast_nullable_to_non_nullable
as ReferenceData?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get componentRefData {
    if (_self.componentRefData == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.componentRefData!, (value) {
    return _then(_self.copyWith(componentRefData: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get family {
    if (_self.family == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.family!, (value) {
    return _then(_self.copyWith(family: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get areaHumidity {
    if (_self.areaHumidity == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.areaHumidity!, (value) {
    return _then(_self.copyWith(areaHumidity: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get foundationType {
    if (_self.foundationType == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.foundationType!, (value) {
    return _then(_self.copyWith(foundationType: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get initialFluidPhase {
    if (_self.initialFluidPhase == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.initialFluidPhase!, (value) {
    return _then(_self.copyWith(initialFluidPhase: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get stressLookupTable {
    if (_self.stressLookupTable == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.stressLookupTable!, (value) {
    return _then(_self.copyWith(stressLookupTable: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get weldJointEffy {
    if (_self.weldJointEffy == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.weldJointEffy!, (value) {
    return _then(_self.copyWith(weldJointEffy: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get insulationType {
    if (_self.insulationType == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.insulationType!, (value) {
    return _then(_self.copyWith(insulationType: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get isEntryPossible {
    if (_self.isEntryPossible == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.isEntryPossible!, (value) {
    return _then(_self.copyWith(isEntryPossible: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get internalCorrosionType {
    if (_self.internalCorrosionType == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.internalCorrosionType!, (value) {
    return _then(_self.copyWith(internalCorrosionType: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get internalCorrosionTypeShellSide {
    if (_self.internalCorrosionTypeShellSide == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.internalCorrosionTypeShellSide!, (value) {
    return _then(_self.copyWith(internalCorrosionTypeShellSide: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get sourceOfCalculatedCorrosionRate {
    if (_self.sourceOfCalculatedCorrosionRate == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.sourceOfCalculatedCorrosionRate!, (value) {
    return _then(_self.copyWith(sourceOfCalculatedCorrosionRate: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get onlineMonitoringFlag {
    if (_self.onlineMonitoringFlag == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.onlineMonitoringFlag!, (value) {
    return _then(_self.copyWith(onlineMonitoringFlag: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get keyProcessVariable {
    if (_self.keyProcessVariable == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.keyProcessVariable!, (value) {
    return _then(_self.copyWith(keyProcessVariable: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get electricalResistanceProbe {
    if (_self.electricalResistanceProbe == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.electricalResistanceProbe!, (value) {
    return _then(_self.copyWith(electricalResistanceProbe: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get corrosionCoupons {
    if (_self.corrosionCoupons == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.corrosionCoupons!, (value) {
    return _then(_self.copyWith(corrosionCoupons: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get linerCondition {
    if (_self.linerCondition == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.linerCondition!, (value) {
    return _then(_self.copyWith(linerCondition: value));
  });
}/// Create a copy of Component
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get immersionGradeCoatingQuality {
    if (_self.immersionGradeCoatingQuality == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.immersionGradeCoatingQuality!, (value) {
    return _then(_self.copyWith(immersionGradeCoatingQuality: value));
  });
}
}


/// @nodoc
mixin _$ReferenceData {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get category; String? get value; String? get displayValue;
/// Create a copy of ReferenceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<ReferenceData> get copyWith => _$ReferenceDataCopyWithImpl<ReferenceData>(this as ReferenceData, _$identity);

  /// Serializes this ReferenceData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferenceData&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.category, category) || other.category == category)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,category,value,displayValue);

@override
String toString() {
  return 'ReferenceData(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, category: $category, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class $ReferenceDataCopyWith<$Res>  {
  factory $ReferenceDataCopyWith(ReferenceData value, $Res Function(ReferenceData) _then) = _$ReferenceDataCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? category, String? value, String? displayValue
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? category = freezed,Object? value = freezed,Object? displayValue = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,displayValue: freezed == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? category,  String? value,  String? displayValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferenceData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? category,  String? value,  String? displayValue)  $default,) {final _that = this;
switch (_that) {
case _ReferenceData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? category,  String? value,  String? displayValue)?  $default,) {final _that = this;
switch (_that) {
case _ReferenceData() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.category,_that.value,_that.displayValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReferenceData implements ReferenceData {
  const _ReferenceData({this.id, this.createdAt, this.updatedAt, this.category, this.value, this.displayValue});
  factory _ReferenceData.fromJson(Map<String, dynamic> json) => _$ReferenceDataFromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? category;
@override final  String? value;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferenceData&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.category, category) || other.category == category)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,category,value,displayValue);

@override
String toString() {
  return 'ReferenceData(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, category: $category, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class _$ReferenceDataCopyWith<$Res> implements $ReferenceDataCopyWith<$Res> {
  factory _$ReferenceDataCopyWith(_ReferenceData value, $Res Function(_ReferenceData) _then) = __$ReferenceDataCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? category, String? value, String? displayValue
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? category = freezed,Object? value = freezed,Object? displayValue = freezed,}) {
  return _then(_ReferenceData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,displayValue: freezed == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Attachment {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get documentID; String? get name; String? get url; String? get description; String? get comments; String? get equipmentId; String? get scheduleId; String? get recordId; String? get scopeId; bool? get isDeleted;
/// Create a copy of Attachment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttachmentCopyWith<Attachment> get copyWith => _$AttachmentCopyWithImpl<Attachment>(this as Attachment, _$identity);

  /// Serializes this Attachment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Attachment&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.documentID, documentID) || other.documentID == documentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.scopeId, scopeId) || other.scopeId == scopeId)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,documentID,name,url,description,comments,equipmentId,scheduleId,recordId,scopeId,isDeleted);

@override
String toString() {
  return 'Attachment(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, documentID: $documentID, name: $name, url: $url, description: $description, comments: $comments, equipmentId: $equipmentId, scheduleId: $scheduleId, recordId: $recordId, scopeId: $scopeId, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $AttachmentCopyWith<$Res>  {
  factory $AttachmentCopyWith(Attachment value, $Res Function(Attachment) _then) = _$AttachmentCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? documentID, String? name, String? url, String? description, String? comments, String? equipmentId, String? scheduleId, String? recordId, String? scopeId, bool? isDeleted
});




}
/// @nodoc
class _$AttachmentCopyWithImpl<$Res>
    implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._self, this._then);

  final Attachment _self;
  final $Res Function(Attachment) _then;

/// Create a copy of Attachment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? documentID = freezed,Object? name = freezed,Object? url = freezed,Object? description = freezed,Object? comments = freezed,Object? equipmentId = freezed,Object? scheduleId = freezed,Object? recordId = freezed,Object? scopeId = freezed,Object? isDeleted = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,documentID: freezed == documentID ? _self.documentID : documentID // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,scopeId: freezed == scopeId ? _self.scopeId : scopeId // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Attachment].
extension AttachmentPatterns on Attachment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Attachment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Attachment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Attachment value)  $default,){
final _that = this;
switch (_that) {
case _Attachment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Attachment value)?  $default,){
final _that = this;
switch (_that) {
case _Attachment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? documentID,  String? name,  String? url,  String? description,  String? comments,  String? equipmentId,  String? scheduleId,  String? recordId,  String? scopeId,  bool? isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Attachment() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.equipmentId,_that.scheduleId,_that.recordId,_that.scopeId,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? documentID,  String? name,  String? url,  String? description,  String? comments,  String? equipmentId,  String? scheduleId,  String? recordId,  String? scopeId,  bool? isDeleted)  $default,) {final _that = this;
switch (_that) {
case _Attachment():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.equipmentId,_that.scheduleId,_that.recordId,_that.scopeId,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? documentID,  String? name,  String? url,  String? description,  String? comments,  String? equipmentId,  String? scheduleId,  String? recordId,  String? scopeId,  bool? isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _Attachment() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.equipmentId,_that.scheduleId,_that.recordId,_that.scopeId,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Attachment implements Attachment {
  const _Attachment({this.id, this.createdAt, this.updatedAt, this.documentID, this.name, this.url, this.description, this.comments, this.equipmentId, this.scheduleId, this.recordId, this.scopeId, this.isDeleted});
  factory _Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? documentID;
@override final  String? name;
@override final  String? url;
@override final  String? description;
@override final  String? comments;
@override final  String? equipmentId;
@override final  String? scheduleId;
@override final  String? recordId;
@override final  String? scopeId;
@override final  bool? isDeleted;

/// Create a copy of Attachment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttachmentCopyWith<_Attachment> get copyWith => __$AttachmentCopyWithImpl<_Attachment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttachmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Attachment&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.documentID, documentID) || other.documentID == documentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.scopeId, scopeId) || other.scopeId == scopeId)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,documentID,name,url,description,comments,equipmentId,scheduleId,recordId,scopeId,isDeleted);

@override
String toString() {
  return 'Attachment(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, documentID: $documentID, name: $name, url: $url, description: $description, comments: $comments, equipmentId: $equipmentId, scheduleId: $scheduleId, recordId: $recordId, scopeId: $scopeId, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$AttachmentCopyWith<$Res> implements $AttachmentCopyWith<$Res> {
  factory _$AttachmentCopyWith(_Attachment value, $Res Function(_Attachment) _then) = __$AttachmentCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? documentID, String? name, String? url, String? description, String? comments, String? equipmentId, String? scheduleId, String? recordId, String? scopeId, bool? isDeleted
});




}
/// @nodoc
class __$AttachmentCopyWithImpl<$Res>
    implements _$AttachmentCopyWith<$Res> {
  __$AttachmentCopyWithImpl(this._self, this._then);

  final _Attachment _self;
  final $Res Function(_Attachment) _then;

/// Create a copy of Attachment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? documentID = freezed,Object? name = freezed,Object? url = freezed,Object? description = freezed,Object? comments = freezed,Object? equipmentId = freezed,Object? scheduleId = freezed,Object? recordId = freezed,Object? scopeId = freezed,Object? isDeleted = freezed,}) {
  return _then(_Attachment(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,documentID: freezed == documentID ? _self.documentID : documentID // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,scopeId: freezed == scopeId ? _self.scopeId : scopeId // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$RecordCreditedItem {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get recordId; String? get scheduleId;
/// Create a copy of RecordCreditedItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordCreditedItemCopyWith<RecordCreditedItem> get copyWith => _$RecordCreditedItemCopyWithImpl<RecordCreditedItem>(this as RecordCreditedItem, _$identity);

  /// Serializes this RecordCreditedItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordCreditedItem&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,recordId,scheduleId);

@override
String toString() {
  return 'RecordCreditedItem(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, recordId: $recordId, scheduleId: $scheduleId)';
}


}

/// @nodoc
abstract mixin class $RecordCreditedItemCopyWith<$Res>  {
  factory $RecordCreditedItemCopyWith(RecordCreditedItem value, $Res Function(RecordCreditedItem) _then) = _$RecordCreditedItemCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? recordId, String? scheduleId
});




}
/// @nodoc
class _$RecordCreditedItemCopyWithImpl<$Res>
    implements $RecordCreditedItemCopyWith<$Res> {
  _$RecordCreditedItemCopyWithImpl(this._self, this._then);

  final RecordCreditedItem _self;
  final $Res Function(RecordCreditedItem) _then;

/// Create a copy of RecordCreditedItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? recordId = freezed,Object? scheduleId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordCreditedItem].
extension RecordCreditedItemPatterns on RecordCreditedItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordCreditedItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordCreditedItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordCreditedItem value)  $default,){
final _that = this;
switch (_that) {
case _RecordCreditedItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordCreditedItem value)?  $default,){
final _that = this;
switch (_that) {
case _RecordCreditedItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? recordId,  String? scheduleId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordCreditedItem() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.recordId,_that.scheduleId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? recordId,  String? scheduleId)  $default,) {final _that = this;
switch (_that) {
case _RecordCreditedItem():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.recordId,_that.scheduleId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? recordId,  String? scheduleId)?  $default,) {final _that = this;
switch (_that) {
case _RecordCreditedItem() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.recordId,_that.scheduleId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordCreditedItem implements RecordCreditedItem {
  const _RecordCreditedItem({this.id, this.createdAt, this.updatedAt, this.recordId, this.scheduleId});
  factory _RecordCreditedItem.fromJson(Map<String, dynamic> json) => _$RecordCreditedItemFromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? recordId;
@override final  String? scheduleId;

/// Create a copy of RecordCreditedItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordCreditedItemCopyWith<_RecordCreditedItem> get copyWith => __$RecordCreditedItemCopyWithImpl<_RecordCreditedItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordCreditedItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordCreditedItem&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,recordId,scheduleId);

@override
String toString() {
  return 'RecordCreditedItem(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, recordId: $recordId, scheduleId: $scheduleId)';
}


}

/// @nodoc
abstract mixin class _$RecordCreditedItemCopyWith<$Res> implements $RecordCreditedItemCopyWith<$Res> {
  factory _$RecordCreditedItemCopyWith(_RecordCreditedItem value, $Res Function(_RecordCreditedItem) _then) = __$RecordCreditedItemCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? recordId, String? scheduleId
});




}
/// @nodoc
class __$RecordCreditedItemCopyWithImpl<$Res>
    implements _$RecordCreditedItemCopyWith<$Res> {
  __$RecordCreditedItemCopyWithImpl(this._self, this._then);

  final _RecordCreditedItem _self;
  final $Res Function(_RecordCreditedItem) _then;

/// Create a copy of RecordCreditedItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? recordId = freezed,Object? scheduleId = freezed,}) {
  return _then(_RecordCreditedItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

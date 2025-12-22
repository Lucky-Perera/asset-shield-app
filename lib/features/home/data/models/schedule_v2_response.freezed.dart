// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_v2_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleListResponse {

 bool get success; ScheduleListData get data;
/// Create a copy of ScheduleListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleListResponseCopyWith<ScheduleListResponse> get copyWith => _$ScheduleListResponseCopyWithImpl<ScheduleListResponse>(this as ScheduleListResponse, _$identity);

  /// Serializes this ScheduleListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ScheduleListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ScheduleListResponseCopyWith<$Res>  {
  factory $ScheduleListResponseCopyWith(ScheduleListResponse value, $Res Function(ScheduleListResponse) _then) = _$ScheduleListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, ScheduleListData data
});


$ScheduleListDataCopyWith<$Res> get data;

}
/// @nodoc
class _$ScheduleListResponseCopyWithImpl<$Res>
    implements $ScheduleListResponseCopyWith<$Res> {
  _$ScheduleListResponseCopyWithImpl(this._self, this._then);

  final ScheduleListResponse _self;
  final $Res Function(ScheduleListResponse) _then;

/// Create a copy of ScheduleListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ScheduleListData,
  ));
}
/// Create a copy of ScheduleListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleListDataCopyWith<$Res> get data {
  
  return $ScheduleListDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleListResponse].
extension ScheduleListResponsePatterns on ScheduleListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleListResponse value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ScheduleListData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ScheduleListData data)  $default,) {final _that = this;
switch (_that) {
case _ScheduleListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ScheduleListData data)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleListResponse implements ScheduleListResponse {
  const _ScheduleListResponse({required this.success, required this.data});
  factory _ScheduleListResponse.fromJson(Map<String, dynamic> json) => _$ScheduleListResponseFromJson(json);

@override final  bool success;
@override final  ScheduleListData data;

/// Create a copy of ScheduleListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleListResponseCopyWith<_ScheduleListResponse> get copyWith => __$ScheduleListResponseCopyWithImpl<_ScheduleListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ScheduleListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ScheduleListResponseCopyWith<$Res> implements $ScheduleListResponseCopyWith<$Res> {
  factory _$ScheduleListResponseCopyWith(_ScheduleListResponse value, $Res Function(_ScheduleListResponse) _then) = __$ScheduleListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, ScheduleListData data
});


@override $ScheduleListDataCopyWith<$Res> get data;

}
/// @nodoc
class __$ScheduleListResponseCopyWithImpl<$Res>
    implements _$ScheduleListResponseCopyWith<$Res> {
  __$ScheduleListResponseCopyWithImpl(this._self, this._then);

  final _ScheduleListResponse _self;
  final $Res Function(_ScheduleListResponse) _then;

/// Create a copy of ScheduleListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ScheduleListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ScheduleListData,
  ));
}

/// Create a copy of ScheduleListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleListDataCopyWith<$Res> get data {
  
  return $ScheduleListDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ScheduleListData {

 List<ScheduleV2Response> get data; Pagination get pagination;
/// Create a copy of ScheduleListData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleListDataCopyWith<ScheduleListData> get copyWith => _$ScheduleListDataCopyWithImpl<ScheduleListData>(this as ScheduleListData, _$identity);

  /// Serializes this ScheduleListData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleListData&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'ScheduleListData(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ScheduleListDataCopyWith<$Res>  {
  factory $ScheduleListDataCopyWith(ScheduleListData value, $Res Function(ScheduleListData) _then) = _$ScheduleListDataCopyWithImpl;
@useResult
$Res call({
 List<ScheduleV2Response> data, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$ScheduleListDataCopyWithImpl<$Res>
    implements $ScheduleListDataCopyWith<$Res> {
  _$ScheduleListDataCopyWithImpl(this._self, this._then);

  final ScheduleListData _self;
  final $Res Function(ScheduleListData) _then;

/// Create a copy of ScheduleListData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2Response>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}
/// Create a copy of ScheduleListData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleListData].
extension ScheduleListDataPatterns on ScheduleListData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleListData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleListData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleListData value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleListData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleListData value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleListData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ScheduleV2Response> data,  Pagination pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleListData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ScheduleV2Response> data,  Pagination pagination)  $default,) {final _that = this;
switch (_that) {
case _ScheduleListData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ScheduleV2Response> data,  Pagination pagination)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleListData() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleListData implements ScheduleListData {
  const _ScheduleListData({required final  List<ScheduleV2Response> data, required this.pagination}): _data = data;
  factory _ScheduleListData.fromJson(Map<String, dynamic> json) => _$ScheduleListDataFromJson(json);

 final  List<ScheduleV2Response> _data;
@override List<ScheduleV2Response> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  Pagination pagination;

/// Create a copy of ScheduleListData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleListDataCopyWith<_ScheduleListData> get copyWith => __$ScheduleListDataCopyWithImpl<_ScheduleListData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleListDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleListData&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'ScheduleListData(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$ScheduleListDataCopyWith<$Res> implements $ScheduleListDataCopyWith<$Res> {
  factory _$ScheduleListDataCopyWith(_ScheduleListData value, $Res Function(_ScheduleListData) _then) = __$ScheduleListDataCopyWithImpl;
@override @useResult
$Res call({
 List<ScheduleV2Response> data, Pagination pagination
});


@override $PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$ScheduleListDataCopyWithImpl<$Res>
    implements _$ScheduleListDataCopyWith<$Res> {
  __$ScheduleListDataCopyWithImpl(this._self, this._then);

  final _ScheduleListData _self;
  final $Res Function(_ScheduleListData) _then;

/// Create a copy of ScheduleListData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_ScheduleListData(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2Response>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}

/// Create a copy of ScheduleListData
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

 int get page; int get limit; int get total; int get totalPages;
/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationCopyWith<Pagination> get copyWith => _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pagination&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'Pagination(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res>  {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) _then) = _$PaginationCopyWithImpl;
@useResult
$Res call({
 int page, int limit, int total, int totalPages
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
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _Pagination():
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int limit,  int total,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pagination implements Pagination {
  const _Pagination({required this.page, required this.limit, required this.total, required this.totalPages});
  factory _Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);

@override final  int page;
@override final  int limit;
@override final  int total;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pagination&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'Pagination(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(_Pagination value, $Res Function(_Pagination) _then) = __$PaginationCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, int total, int totalPages
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
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_Pagination(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ScheduleV2Response {

 String get id; String get scheduleName; String get status; String get description; DateTime get createdAt; DateTime get updatedAt; DateTime get dueDate; DateTime? get inspectionDate; bool get isRBISchedule; bool get isRecurring; int? get inspectionInterval; String? get damageMechanism; String? get inspectionEffectiveness; String? get aiSummary; String? get comments; bool get isDeleted; String get scheduleTypeId; String get operationId; String get equipmentId; String get createdById; String? get approvedById; String? get reviewedById; List<AttachmentV2> get attachments; List<ChecklistQuestionTemplate> get checklistQuestionTemplates; List<InspectionMethodV2> get inspectionMethods; List<PotentialEmergentWorkV2> get potentialEmergentWorks; List<ScheduleComponent> get components; User? get approvedBy; User? get createdBy; User? get reviewedBy; Equipment? get equipment; ReferenceData? get operation; ReferenceData? get scheduleType; RecordV2Response? get record;
/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleV2ResponseCopyWith<ScheduleV2Response> get copyWith => _$ScheduleV2ResponseCopyWithImpl<ScheduleV2Response>(this as ScheduleV2Response, _$identity);

  /// Serializes this ScheduleV2Response to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleV2Response&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleName, scheduleName) || other.scheduleName == scheduleName)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.isRBISchedule, isRBISchedule) || other.isRBISchedule == isRBISchedule)&&(identical(other.isRecurring, isRecurring) || other.isRecurring == isRecurring)&&(identical(other.inspectionInterval, inspectionInterval) || other.inspectionInterval == inspectionInterval)&&(identical(other.damageMechanism, damageMechanism) || other.damageMechanism == damageMechanism)&&(identical(other.inspectionEffectiveness, inspectionEffectiveness) || other.inspectionEffectiveness == inspectionEffectiveness)&&(identical(other.aiSummary, aiSummary) || other.aiSummary == aiSummary)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.approvedById, approvedById) || other.approvedById == approvedById)&&(identical(other.reviewedById, reviewedById) || other.reviewedById == reviewedById)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&const DeepCollectionEquality().equals(other.checklistQuestionTemplates, checklistQuestionTemplates)&&const DeepCollectionEquality().equals(other.inspectionMethods, inspectionMethods)&&const DeepCollectionEquality().equals(other.potentialEmergentWorks, potentialEmergentWorks)&&const DeepCollectionEquality().equals(other.components, components)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.equipment, equipment) || other.equipment == equipment)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.scheduleType, scheduleType) || other.scheduleType == scheduleType)&&(identical(other.record, record) || other.record == record));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,scheduleName,status,description,createdAt,updatedAt,dueDate,inspectionDate,isRBISchedule,isRecurring,inspectionInterval,damageMechanism,inspectionEffectiveness,aiSummary,comments,isDeleted,scheduleTypeId,operationId,equipmentId,createdById,approvedById,reviewedById,const DeepCollectionEquality().hash(attachments),const DeepCollectionEquality().hash(checklistQuestionTemplates),const DeepCollectionEquality().hash(inspectionMethods),const DeepCollectionEquality().hash(potentialEmergentWorks),const DeepCollectionEquality().hash(components),approvedBy,createdBy,reviewedBy,equipment,operation,scheduleType,record]);

@override
String toString() {
  return 'ScheduleV2Response(id: $id, scheduleName: $scheduleName, status: $status, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, dueDate: $dueDate, inspectionDate: $inspectionDate, isRBISchedule: $isRBISchedule, isRecurring: $isRecurring, inspectionInterval: $inspectionInterval, damageMechanism: $damageMechanism, inspectionEffectiveness: $inspectionEffectiveness, aiSummary: $aiSummary, comments: $comments, isDeleted: $isDeleted, scheduleTypeId: $scheduleTypeId, operationId: $operationId, equipmentId: $equipmentId, createdById: $createdById, approvedById: $approvedById, reviewedById: $reviewedById, attachments: $attachments, checklistQuestionTemplates: $checklistQuestionTemplates, inspectionMethods: $inspectionMethods, potentialEmergentWorks: $potentialEmergentWorks, components: $components, approvedBy: $approvedBy, createdBy: $createdBy, reviewedBy: $reviewedBy, equipment: $equipment, operation: $operation, scheduleType: $scheduleType, record: $record)';
}


}

/// @nodoc
abstract mixin class $ScheduleV2ResponseCopyWith<$Res>  {
  factory $ScheduleV2ResponseCopyWith(ScheduleV2Response value, $Res Function(ScheduleV2Response) _then) = _$ScheduleV2ResponseCopyWithImpl;
@useResult
$Res call({
 String id, String scheduleName, String status, String description, DateTime createdAt, DateTime updatedAt, DateTime dueDate, DateTime? inspectionDate, bool isRBISchedule, bool isRecurring, int? inspectionInterval, String? damageMechanism, String? inspectionEffectiveness, String? aiSummary, String? comments, bool isDeleted, String scheduleTypeId, String operationId, String equipmentId, String createdById, String? approvedById, String? reviewedById, List<AttachmentV2> attachments, List<ChecklistQuestionTemplate> checklistQuestionTemplates, List<InspectionMethodV2> inspectionMethods, List<PotentialEmergentWorkV2> potentialEmergentWorks, List<ScheduleComponent> components, User? approvedBy, User? createdBy, User? reviewedBy, Equipment? equipment, ReferenceData? operation, ReferenceData? scheduleType, RecordV2Response? record
});


$UserCopyWith<$Res>? get approvedBy;$UserCopyWith<$Res>? get createdBy;$UserCopyWith<$Res>? get reviewedBy;$EquipmentCopyWith<$Res>? get equipment;$ReferenceDataCopyWith<$Res>? get operation;$ReferenceDataCopyWith<$Res>? get scheduleType;$RecordV2ResponseCopyWith<$Res>? get record;

}
/// @nodoc
class _$ScheduleV2ResponseCopyWithImpl<$Res>
    implements $ScheduleV2ResponseCopyWith<$Res> {
  _$ScheduleV2ResponseCopyWithImpl(this._self, this._then);

  final ScheduleV2Response _self;
  final $Res Function(ScheduleV2Response) _then;

/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? scheduleName = null,Object? status = null,Object? description = null,Object? createdAt = null,Object? updatedAt = null,Object? dueDate = null,Object? inspectionDate = freezed,Object? isRBISchedule = null,Object? isRecurring = null,Object? inspectionInterval = freezed,Object? damageMechanism = freezed,Object? inspectionEffectiveness = freezed,Object? aiSummary = freezed,Object? comments = freezed,Object? isDeleted = null,Object? scheduleTypeId = null,Object? operationId = null,Object? equipmentId = null,Object? createdById = null,Object? approvedById = freezed,Object? reviewedById = freezed,Object? attachments = null,Object? checklistQuestionTemplates = null,Object? inspectionMethods = null,Object? potentialEmergentWorks = null,Object? components = null,Object? approvedBy = freezed,Object? createdBy = freezed,Object? reviewedBy = freezed,Object? equipment = freezed,Object? operation = freezed,Object? scheduleType = freezed,Object? record = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scheduleName: null == scheduleName ? _self.scheduleName : scheduleName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,inspectionDate: freezed == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isRBISchedule: null == isRBISchedule ? _self.isRBISchedule : isRBISchedule // ignore: cast_nullable_to_non_nullable
as bool,isRecurring: null == isRecurring ? _self.isRecurring : isRecurring // ignore: cast_nullable_to_non_nullable
as bool,inspectionInterval: freezed == inspectionInterval ? _self.inspectionInterval : inspectionInterval // ignore: cast_nullable_to_non_nullable
as int?,damageMechanism: freezed == damageMechanism ? _self.damageMechanism : damageMechanism // ignore: cast_nullable_to_non_nullable
as String?,inspectionEffectiveness: freezed == inspectionEffectiveness ? _self.inspectionEffectiveness : inspectionEffectiveness // ignore: cast_nullable_to_non_nullable
as String?,aiSummary: freezed == aiSummary ? _self.aiSummary : aiSummary // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,scheduleTypeId: null == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String,operationId: null == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,createdById: null == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String,approvedById: freezed == approvedById ? _self.approvedById : approvedById // ignore: cast_nullable_to_non_nullable
as String?,reviewedById: freezed == reviewedById ? _self.reviewedById : reviewedById // ignore: cast_nullable_to_non_nullable
as String?,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>,checklistQuestionTemplates: null == checklistQuestionTemplates ? _self.checklistQuestionTemplates : checklistQuestionTemplates // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionTemplate>,inspectionMethods: null == inspectionMethods ? _self.inspectionMethods : inspectionMethods // ignore: cast_nullable_to_non_nullable
as List<InspectionMethodV2>,potentialEmergentWorks: null == potentialEmergentWorks ? _self.potentialEmergentWorks : potentialEmergentWorks // ignore: cast_nullable_to_non_nullable
as List<PotentialEmergentWorkV2>,components: null == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as List<ScheduleComponent>,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as User?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as User?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as User?,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as Equipment?,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as ReferenceData?,scheduleType: freezed == scheduleType ? _self.scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,record: freezed == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as RecordV2Response?,
  ));
}
/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get approvedBy {
    if (_self.approvedBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.approvedBy!, (value) {
    return _then(_self.copyWith(approvedBy: value));
  });
}/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get reviewedBy {
    if (_self.reviewedBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.reviewedBy!, (value) {
    return _then(_self.copyWith(reviewedBy: value));
  });
}/// Create a copy of ScheduleV2Response
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
}/// Create a copy of ScheduleV2Response
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
}/// Create a copy of ScheduleV2Response
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
}/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecordV2ResponseCopyWith<$Res>? get record {
    if (_self.record == null) {
    return null;
  }

  return $RecordV2ResponseCopyWith<$Res>(_self.record!, (value) {
    return _then(_self.copyWith(record: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleV2Response].
extension ScheduleV2ResponsePatterns on ScheduleV2Response {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleV2Response value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleV2Response() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleV2Response value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleV2Response():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleV2Response value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleV2Response() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String scheduleName,  String status,  String description,  DateTime createdAt,  DateTime updatedAt,  DateTime dueDate,  DateTime? inspectionDate,  bool isRBISchedule,  bool isRecurring,  int? inspectionInterval,  String? damageMechanism,  String? inspectionEffectiveness,  String? aiSummary,  String? comments,  bool isDeleted,  String scheduleTypeId,  String operationId,  String equipmentId,  String createdById,  String? approvedById,  String? reviewedById,  List<AttachmentV2> attachments,  List<ChecklistQuestionTemplate> checklistQuestionTemplates,  List<InspectionMethodV2> inspectionMethods,  List<PotentialEmergentWorkV2> potentialEmergentWorks,  List<ScheduleComponent> components,  User? approvedBy,  User? createdBy,  User? reviewedBy,  Equipment? equipment,  ReferenceData? operation,  ReferenceData? scheduleType,  RecordV2Response? record)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleV2Response() when $default != null:
return $default(_that.id,_that.scheduleName,_that.status,_that.description,_that.createdAt,_that.updatedAt,_that.dueDate,_that.inspectionDate,_that.isRBISchedule,_that.isRecurring,_that.inspectionInterval,_that.damageMechanism,_that.inspectionEffectiveness,_that.aiSummary,_that.comments,_that.isDeleted,_that.scheduleTypeId,_that.operationId,_that.equipmentId,_that.createdById,_that.approvedById,_that.reviewedById,_that.attachments,_that.checklistQuestionTemplates,_that.inspectionMethods,_that.potentialEmergentWorks,_that.components,_that.approvedBy,_that.createdBy,_that.reviewedBy,_that.equipment,_that.operation,_that.scheduleType,_that.record);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String scheduleName,  String status,  String description,  DateTime createdAt,  DateTime updatedAt,  DateTime dueDate,  DateTime? inspectionDate,  bool isRBISchedule,  bool isRecurring,  int? inspectionInterval,  String? damageMechanism,  String? inspectionEffectiveness,  String? aiSummary,  String? comments,  bool isDeleted,  String scheduleTypeId,  String operationId,  String equipmentId,  String createdById,  String? approvedById,  String? reviewedById,  List<AttachmentV2> attachments,  List<ChecklistQuestionTemplate> checklistQuestionTemplates,  List<InspectionMethodV2> inspectionMethods,  List<PotentialEmergentWorkV2> potentialEmergentWorks,  List<ScheduleComponent> components,  User? approvedBy,  User? createdBy,  User? reviewedBy,  Equipment? equipment,  ReferenceData? operation,  ReferenceData? scheduleType,  RecordV2Response? record)  $default,) {final _that = this;
switch (_that) {
case _ScheduleV2Response():
return $default(_that.id,_that.scheduleName,_that.status,_that.description,_that.createdAt,_that.updatedAt,_that.dueDate,_that.inspectionDate,_that.isRBISchedule,_that.isRecurring,_that.inspectionInterval,_that.damageMechanism,_that.inspectionEffectiveness,_that.aiSummary,_that.comments,_that.isDeleted,_that.scheduleTypeId,_that.operationId,_that.equipmentId,_that.createdById,_that.approvedById,_that.reviewedById,_that.attachments,_that.checklistQuestionTemplates,_that.inspectionMethods,_that.potentialEmergentWorks,_that.components,_that.approvedBy,_that.createdBy,_that.reviewedBy,_that.equipment,_that.operation,_that.scheduleType,_that.record);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String scheduleName,  String status,  String description,  DateTime createdAt,  DateTime updatedAt,  DateTime dueDate,  DateTime? inspectionDate,  bool isRBISchedule,  bool isRecurring,  int? inspectionInterval,  String? damageMechanism,  String? inspectionEffectiveness,  String? aiSummary,  String? comments,  bool isDeleted,  String scheduleTypeId,  String operationId,  String equipmentId,  String createdById,  String? approvedById,  String? reviewedById,  List<AttachmentV2> attachments,  List<ChecklistQuestionTemplate> checklistQuestionTemplates,  List<InspectionMethodV2> inspectionMethods,  List<PotentialEmergentWorkV2> potentialEmergentWorks,  List<ScheduleComponent> components,  User? approvedBy,  User? createdBy,  User? reviewedBy,  Equipment? equipment,  ReferenceData? operation,  ReferenceData? scheduleType,  RecordV2Response? record)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleV2Response() when $default != null:
return $default(_that.id,_that.scheduleName,_that.status,_that.description,_that.createdAt,_that.updatedAt,_that.dueDate,_that.inspectionDate,_that.isRBISchedule,_that.isRecurring,_that.inspectionInterval,_that.damageMechanism,_that.inspectionEffectiveness,_that.aiSummary,_that.comments,_that.isDeleted,_that.scheduleTypeId,_that.operationId,_that.equipmentId,_that.createdById,_that.approvedById,_that.reviewedById,_that.attachments,_that.checklistQuestionTemplates,_that.inspectionMethods,_that.potentialEmergentWorks,_that.components,_that.approvedBy,_that.createdBy,_that.reviewedBy,_that.equipment,_that.operation,_that.scheduleType,_that.record);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleV2Response implements ScheduleV2Response {
  const _ScheduleV2Response({required this.id, required this.scheduleName, required this.status, required this.description, required this.createdAt, required this.updatedAt, required this.dueDate, this.inspectionDate, required this.isRBISchedule, required this.isRecurring, this.inspectionInterval, this.damageMechanism, this.inspectionEffectiveness, this.aiSummary, this.comments, required this.isDeleted, required this.scheduleTypeId, required this.operationId, required this.equipmentId, required this.createdById, this.approvedById, this.reviewedById, required final  List<AttachmentV2> attachments, required final  List<ChecklistQuestionTemplate> checklistQuestionTemplates, required final  List<InspectionMethodV2> inspectionMethods, required final  List<PotentialEmergentWorkV2> potentialEmergentWorks, required final  List<ScheduleComponent> components, this.approvedBy, this.createdBy, this.reviewedBy, this.equipment, this.operation, this.scheduleType, this.record}): _attachments = attachments,_checklistQuestionTemplates = checklistQuestionTemplates,_inspectionMethods = inspectionMethods,_potentialEmergentWorks = potentialEmergentWorks,_components = components;
  factory _ScheduleV2Response.fromJson(Map<String, dynamic> json) => _$ScheduleV2ResponseFromJson(json);

@override final  String id;
@override final  String scheduleName;
@override final  String status;
@override final  String description;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  DateTime dueDate;
@override final  DateTime? inspectionDate;
@override final  bool isRBISchedule;
@override final  bool isRecurring;
@override final  int? inspectionInterval;
@override final  String? damageMechanism;
@override final  String? inspectionEffectiveness;
@override final  String? aiSummary;
@override final  String? comments;
@override final  bool isDeleted;
@override final  String scheduleTypeId;
@override final  String operationId;
@override final  String equipmentId;
@override final  String createdById;
@override final  String? approvedById;
@override final  String? reviewedById;
 final  List<AttachmentV2> _attachments;
@override List<AttachmentV2> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

 final  List<ChecklistQuestionTemplate> _checklistQuestionTemplates;
@override List<ChecklistQuestionTemplate> get checklistQuestionTemplates {
  if (_checklistQuestionTemplates is EqualUnmodifiableListView) return _checklistQuestionTemplates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checklistQuestionTemplates);
}

 final  List<InspectionMethodV2> _inspectionMethods;
@override List<InspectionMethodV2> get inspectionMethods {
  if (_inspectionMethods is EqualUnmodifiableListView) return _inspectionMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inspectionMethods);
}

 final  List<PotentialEmergentWorkV2> _potentialEmergentWorks;
@override List<PotentialEmergentWorkV2> get potentialEmergentWorks {
  if (_potentialEmergentWorks is EqualUnmodifiableListView) return _potentialEmergentWorks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_potentialEmergentWorks);
}

 final  List<ScheduleComponent> _components;
@override List<ScheduleComponent> get components {
  if (_components is EqualUnmodifiableListView) return _components;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_components);
}

@override final  User? approvedBy;
@override final  User? createdBy;
@override final  User? reviewedBy;
@override final  Equipment? equipment;
@override final  ReferenceData? operation;
@override final  ReferenceData? scheduleType;
@override final  RecordV2Response? record;

/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleV2ResponseCopyWith<_ScheduleV2Response> get copyWith => __$ScheduleV2ResponseCopyWithImpl<_ScheduleV2Response>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleV2ResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleV2Response&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleName, scheduleName) || other.scheduleName == scheduleName)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.isRBISchedule, isRBISchedule) || other.isRBISchedule == isRBISchedule)&&(identical(other.isRecurring, isRecurring) || other.isRecurring == isRecurring)&&(identical(other.inspectionInterval, inspectionInterval) || other.inspectionInterval == inspectionInterval)&&(identical(other.damageMechanism, damageMechanism) || other.damageMechanism == damageMechanism)&&(identical(other.inspectionEffectiveness, inspectionEffectiveness) || other.inspectionEffectiveness == inspectionEffectiveness)&&(identical(other.aiSummary, aiSummary) || other.aiSummary == aiSummary)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.approvedById, approvedById) || other.approvedById == approvedById)&&(identical(other.reviewedById, reviewedById) || other.reviewedById == reviewedById)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&const DeepCollectionEquality().equals(other._checklistQuestionTemplates, _checklistQuestionTemplates)&&const DeepCollectionEquality().equals(other._inspectionMethods, _inspectionMethods)&&const DeepCollectionEquality().equals(other._potentialEmergentWorks, _potentialEmergentWorks)&&const DeepCollectionEquality().equals(other._components, _components)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.equipment, equipment) || other.equipment == equipment)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.scheduleType, scheduleType) || other.scheduleType == scheduleType)&&(identical(other.record, record) || other.record == record));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,scheduleName,status,description,createdAt,updatedAt,dueDate,inspectionDate,isRBISchedule,isRecurring,inspectionInterval,damageMechanism,inspectionEffectiveness,aiSummary,comments,isDeleted,scheduleTypeId,operationId,equipmentId,createdById,approvedById,reviewedById,const DeepCollectionEquality().hash(_attachments),const DeepCollectionEquality().hash(_checklistQuestionTemplates),const DeepCollectionEquality().hash(_inspectionMethods),const DeepCollectionEquality().hash(_potentialEmergentWorks),const DeepCollectionEquality().hash(_components),approvedBy,createdBy,reviewedBy,equipment,operation,scheduleType,record]);

@override
String toString() {
  return 'ScheduleV2Response(id: $id, scheduleName: $scheduleName, status: $status, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, dueDate: $dueDate, inspectionDate: $inspectionDate, isRBISchedule: $isRBISchedule, isRecurring: $isRecurring, inspectionInterval: $inspectionInterval, damageMechanism: $damageMechanism, inspectionEffectiveness: $inspectionEffectiveness, aiSummary: $aiSummary, comments: $comments, isDeleted: $isDeleted, scheduleTypeId: $scheduleTypeId, operationId: $operationId, equipmentId: $equipmentId, createdById: $createdById, approvedById: $approvedById, reviewedById: $reviewedById, attachments: $attachments, checklistQuestionTemplates: $checklistQuestionTemplates, inspectionMethods: $inspectionMethods, potentialEmergentWorks: $potentialEmergentWorks, components: $components, approvedBy: $approvedBy, createdBy: $createdBy, reviewedBy: $reviewedBy, equipment: $equipment, operation: $operation, scheduleType: $scheduleType, record: $record)';
}


}

/// @nodoc
abstract mixin class _$ScheduleV2ResponseCopyWith<$Res> implements $ScheduleV2ResponseCopyWith<$Res> {
  factory _$ScheduleV2ResponseCopyWith(_ScheduleV2Response value, $Res Function(_ScheduleV2Response) _then) = __$ScheduleV2ResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String scheduleName, String status, String description, DateTime createdAt, DateTime updatedAt, DateTime dueDate, DateTime? inspectionDate, bool isRBISchedule, bool isRecurring, int? inspectionInterval, String? damageMechanism, String? inspectionEffectiveness, String? aiSummary, String? comments, bool isDeleted, String scheduleTypeId, String operationId, String equipmentId, String createdById, String? approvedById, String? reviewedById, List<AttachmentV2> attachments, List<ChecklistQuestionTemplate> checklistQuestionTemplates, List<InspectionMethodV2> inspectionMethods, List<PotentialEmergentWorkV2> potentialEmergentWorks, List<ScheduleComponent> components, User? approvedBy, User? createdBy, User? reviewedBy, Equipment? equipment, ReferenceData? operation, ReferenceData? scheduleType, RecordV2Response? record
});


@override $UserCopyWith<$Res>? get approvedBy;@override $UserCopyWith<$Res>? get createdBy;@override $UserCopyWith<$Res>? get reviewedBy;@override $EquipmentCopyWith<$Res>? get equipment;@override $ReferenceDataCopyWith<$Res>? get operation;@override $ReferenceDataCopyWith<$Res>? get scheduleType;@override $RecordV2ResponseCopyWith<$Res>? get record;

}
/// @nodoc
class __$ScheduleV2ResponseCopyWithImpl<$Res>
    implements _$ScheduleV2ResponseCopyWith<$Res> {
  __$ScheduleV2ResponseCopyWithImpl(this._self, this._then);

  final _ScheduleV2Response _self;
  final $Res Function(_ScheduleV2Response) _then;

/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? scheduleName = null,Object? status = null,Object? description = null,Object? createdAt = null,Object? updatedAt = null,Object? dueDate = null,Object? inspectionDate = freezed,Object? isRBISchedule = null,Object? isRecurring = null,Object? inspectionInterval = freezed,Object? damageMechanism = freezed,Object? inspectionEffectiveness = freezed,Object? aiSummary = freezed,Object? comments = freezed,Object? isDeleted = null,Object? scheduleTypeId = null,Object? operationId = null,Object? equipmentId = null,Object? createdById = null,Object? approvedById = freezed,Object? reviewedById = freezed,Object? attachments = null,Object? checklistQuestionTemplates = null,Object? inspectionMethods = null,Object? potentialEmergentWorks = null,Object? components = null,Object? approvedBy = freezed,Object? createdBy = freezed,Object? reviewedBy = freezed,Object? equipment = freezed,Object? operation = freezed,Object? scheduleType = freezed,Object? record = freezed,}) {
  return _then(_ScheduleV2Response(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scheduleName: null == scheduleName ? _self.scheduleName : scheduleName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,inspectionDate: freezed == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isRBISchedule: null == isRBISchedule ? _self.isRBISchedule : isRBISchedule // ignore: cast_nullable_to_non_nullable
as bool,isRecurring: null == isRecurring ? _self.isRecurring : isRecurring // ignore: cast_nullable_to_non_nullable
as bool,inspectionInterval: freezed == inspectionInterval ? _self.inspectionInterval : inspectionInterval // ignore: cast_nullable_to_non_nullable
as int?,damageMechanism: freezed == damageMechanism ? _self.damageMechanism : damageMechanism // ignore: cast_nullable_to_non_nullable
as String?,inspectionEffectiveness: freezed == inspectionEffectiveness ? _self.inspectionEffectiveness : inspectionEffectiveness // ignore: cast_nullable_to_non_nullable
as String?,aiSummary: freezed == aiSummary ? _self.aiSummary : aiSummary // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,scheduleTypeId: null == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String,operationId: null == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,createdById: null == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String,approvedById: freezed == approvedById ? _self.approvedById : approvedById // ignore: cast_nullable_to_non_nullable
as String?,reviewedById: freezed == reviewedById ? _self.reviewedById : reviewedById // ignore: cast_nullable_to_non_nullable
as String?,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>,checklistQuestionTemplates: null == checklistQuestionTemplates ? _self._checklistQuestionTemplates : checklistQuestionTemplates // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionTemplate>,inspectionMethods: null == inspectionMethods ? _self._inspectionMethods : inspectionMethods // ignore: cast_nullable_to_non_nullable
as List<InspectionMethodV2>,potentialEmergentWorks: null == potentialEmergentWorks ? _self._potentialEmergentWorks : potentialEmergentWorks // ignore: cast_nullable_to_non_nullable
as List<PotentialEmergentWorkV2>,components: null == components ? _self._components : components // ignore: cast_nullable_to_non_nullable
as List<ScheduleComponent>,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as User?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as User?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as User?,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as Equipment?,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as ReferenceData?,scheduleType: freezed == scheduleType ? _self.scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,record: freezed == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as RecordV2Response?,
  ));
}

/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get approvedBy {
    if (_self.approvedBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.approvedBy!, (value) {
    return _then(_self.copyWith(approvedBy: value));
  });
}/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get reviewedBy {
    if (_self.reviewedBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.reviewedBy!, (value) {
    return _then(_self.copyWith(reviewedBy: value));
  });
}/// Create a copy of ScheduleV2Response
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
}/// Create a copy of ScheduleV2Response
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
}/// Create a copy of ScheduleV2Response
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
}/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecordV2ResponseCopyWith<$Res>? get record {
    if (_self.record == null) {
    return null;
  }

  return $RecordV2ResponseCopyWith<$Res>(_self.record!, (value) {
    return _then(_self.copyWith(record: value));
  });
}
}


/// @nodoc
mixin _$User {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get role; String get title; String get name; String get email; String get password; bool get isDeleted;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.role, role) || other.role == role)&&(identical(other.title, title) || other.title == title)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,role,title,name,email,password,isDeleted);

@override
String toString() {
  return 'User(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, role: $role, title: $title, name: $name, email: $email, password: $password, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String role, String title, String name, String email, String password, bool isDeleted
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? role = null,Object? title = null,Object? name = null,Object? email = null,Object? password = null,Object? isDeleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String role,  String title,  String name,  String email,  String password,  bool isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.role,_that.title,_that.name,_that.email,_that.password,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String role,  String title,  String name,  String email,  String password,  bool isDeleted)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.role,_that.title,_that.name,_that.email,_that.password,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String role,  String title,  String name,  String email,  String password,  bool isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.role,_that.title,_that.name,_that.email,_that.password,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({required this.id, required this.createdAt, required this.updatedAt, required this.role, required this.title, required this.name, required this.email, required this.password, required this.isDeleted});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String role;
@override final  String title;
@override final  String name;
@override final  String email;
@override final  String password;
@override final  bool isDeleted;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.role, role) || other.role == role)&&(identical(other.title, title) || other.title == title)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,role,title,name,email,password,isDeleted);

@override
String toString() {
  return 'User(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, role: $role, title: $title, name: $name, email: $email, password: $password, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String role, String title, String name, String email, String password, bool isDeleted
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? role = null,Object? title = null,Object? name = null,Object? email = null,Object? password = null,Object? isDeleted = null,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Equipment {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get equipmentId; String get name; String get cmmsSystem; bool get isCorrosionLoopAvailable; String? get corrosionLoopId; bool get isDeleted;
/// Create a copy of Equipment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EquipmentCopyWith<Equipment> get copyWith => _$EquipmentCopyWithImpl<Equipment>(this as Equipment, _$identity);

  /// Serializes this Equipment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Equipment&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.cmmsSystem, cmmsSystem) || other.cmmsSystem == cmmsSystem)&&(identical(other.isCorrosionLoopAvailable, isCorrosionLoopAvailable) || other.isCorrosionLoopAvailable == isCorrosionLoopAvailable)&&(identical(other.corrosionLoopId, corrosionLoopId) || other.corrosionLoopId == corrosionLoopId)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,equipmentId,name,cmmsSystem,isCorrosionLoopAvailable,corrosionLoopId,isDeleted);

@override
String toString() {
  return 'Equipment(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, equipmentId: $equipmentId, name: $name, cmmsSystem: $cmmsSystem, isCorrosionLoopAvailable: $isCorrosionLoopAvailable, corrosionLoopId: $corrosionLoopId, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $EquipmentCopyWith<$Res>  {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) _then) = _$EquipmentCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String equipmentId, String name, String cmmsSystem, bool isCorrosionLoopAvailable, String? corrosionLoopId, bool isDeleted
});




}
/// @nodoc
class _$EquipmentCopyWithImpl<$Res>
    implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._self, this._then);

  final Equipment _self;
  final $Res Function(Equipment) _then;

/// Create a copy of Equipment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? equipmentId = null,Object? name = null,Object? cmmsSystem = null,Object? isCorrosionLoopAvailable = null,Object? corrosionLoopId = freezed,Object? isDeleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cmmsSystem: null == cmmsSystem ? _self.cmmsSystem : cmmsSystem // ignore: cast_nullable_to_non_nullable
as String,isCorrosionLoopAvailable: null == isCorrosionLoopAvailable ? _self.isCorrosionLoopAvailable : isCorrosionLoopAvailable // ignore: cast_nullable_to_non_nullable
as bool,corrosionLoopId: freezed == corrosionLoopId ? _self.corrosionLoopId : corrosionLoopId // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String equipmentId,  String name,  String cmmsSystem,  bool isCorrosionLoopAvailable,  String? corrosionLoopId,  bool isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Equipment() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentId,_that.name,_that.cmmsSystem,_that.isCorrosionLoopAvailable,_that.corrosionLoopId,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String equipmentId,  String name,  String cmmsSystem,  bool isCorrosionLoopAvailable,  String? corrosionLoopId,  bool isDeleted)  $default,) {final _that = this;
switch (_that) {
case _Equipment():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentId,_that.name,_that.cmmsSystem,_that.isCorrosionLoopAvailable,_that.corrosionLoopId,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String equipmentId,  String name,  String cmmsSystem,  bool isCorrosionLoopAvailable,  String? corrosionLoopId,  bool isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _Equipment() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentId,_that.name,_that.cmmsSystem,_that.isCorrosionLoopAvailable,_that.corrosionLoopId,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Equipment implements Equipment {
  const _Equipment({required this.id, required this.createdAt, required this.updatedAt, required this.equipmentId, required this.name, required this.cmmsSystem, required this.isCorrosionLoopAvailable, this.corrosionLoopId, required this.isDeleted});
  factory _Equipment.fromJson(Map<String, dynamic> json) => _$EquipmentFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String equipmentId;
@override final  String name;
@override final  String cmmsSystem;
@override final  bool isCorrosionLoopAvailable;
@override final  String? corrosionLoopId;
@override final  bool isDeleted;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Equipment&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.cmmsSystem, cmmsSystem) || other.cmmsSystem == cmmsSystem)&&(identical(other.isCorrosionLoopAvailable, isCorrosionLoopAvailable) || other.isCorrosionLoopAvailable == isCorrosionLoopAvailable)&&(identical(other.corrosionLoopId, corrosionLoopId) || other.corrosionLoopId == corrosionLoopId)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,equipmentId,name,cmmsSystem,isCorrosionLoopAvailable,corrosionLoopId,isDeleted);

@override
String toString() {
  return 'Equipment(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, equipmentId: $equipmentId, name: $name, cmmsSystem: $cmmsSystem, isCorrosionLoopAvailable: $isCorrosionLoopAvailable, corrosionLoopId: $corrosionLoopId, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$EquipmentCopyWith<$Res> implements $EquipmentCopyWith<$Res> {
  factory _$EquipmentCopyWith(_Equipment value, $Res Function(_Equipment) _then) = __$EquipmentCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String equipmentId, String name, String cmmsSystem, bool isCorrosionLoopAvailable, String? corrosionLoopId, bool isDeleted
});




}
/// @nodoc
class __$EquipmentCopyWithImpl<$Res>
    implements _$EquipmentCopyWith<$Res> {
  __$EquipmentCopyWithImpl(this._self, this._then);

  final _Equipment _self;
  final $Res Function(_Equipment) _then;

/// Create a copy of Equipment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? equipmentId = null,Object? name = null,Object? cmmsSystem = null,Object? isCorrosionLoopAvailable = null,Object? corrosionLoopId = freezed,Object? isDeleted = null,}) {
  return _then(_Equipment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cmmsSystem: null == cmmsSystem ? _self.cmmsSystem : cmmsSystem // ignore: cast_nullable_to_non_nullable
as String,isCorrosionLoopAvailable: null == isCorrosionLoopAvailable ? _self.isCorrosionLoopAvailable : isCorrosionLoopAvailable // ignore: cast_nullable_to_non_nullable
as bool,corrosionLoopId: freezed == corrosionLoopId ? _self.corrosionLoopId : corrosionLoopId // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ReferenceData {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get category; String get value; String? get displayValue;
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
 String id, DateTime createdAt, DateTime updatedAt, String category, String value, String? displayValue
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? category = null,Object? value = null,Object? displayValue = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String category,  String value,  String? displayValue)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String category,  String value,  String? displayValue)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String category,  String value,  String? displayValue)?  $default,) {final _that = this;
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
  const _ReferenceData({required this.id, required this.createdAt, required this.updatedAt, required this.category, required this.value, this.displayValue});
  factory _ReferenceData.fromJson(Map<String, dynamic> json) => _$ReferenceDataFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String category;
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
 String id, DateTime createdAt, DateTime updatedAt, String category, String value, String? displayValue
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? category = null,Object? value = null,Object? displayValue = freezed,}) {
  return _then(_ReferenceData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,displayValue: freezed == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChecklistQuestionTemplate {

 String get id; String? get inspectionType; String get question; String? get helpText; ResponseType get responseType; bool get isDeleted; String get scheduleId; ChecklistAnswer? get checklistAnswer;
/// Create a copy of ChecklistQuestionTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistQuestionTemplateCopyWith<ChecklistQuestionTemplate> get copyWith => _$ChecklistQuestionTemplateCopyWithImpl<ChecklistQuestionTemplate>(this as ChecklistQuestionTemplate, _$identity);

  /// Serializes this ChecklistQuestionTemplate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistQuestionTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.inspectionType, inspectionType) || other.inspectionType == inspectionType)&&(identical(other.question, question) || other.question == question)&&(identical(other.helpText, helpText) || other.helpText == helpText)&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.checklistAnswer, checklistAnswer) || other.checklistAnswer == checklistAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,inspectionType,question,helpText,responseType,isDeleted,scheduleId,checklistAnswer);

@override
String toString() {
  return 'ChecklistQuestionTemplate(id: $id, inspectionType: $inspectionType, question: $question, helpText: $helpText, responseType: $responseType, isDeleted: $isDeleted, scheduleId: $scheduleId, checklistAnswer: $checklistAnswer)';
}


}

/// @nodoc
abstract mixin class $ChecklistQuestionTemplateCopyWith<$Res>  {
  factory $ChecklistQuestionTemplateCopyWith(ChecklistQuestionTemplate value, $Res Function(ChecklistQuestionTemplate) _then) = _$ChecklistQuestionTemplateCopyWithImpl;
@useResult
$Res call({
 String id, String? inspectionType, String question, String? helpText, ResponseType responseType, bool isDeleted, String scheduleId, ChecklistAnswer? checklistAnswer
});


$ChecklistAnswerCopyWith<$Res>? get checklistAnswer;

}
/// @nodoc
class _$ChecklistQuestionTemplateCopyWithImpl<$Res>
    implements $ChecklistQuestionTemplateCopyWith<$Res> {
  _$ChecklistQuestionTemplateCopyWithImpl(this._self, this._then);

  final ChecklistQuestionTemplate _self;
  final $Res Function(ChecklistQuestionTemplate) _then;

/// Create a copy of ChecklistQuestionTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? inspectionType = freezed,Object? question = null,Object? helpText = freezed,Object? responseType = null,Object? isDeleted = null,Object? scheduleId = null,Object? checklistAnswer = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,inspectionType: freezed == inspectionType ? _self.inspectionType : inspectionType // ignore: cast_nullable_to_non_nullable
as String?,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,helpText: freezed == helpText ? _self.helpText : helpText // ignore: cast_nullable_to_non_nullable
as String?,responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as ResponseType,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,checklistAnswer: freezed == checklistAnswer ? _self.checklistAnswer : checklistAnswer // ignore: cast_nullable_to_non_nullable
as ChecklistAnswer?,
  ));
}
/// Create a copy of ChecklistQuestionTemplate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChecklistAnswerCopyWith<$Res>? get checklistAnswer {
    if (_self.checklistAnswer == null) {
    return null;
  }

  return $ChecklistAnswerCopyWith<$Res>(_self.checklistAnswer!, (value) {
    return _then(_self.copyWith(checklistAnswer: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChecklistQuestionTemplate].
extension ChecklistQuestionTemplatePatterns on ChecklistQuestionTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistQuestionTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistQuestionTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistQuestionTemplate value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistQuestionTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistQuestionTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistQuestionTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? inspectionType,  String question,  String? helpText,  ResponseType responseType,  bool isDeleted,  String scheduleId,  ChecklistAnswer? checklistAnswer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistQuestionTemplate() when $default != null:
return $default(_that.id,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.isDeleted,_that.scheduleId,_that.checklistAnswer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? inspectionType,  String question,  String? helpText,  ResponseType responseType,  bool isDeleted,  String scheduleId,  ChecklistAnswer? checklistAnswer)  $default,) {final _that = this;
switch (_that) {
case _ChecklistQuestionTemplate():
return $default(_that.id,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.isDeleted,_that.scheduleId,_that.checklistAnswer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? inspectionType,  String question,  String? helpText,  ResponseType responseType,  bool isDeleted,  String scheduleId,  ChecklistAnswer? checklistAnswer)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistQuestionTemplate() when $default != null:
return $default(_that.id,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.isDeleted,_that.scheduleId,_that.checklistAnswer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistQuestionTemplate implements ChecklistQuestionTemplate {
  const _ChecklistQuestionTemplate({required this.id, this.inspectionType, required this.question, this.helpText, required this.responseType, required this.isDeleted, required this.scheduleId, this.checklistAnswer});
  factory _ChecklistQuestionTemplate.fromJson(Map<String, dynamic> json) => _$ChecklistQuestionTemplateFromJson(json);

@override final  String id;
@override final  String? inspectionType;
@override final  String question;
@override final  String? helpText;
@override final  ResponseType responseType;
@override final  bool isDeleted;
@override final  String scheduleId;
@override final  ChecklistAnswer? checklistAnswer;

/// Create a copy of ChecklistQuestionTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistQuestionTemplateCopyWith<_ChecklistQuestionTemplate> get copyWith => __$ChecklistQuestionTemplateCopyWithImpl<_ChecklistQuestionTemplate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistQuestionTemplateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistQuestionTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.inspectionType, inspectionType) || other.inspectionType == inspectionType)&&(identical(other.question, question) || other.question == question)&&(identical(other.helpText, helpText) || other.helpText == helpText)&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.checklistAnswer, checklistAnswer) || other.checklistAnswer == checklistAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,inspectionType,question,helpText,responseType,isDeleted,scheduleId,checklistAnswer);

@override
String toString() {
  return 'ChecklistQuestionTemplate(id: $id, inspectionType: $inspectionType, question: $question, helpText: $helpText, responseType: $responseType, isDeleted: $isDeleted, scheduleId: $scheduleId, checklistAnswer: $checklistAnswer)';
}


}

/// @nodoc
abstract mixin class _$ChecklistQuestionTemplateCopyWith<$Res> implements $ChecklistQuestionTemplateCopyWith<$Res> {
  factory _$ChecklistQuestionTemplateCopyWith(_ChecklistQuestionTemplate value, $Res Function(_ChecklistQuestionTemplate) _then) = __$ChecklistQuestionTemplateCopyWithImpl;
@override @useResult
$Res call({
 String id, String? inspectionType, String question, String? helpText, ResponseType responseType, bool isDeleted, String scheduleId, ChecklistAnswer? checklistAnswer
});


@override $ChecklistAnswerCopyWith<$Res>? get checklistAnswer;

}
/// @nodoc
class __$ChecklistQuestionTemplateCopyWithImpl<$Res>
    implements _$ChecklistQuestionTemplateCopyWith<$Res> {
  __$ChecklistQuestionTemplateCopyWithImpl(this._self, this._then);

  final _ChecklistQuestionTemplate _self;
  final $Res Function(_ChecklistQuestionTemplate) _then;

/// Create a copy of ChecklistQuestionTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? inspectionType = freezed,Object? question = null,Object? helpText = freezed,Object? responseType = null,Object? isDeleted = null,Object? scheduleId = null,Object? checklistAnswer = freezed,}) {
  return _then(_ChecklistQuestionTemplate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,inspectionType: freezed == inspectionType ? _self.inspectionType : inspectionType // ignore: cast_nullable_to_non_nullable
as String?,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,helpText: freezed == helpText ? _self.helpText : helpText // ignore: cast_nullable_to_non_nullable
as String?,responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as ResponseType,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,checklistAnswer: freezed == checklistAnswer ? _self.checklistAnswer : checklistAnswer // ignore: cast_nullable_to_non_nullable
as ChecklistAnswer?,
  ));
}

/// Create a copy of ChecklistQuestionTemplate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChecklistAnswerCopyWith<$Res>? get checklistAnswer {
    if (_self.checklistAnswer == null) {
    return null;
  }

  return $ChecklistAnswerCopyWith<$Res>(_self.checklistAnswer!, (value) {
    return _then(_self.copyWith(checklistAnswer: value));
  });
}
}


/// @nodoc
mixin _$ChecklistAnswer {

 String get id; String? get value; String? get note; DateTime? get completedAt; String get recordId; String get questionId; List<AttachmentV2>? get attachments;
/// Create a copy of ChecklistAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistAnswerCopyWith<ChecklistAnswer> get copyWith => _$ChecklistAnswerCopyWithImpl<ChecklistAnswer>(this as ChecklistAnswer, _$identity);

  /// Serializes this ChecklistAnswer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&const DeepCollectionEquality().equals(other.attachments, attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,note,completedAt,recordId,questionId,const DeepCollectionEquality().hash(attachments));

@override
String toString() {
  return 'ChecklistAnswer(id: $id, value: $value, note: $note, completedAt: $completedAt, recordId: $recordId, questionId: $questionId, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class $ChecklistAnswerCopyWith<$Res>  {
  factory $ChecklistAnswerCopyWith(ChecklistAnswer value, $Res Function(ChecklistAnswer) _then) = _$ChecklistAnswerCopyWithImpl;
@useResult
$Res call({
 String id, String? value, String? note, DateTime? completedAt, String recordId, String questionId, List<AttachmentV2>? attachments
});




}
/// @nodoc
class _$ChecklistAnswerCopyWithImpl<$Res>
    implements $ChecklistAnswerCopyWith<$Res> {
  _$ChecklistAnswerCopyWithImpl(this._self, this._then);

  final ChecklistAnswer _self;
  final $Res Function(ChecklistAnswer) _then;

/// Create a copy of ChecklistAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? value = freezed,Object? note = freezed,Object? completedAt = freezed,Object? recordId = null,Object? questionId = null,Object? attachments = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistAnswer].
extension ChecklistAnswerPatterns on ChecklistAnswer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistAnswer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistAnswer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistAnswer value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistAnswer value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistAnswer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? value,  String? note,  DateTime? completedAt,  String recordId,  String questionId,  List<AttachmentV2>? attachments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistAnswer() when $default != null:
return $default(_that.id,_that.value,_that.note,_that.completedAt,_that.recordId,_that.questionId,_that.attachments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? value,  String? note,  DateTime? completedAt,  String recordId,  String questionId,  List<AttachmentV2>? attachments)  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswer():
return $default(_that.id,_that.value,_that.note,_that.completedAt,_that.recordId,_that.questionId,_that.attachments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? value,  String? note,  DateTime? completedAt,  String recordId,  String questionId,  List<AttachmentV2>? attachments)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistAnswer() when $default != null:
return $default(_that.id,_that.value,_that.note,_that.completedAt,_that.recordId,_that.questionId,_that.attachments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistAnswer implements ChecklistAnswer {
  const _ChecklistAnswer({required this.id, this.value, this.note, this.completedAt, required this.recordId, required this.questionId, final  List<AttachmentV2>? attachments}): _attachments = attachments;
  factory _ChecklistAnswer.fromJson(Map<String, dynamic> json) => _$ChecklistAnswerFromJson(json);

@override final  String id;
@override final  String? value;
@override final  String? note;
@override final  DateTime? completedAt;
@override final  String recordId;
@override final  String questionId;
 final  List<AttachmentV2>? _attachments;
@override List<AttachmentV2>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ChecklistAnswer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistAnswerCopyWith<_ChecklistAnswer> get copyWith => __$ChecklistAnswerCopyWithImpl<_ChecklistAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistAnswerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&const DeepCollectionEquality().equals(other._attachments, _attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,note,completedAt,recordId,questionId,const DeepCollectionEquality().hash(_attachments));

@override
String toString() {
  return 'ChecklistAnswer(id: $id, value: $value, note: $note, completedAt: $completedAt, recordId: $recordId, questionId: $questionId, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class _$ChecklistAnswerCopyWith<$Res> implements $ChecklistAnswerCopyWith<$Res> {
  factory _$ChecklistAnswerCopyWith(_ChecklistAnswer value, $Res Function(_ChecklistAnswer) _then) = __$ChecklistAnswerCopyWithImpl;
@override @useResult
$Res call({
 String id, String? value, String? note, DateTime? completedAt, String recordId, String questionId, List<AttachmentV2>? attachments
});




}
/// @nodoc
class __$ChecklistAnswerCopyWithImpl<$Res>
    implements _$ChecklistAnswerCopyWith<$Res> {
  __$ChecklistAnswerCopyWithImpl(this._self, this._then);

  final _ChecklistAnswer _self;
  final $Res Function(_ChecklistAnswer) _then;

/// Create a copy of ChecklistAnswer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? value = freezed,Object? note = freezed,Object? completedAt = freezed,Object? recordId = null,Object? questionId = null,Object? attachments = freezed,}) {
  return _then(_ChecklistAnswer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>?,
  ));
}


}


/// @nodoc
mixin _$AttachmentV2 {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get documentID; String get name; String get url; String? get description; String? get comments; bool? get isDeleted; String? get equipmentId; String? get scheduleId; String? get scopeImageScheduleId; String? get checklistAnswerId; String? get recordId;
/// Create a copy of AttachmentV2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttachmentV2CopyWith<AttachmentV2> get copyWith => _$AttachmentV2CopyWithImpl<AttachmentV2>(this as AttachmentV2, _$identity);

  /// Serializes this AttachmentV2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttachmentV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.documentID, documentID) || other.documentID == documentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.scopeImageScheduleId, scopeImageScheduleId) || other.scopeImageScheduleId == scopeImageScheduleId)&&(identical(other.checklistAnswerId, checklistAnswerId) || other.checklistAnswerId == checklistAnswerId)&&(identical(other.recordId, recordId) || other.recordId == recordId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,documentID,name,url,description,comments,isDeleted,equipmentId,scheduleId,scopeImageScheduleId,checklistAnswerId,recordId);

@override
String toString() {
  return 'AttachmentV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, documentID: $documentID, name: $name, url: $url, description: $description, comments: $comments, isDeleted: $isDeleted, equipmentId: $equipmentId, scheduleId: $scheduleId, scopeImageScheduleId: $scopeImageScheduleId, checklistAnswerId: $checklistAnswerId, recordId: $recordId)';
}


}

/// @nodoc
abstract mixin class $AttachmentV2CopyWith<$Res>  {
  factory $AttachmentV2CopyWith(AttachmentV2 value, $Res Function(AttachmentV2) _then) = _$AttachmentV2CopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String documentID, String name, String url, String? description, String? comments, bool? isDeleted, String? equipmentId, String? scheduleId, String? scopeImageScheduleId, String? checklistAnswerId, String? recordId
});




}
/// @nodoc
class _$AttachmentV2CopyWithImpl<$Res>
    implements $AttachmentV2CopyWith<$Res> {
  _$AttachmentV2CopyWithImpl(this._self, this._then);

  final AttachmentV2 _self;
  final $Res Function(AttachmentV2) _then;

/// Create a copy of AttachmentV2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? documentID = null,Object? name = null,Object? url = null,Object? description = freezed,Object? comments = freezed,Object? isDeleted = freezed,Object? equipmentId = freezed,Object? scheduleId = freezed,Object? scopeImageScheduleId = freezed,Object? checklistAnswerId = freezed,Object? recordId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,documentID: null == documentID ? _self.documentID : documentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,scopeImageScheduleId: freezed == scopeImageScheduleId ? _self.scopeImageScheduleId : scopeImageScheduleId // ignore: cast_nullable_to_non_nullable
as String?,checklistAnswerId: freezed == checklistAnswerId ? _self.checklistAnswerId : checklistAnswerId // ignore: cast_nullable_to_non_nullable
as String?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttachmentV2].
extension AttachmentV2Patterns on AttachmentV2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttachmentV2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttachmentV2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttachmentV2 value)  $default,){
final _that = this;
switch (_that) {
case _AttachmentV2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttachmentV2 value)?  $default,){
final _that = this;
switch (_that) {
case _AttachmentV2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String documentID,  String name,  String url,  String? description,  String? comments,  bool? isDeleted,  String? equipmentId,  String? scheduleId,  String? scopeImageScheduleId,  String? checklistAnswerId,  String? recordId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttachmentV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.isDeleted,_that.equipmentId,_that.scheduleId,_that.scopeImageScheduleId,_that.checklistAnswerId,_that.recordId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String documentID,  String name,  String url,  String? description,  String? comments,  bool? isDeleted,  String? equipmentId,  String? scheduleId,  String? scopeImageScheduleId,  String? checklistAnswerId,  String? recordId)  $default,) {final _that = this;
switch (_that) {
case _AttachmentV2():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.isDeleted,_that.equipmentId,_that.scheduleId,_that.scopeImageScheduleId,_that.checklistAnswerId,_that.recordId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String documentID,  String name,  String url,  String? description,  String? comments,  bool? isDeleted,  String? equipmentId,  String? scheduleId,  String? scopeImageScheduleId,  String? checklistAnswerId,  String? recordId)?  $default,) {final _that = this;
switch (_that) {
case _AttachmentV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.isDeleted,_that.equipmentId,_that.scheduleId,_that.scopeImageScheduleId,_that.checklistAnswerId,_that.recordId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttachmentV2 implements AttachmentV2 {
  const _AttachmentV2({required this.id, required this.createdAt, required this.updatedAt, required this.documentID, required this.name, required this.url, this.description, this.comments, this.isDeleted, this.equipmentId, this.scheduleId, this.scopeImageScheduleId, this.checklistAnswerId, this.recordId});
  factory _AttachmentV2.fromJson(Map<String, dynamic> json) => _$AttachmentV2FromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String documentID;
@override final  String name;
@override final  String url;
@override final  String? description;
@override final  String? comments;
@override final  bool? isDeleted;
@override final  String? equipmentId;
@override final  String? scheduleId;
@override final  String? scopeImageScheduleId;
@override final  String? checklistAnswerId;
@override final  String? recordId;

/// Create a copy of AttachmentV2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttachmentV2CopyWith<_AttachmentV2> get copyWith => __$AttachmentV2CopyWithImpl<_AttachmentV2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttachmentV2ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttachmentV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.documentID, documentID) || other.documentID == documentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.scopeImageScheduleId, scopeImageScheduleId) || other.scopeImageScheduleId == scopeImageScheduleId)&&(identical(other.checklistAnswerId, checklistAnswerId) || other.checklistAnswerId == checklistAnswerId)&&(identical(other.recordId, recordId) || other.recordId == recordId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,documentID,name,url,description,comments,isDeleted,equipmentId,scheduleId,scopeImageScheduleId,checklistAnswerId,recordId);

@override
String toString() {
  return 'AttachmentV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, documentID: $documentID, name: $name, url: $url, description: $description, comments: $comments, isDeleted: $isDeleted, equipmentId: $equipmentId, scheduleId: $scheduleId, scopeImageScheduleId: $scopeImageScheduleId, checklistAnswerId: $checklistAnswerId, recordId: $recordId)';
}


}

/// @nodoc
abstract mixin class _$AttachmentV2CopyWith<$Res> implements $AttachmentV2CopyWith<$Res> {
  factory _$AttachmentV2CopyWith(_AttachmentV2 value, $Res Function(_AttachmentV2) _then) = __$AttachmentV2CopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String documentID, String name, String url, String? description, String? comments, bool? isDeleted, String? equipmentId, String? scheduleId, String? scopeImageScheduleId, String? checklistAnswerId, String? recordId
});




}
/// @nodoc
class __$AttachmentV2CopyWithImpl<$Res>
    implements _$AttachmentV2CopyWith<$Res> {
  __$AttachmentV2CopyWithImpl(this._self, this._then);

  final _AttachmentV2 _self;
  final $Res Function(_AttachmentV2) _then;

/// Create a copy of AttachmentV2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? documentID = null,Object? name = null,Object? url = null,Object? description = freezed,Object? comments = freezed,Object? isDeleted = freezed,Object? equipmentId = freezed,Object? scheduleId = freezed,Object? scopeImageScheduleId = freezed,Object? checklistAnswerId = freezed,Object? recordId = freezed,}) {
  return _then(_AttachmentV2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,documentID: null == documentID ? _self.documentID : documentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,scopeImageScheduleId: freezed == scopeImageScheduleId ? _self.scopeImageScheduleId : scopeImageScheduleId // ignore: cast_nullable_to_non_nullable
as String?,checklistAnswerId: freezed == checklistAnswerId ? _self.checklistAnswerId : checklistAnswerId // ignore: cast_nullable_to_non_nullable
as String?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RecordV2Response {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get description; DateTime get recordCreatedDate; RecordStatus get status; DateTime get inspectionDate; String get actionCreated; String? get comments; bool? get isDeleted; String get scheduleId; String? get referenceDataId; String get equipmentId; String get scheduleTypeId; String? get submittedById; String? get approvedById;
/// Create a copy of RecordV2Response
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordV2ResponseCopyWith<RecordV2Response> get copyWith => _$RecordV2ResponseCopyWithImpl<RecordV2Response>(this as RecordV2Response, _$identity);

  /// Serializes this RecordV2Response to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordV2Response&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.referenceDataId, referenceDataId) || other.referenceDataId == referenceDataId)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.submittedById, submittedById) || other.submittedById == submittedById)&&(identical(other.approvedById, approvedById) || other.approvedById == approvedById));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,description,recordCreatedDate,status,inspectionDate,actionCreated,comments,isDeleted,scheduleId,referenceDataId,equipmentId,scheduleTypeId,submittedById,approvedById);

@override
String toString() {
  return 'RecordV2Response(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, recordCreatedDate: $recordCreatedDate, status: $status, inspectionDate: $inspectionDate, actionCreated: $actionCreated, comments: $comments, isDeleted: $isDeleted, scheduleId: $scheduleId, referenceDataId: $referenceDataId, equipmentId: $equipmentId, scheduleTypeId: $scheduleTypeId, submittedById: $submittedById, approvedById: $approvedById)';
}


}

/// @nodoc
abstract mixin class $RecordV2ResponseCopyWith<$Res>  {
  factory $RecordV2ResponseCopyWith(RecordV2Response value, $Res Function(RecordV2Response) _then) = _$RecordV2ResponseCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String description, DateTime recordCreatedDate, RecordStatus status, DateTime inspectionDate, String actionCreated, String? comments, bool? isDeleted, String scheduleId, String? referenceDataId, String equipmentId, String scheduleTypeId, String? submittedById, String? approvedById
});




}
/// @nodoc
class _$RecordV2ResponseCopyWithImpl<$Res>
    implements $RecordV2ResponseCopyWith<$Res> {
  _$RecordV2ResponseCopyWithImpl(this._self, this._then);

  final RecordV2Response _self;
  final $Res Function(RecordV2Response) _then;

/// Create a copy of RecordV2Response
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? description = null,Object? recordCreatedDate = null,Object? status = null,Object? inspectionDate = null,Object? actionCreated = null,Object? comments = freezed,Object? isDeleted = freezed,Object? scheduleId = null,Object? referenceDataId = freezed,Object? equipmentId = null,Object? scheduleTypeId = null,Object? submittedById = freezed,Object? approvedById = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,recordCreatedDate: null == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RecordStatus,inspectionDate: null == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime,actionCreated: null == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,referenceDataId: freezed == referenceDataId ? _self.referenceDataId : referenceDataId // ignore: cast_nullable_to_non_nullable
as String?,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,scheduleTypeId: null == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String,submittedById: freezed == submittedById ? _self.submittedById : submittedById // ignore: cast_nullable_to_non_nullable
as String?,approvedById: freezed == approvedById ? _self.approvedById : approvedById // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordV2Response].
extension RecordV2ResponsePatterns on RecordV2Response {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordV2Response value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordV2Response() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordV2Response value)  $default,){
final _that = this;
switch (_that) {
case _RecordV2Response():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordV2Response value)?  $default,){
final _that = this;
switch (_that) {
case _RecordV2Response() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String description,  DateTime recordCreatedDate,  RecordStatus status,  DateTime inspectionDate,  String actionCreated,  String? comments,  bool? isDeleted,  String scheduleId,  String? referenceDataId,  String equipmentId,  String scheduleTypeId,  String? submittedById,  String? approvedById)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordV2Response() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.description,_that.recordCreatedDate,_that.status,_that.inspectionDate,_that.actionCreated,_that.comments,_that.isDeleted,_that.scheduleId,_that.referenceDataId,_that.equipmentId,_that.scheduleTypeId,_that.submittedById,_that.approvedById);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String description,  DateTime recordCreatedDate,  RecordStatus status,  DateTime inspectionDate,  String actionCreated,  String? comments,  bool? isDeleted,  String scheduleId,  String? referenceDataId,  String equipmentId,  String scheduleTypeId,  String? submittedById,  String? approvedById)  $default,) {final _that = this;
switch (_that) {
case _RecordV2Response():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.description,_that.recordCreatedDate,_that.status,_that.inspectionDate,_that.actionCreated,_that.comments,_that.isDeleted,_that.scheduleId,_that.referenceDataId,_that.equipmentId,_that.scheduleTypeId,_that.submittedById,_that.approvedById);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String description,  DateTime recordCreatedDate,  RecordStatus status,  DateTime inspectionDate,  String actionCreated,  String? comments,  bool? isDeleted,  String scheduleId,  String? referenceDataId,  String equipmentId,  String scheduleTypeId,  String? submittedById,  String? approvedById)?  $default,) {final _that = this;
switch (_that) {
case _RecordV2Response() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.description,_that.recordCreatedDate,_that.status,_that.inspectionDate,_that.actionCreated,_that.comments,_that.isDeleted,_that.scheduleId,_that.referenceDataId,_that.equipmentId,_that.scheduleTypeId,_that.submittedById,_that.approvedById);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordV2Response implements RecordV2Response {
  const _RecordV2Response({required this.id, required this.createdAt, required this.updatedAt, required this.description, required this.recordCreatedDate, required this.status, required this.inspectionDate, required this.actionCreated, this.comments, this.isDeleted, required this.scheduleId, this.referenceDataId, required this.equipmentId, required this.scheduleTypeId, this.submittedById, this.approvedById});
  factory _RecordV2Response.fromJson(Map<String, dynamic> json) => _$RecordV2ResponseFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String description;
@override final  DateTime recordCreatedDate;
@override final  RecordStatus status;
@override final  DateTime inspectionDate;
@override final  String actionCreated;
@override final  String? comments;
@override final  bool? isDeleted;
@override final  String scheduleId;
@override final  String? referenceDataId;
@override final  String equipmentId;
@override final  String scheduleTypeId;
@override final  String? submittedById;
@override final  String? approvedById;

/// Create a copy of RecordV2Response
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordV2ResponseCopyWith<_RecordV2Response> get copyWith => __$RecordV2ResponseCopyWithImpl<_RecordV2Response>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordV2ResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordV2Response&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.recordCreatedDate, recordCreatedDate) || other.recordCreatedDate == recordCreatedDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.actionCreated, actionCreated) || other.actionCreated == actionCreated)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.referenceDataId, referenceDataId) || other.referenceDataId == referenceDataId)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.submittedById, submittedById) || other.submittedById == submittedById)&&(identical(other.approvedById, approvedById) || other.approvedById == approvedById));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,description,recordCreatedDate,status,inspectionDate,actionCreated,comments,isDeleted,scheduleId,referenceDataId,equipmentId,scheduleTypeId,submittedById,approvedById);

@override
String toString() {
  return 'RecordV2Response(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, recordCreatedDate: $recordCreatedDate, status: $status, inspectionDate: $inspectionDate, actionCreated: $actionCreated, comments: $comments, isDeleted: $isDeleted, scheduleId: $scheduleId, referenceDataId: $referenceDataId, equipmentId: $equipmentId, scheduleTypeId: $scheduleTypeId, submittedById: $submittedById, approvedById: $approvedById)';
}


}

/// @nodoc
abstract mixin class _$RecordV2ResponseCopyWith<$Res> implements $RecordV2ResponseCopyWith<$Res> {
  factory _$RecordV2ResponseCopyWith(_RecordV2Response value, $Res Function(_RecordV2Response) _then) = __$RecordV2ResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String description, DateTime recordCreatedDate, RecordStatus status, DateTime inspectionDate, String actionCreated, String? comments, bool? isDeleted, String scheduleId, String? referenceDataId, String equipmentId, String scheduleTypeId, String? submittedById, String? approvedById
});




}
/// @nodoc
class __$RecordV2ResponseCopyWithImpl<$Res>
    implements _$RecordV2ResponseCopyWith<$Res> {
  __$RecordV2ResponseCopyWithImpl(this._self, this._then);

  final _RecordV2Response _self;
  final $Res Function(_RecordV2Response) _then;

/// Create a copy of RecordV2Response
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? description = null,Object? recordCreatedDate = null,Object? status = null,Object? inspectionDate = null,Object? actionCreated = null,Object? comments = freezed,Object? isDeleted = freezed,Object? scheduleId = null,Object? referenceDataId = freezed,Object? equipmentId = null,Object? scheduleTypeId = null,Object? submittedById = freezed,Object? approvedById = freezed,}) {
  return _then(_RecordV2Response(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,recordCreatedDate: null == recordCreatedDate ? _self.recordCreatedDate : recordCreatedDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RecordStatus,inspectionDate: null == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime,actionCreated: null == actionCreated ? _self.actionCreated : actionCreated // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,referenceDataId: freezed == referenceDataId ? _self.referenceDataId : referenceDataId // ignore: cast_nullable_to_non_nullable
as String?,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,scheduleTypeId: null == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String,submittedById: freezed == submittedById ? _self.submittedById : submittedById // ignore: cast_nullable_to_non_nullable
as String?,approvedById: freezed == approvedById ? _self.approvedById : approvedById // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InspectionMethodV2 {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get scheduleV2Id; String? get methodId; ReferenceData? get method; String? get specialAccessId; ReferenceData? get specialAccess; String? get insulationRemovalId; ReferenceData? get insulationRemoval; String? get cleaningId; ReferenceData? get cleaning; String? get location; String? get notes; bool? get isDeleted;
/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InspectionMethodV2CopyWith<InspectionMethodV2> get copyWith => _$InspectionMethodV2CopyWithImpl<InspectionMethodV2>(this as InspectionMethodV2, _$identity);

  /// Serializes this InspectionMethodV2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InspectionMethodV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.methodId, methodId) || other.methodId == methodId)&&(identical(other.method, method) || other.method == method)&&(identical(other.specialAccessId, specialAccessId) || other.specialAccessId == specialAccessId)&&(identical(other.specialAccess, specialAccess) || other.specialAccess == specialAccess)&&(identical(other.insulationRemovalId, insulationRemovalId) || other.insulationRemovalId == insulationRemovalId)&&(identical(other.insulationRemoval, insulationRemoval) || other.insulationRemoval == insulationRemoval)&&(identical(other.cleaningId, cleaningId) || other.cleaningId == cleaningId)&&(identical(other.cleaning, cleaning) || other.cleaning == cleaning)&&(identical(other.location, location) || other.location == location)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleV2Id,methodId,method,specialAccessId,specialAccess,insulationRemovalId,insulationRemoval,cleaningId,cleaning,location,notes,isDeleted);

@override
String toString() {
  return 'InspectionMethodV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleV2Id: $scheduleV2Id, methodId: $methodId, method: $method, specialAccessId: $specialAccessId, specialAccess: $specialAccess, insulationRemovalId: $insulationRemovalId, insulationRemoval: $insulationRemoval, cleaningId: $cleaningId, cleaning: $cleaning, location: $location, notes: $notes, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $InspectionMethodV2CopyWith<$Res>  {
  factory $InspectionMethodV2CopyWith(InspectionMethodV2 value, $Res Function(InspectionMethodV2) _then) = _$InspectionMethodV2CopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? scheduleV2Id, String? methodId, ReferenceData? method, String? specialAccessId, ReferenceData? specialAccess, String? insulationRemovalId, ReferenceData? insulationRemoval, String? cleaningId, ReferenceData? cleaning, String? location, String? notes, bool? isDeleted
});


$ReferenceDataCopyWith<$Res>? get method;$ReferenceDataCopyWith<$Res>? get specialAccess;$ReferenceDataCopyWith<$Res>? get insulationRemoval;$ReferenceDataCopyWith<$Res>? get cleaning;

}
/// @nodoc
class _$InspectionMethodV2CopyWithImpl<$Res>
    implements $InspectionMethodV2CopyWith<$Res> {
  _$InspectionMethodV2CopyWithImpl(this._self, this._then);

  final InspectionMethodV2 _self;
  final $Res Function(InspectionMethodV2) _then;

/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? scheduleV2Id = freezed,Object? methodId = freezed,Object? method = freezed,Object? specialAccessId = freezed,Object? specialAccess = freezed,Object? insulationRemovalId = freezed,Object? insulationRemoval = freezed,Object? cleaningId = freezed,Object? cleaning = freezed,Object? location = freezed,Object? notes = freezed,Object? isDeleted = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,methodId: freezed == methodId ? _self.methodId : methodId // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as ReferenceData?,specialAccessId: freezed == specialAccessId ? _self.specialAccessId : specialAccessId // ignore: cast_nullable_to_non_nullable
as String?,specialAccess: freezed == specialAccess ? _self.specialAccess : specialAccess // ignore: cast_nullable_to_non_nullable
as ReferenceData?,insulationRemovalId: freezed == insulationRemovalId ? _self.insulationRemovalId : insulationRemovalId // ignore: cast_nullable_to_non_nullable
as String?,insulationRemoval: freezed == insulationRemoval ? _self.insulationRemoval : insulationRemoval // ignore: cast_nullable_to_non_nullable
as ReferenceData?,cleaningId: freezed == cleaningId ? _self.cleaningId : cleaningId // ignore: cast_nullable_to_non_nullable
as String?,cleaning: freezed == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as ReferenceData?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get method {
    if (_self.method == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.method!, (value) {
    return _then(_self.copyWith(method: value));
  });
}/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get specialAccess {
    if (_self.specialAccess == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.specialAccess!, (value) {
    return _then(_self.copyWith(specialAccess: value));
  });
}/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get insulationRemoval {
    if (_self.insulationRemoval == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.insulationRemoval!, (value) {
    return _then(_self.copyWith(insulationRemoval: value));
  });
}/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get cleaning {
    if (_self.cleaning == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.cleaning!, (value) {
    return _then(_self.copyWith(cleaning: value));
  });
}
}


/// Adds pattern-matching-related methods to [InspectionMethodV2].
extension InspectionMethodV2Patterns on InspectionMethodV2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InspectionMethodV2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InspectionMethodV2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InspectionMethodV2 value)  $default,){
final _that = this;
switch (_that) {
case _InspectionMethodV2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InspectionMethodV2 value)?  $default,){
final _that = this;
switch (_that) {
case _InspectionMethodV2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? methodId,  ReferenceData? method,  String? specialAccessId,  ReferenceData? specialAccess,  String? insulationRemovalId,  ReferenceData? insulationRemoval,  String? cleaningId,  ReferenceData? cleaning,  String? location,  String? notes,  bool? isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InspectionMethodV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.methodId,_that.method,_that.specialAccessId,_that.specialAccess,_that.insulationRemovalId,_that.insulationRemoval,_that.cleaningId,_that.cleaning,_that.location,_that.notes,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? methodId,  ReferenceData? method,  String? specialAccessId,  ReferenceData? specialAccess,  String? insulationRemovalId,  ReferenceData? insulationRemoval,  String? cleaningId,  ReferenceData? cleaning,  String? location,  String? notes,  bool? isDeleted)  $default,) {final _that = this;
switch (_that) {
case _InspectionMethodV2():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.methodId,_that.method,_that.specialAccessId,_that.specialAccess,_that.insulationRemovalId,_that.insulationRemoval,_that.cleaningId,_that.cleaning,_that.location,_that.notes,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? methodId,  ReferenceData? method,  String? specialAccessId,  ReferenceData? specialAccess,  String? insulationRemovalId,  ReferenceData? insulationRemoval,  String? cleaningId,  ReferenceData? cleaning,  String? location,  String? notes,  bool? isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _InspectionMethodV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.methodId,_that.method,_that.specialAccessId,_that.specialAccess,_that.insulationRemovalId,_that.insulationRemoval,_that.cleaningId,_that.cleaning,_that.location,_that.notes,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InspectionMethodV2 implements InspectionMethodV2 {
  const _InspectionMethodV2({this.id, this.createdAt, this.updatedAt, this.scheduleV2Id, this.methodId, this.method, this.specialAccessId, this.specialAccess, this.insulationRemovalId, this.insulationRemoval, this.cleaningId, this.cleaning, this.location, this.notes, this.isDeleted});
  factory _InspectionMethodV2.fromJson(Map<String, dynamic> json) => _$InspectionMethodV2FromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? scheduleV2Id;
@override final  String? methodId;
@override final  ReferenceData? method;
@override final  String? specialAccessId;
@override final  ReferenceData? specialAccess;
@override final  String? insulationRemovalId;
@override final  ReferenceData? insulationRemoval;
@override final  String? cleaningId;
@override final  ReferenceData? cleaning;
@override final  String? location;
@override final  String? notes;
@override final  bool? isDeleted;

/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InspectionMethodV2CopyWith<_InspectionMethodV2> get copyWith => __$InspectionMethodV2CopyWithImpl<_InspectionMethodV2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InspectionMethodV2ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectionMethodV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.methodId, methodId) || other.methodId == methodId)&&(identical(other.method, method) || other.method == method)&&(identical(other.specialAccessId, specialAccessId) || other.specialAccessId == specialAccessId)&&(identical(other.specialAccess, specialAccess) || other.specialAccess == specialAccess)&&(identical(other.insulationRemovalId, insulationRemovalId) || other.insulationRemovalId == insulationRemovalId)&&(identical(other.insulationRemoval, insulationRemoval) || other.insulationRemoval == insulationRemoval)&&(identical(other.cleaningId, cleaningId) || other.cleaningId == cleaningId)&&(identical(other.cleaning, cleaning) || other.cleaning == cleaning)&&(identical(other.location, location) || other.location == location)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleV2Id,methodId,method,specialAccessId,specialAccess,insulationRemovalId,insulationRemoval,cleaningId,cleaning,location,notes,isDeleted);

@override
String toString() {
  return 'InspectionMethodV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleV2Id: $scheduleV2Id, methodId: $methodId, method: $method, specialAccessId: $specialAccessId, specialAccess: $specialAccess, insulationRemovalId: $insulationRemovalId, insulationRemoval: $insulationRemoval, cleaningId: $cleaningId, cleaning: $cleaning, location: $location, notes: $notes, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$InspectionMethodV2CopyWith<$Res> implements $InspectionMethodV2CopyWith<$Res> {
  factory _$InspectionMethodV2CopyWith(_InspectionMethodV2 value, $Res Function(_InspectionMethodV2) _then) = __$InspectionMethodV2CopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? scheduleV2Id, String? methodId, ReferenceData? method, String? specialAccessId, ReferenceData? specialAccess, String? insulationRemovalId, ReferenceData? insulationRemoval, String? cleaningId, ReferenceData? cleaning, String? location, String? notes, bool? isDeleted
});


@override $ReferenceDataCopyWith<$Res>? get method;@override $ReferenceDataCopyWith<$Res>? get specialAccess;@override $ReferenceDataCopyWith<$Res>? get insulationRemoval;@override $ReferenceDataCopyWith<$Res>? get cleaning;

}
/// @nodoc
class __$InspectionMethodV2CopyWithImpl<$Res>
    implements _$InspectionMethodV2CopyWith<$Res> {
  __$InspectionMethodV2CopyWithImpl(this._self, this._then);

  final _InspectionMethodV2 _self;
  final $Res Function(_InspectionMethodV2) _then;

/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? scheduleV2Id = freezed,Object? methodId = freezed,Object? method = freezed,Object? specialAccessId = freezed,Object? specialAccess = freezed,Object? insulationRemovalId = freezed,Object? insulationRemoval = freezed,Object? cleaningId = freezed,Object? cleaning = freezed,Object? location = freezed,Object? notes = freezed,Object? isDeleted = freezed,}) {
  return _then(_InspectionMethodV2(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,methodId: freezed == methodId ? _self.methodId : methodId // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as ReferenceData?,specialAccessId: freezed == specialAccessId ? _self.specialAccessId : specialAccessId // ignore: cast_nullable_to_non_nullable
as String?,specialAccess: freezed == specialAccess ? _self.specialAccess : specialAccess // ignore: cast_nullable_to_non_nullable
as ReferenceData?,insulationRemovalId: freezed == insulationRemovalId ? _self.insulationRemovalId : insulationRemovalId // ignore: cast_nullable_to_non_nullable
as String?,insulationRemoval: freezed == insulationRemoval ? _self.insulationRemoval : insulationRemoval // ignore: cast_nullable_to_non_nullable
as ReferenceData?,cleaningId: freezed == cleaningId ? _self.cleaningId : cleaningId // ignore: cast_nullable_to_non_nullable
as String?,cleaning: freezed == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as ReferenceData?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get method {
    if (_self.method == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.method!, (value) {
    return _then(_self.copyWith(method: value));
  });
}/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get specialAccess {
    if (_self.specialAccess == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.specialAccess!, (value) {
    return _then(_self.copyWith(specialAccess: value));
  });
}/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get insulationRemoval {
    if (_self.insulationRemoval == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.insulationRemoval!, (value) {
    return _then(_self.copyWith(insulationRemoval: value));
  });
}/// Create a copy of InspectionMethodV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get cleaning {
    if (_self.cleaning == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.cleaning!, (value) {
    return _then(_self.copyWith(cleaning: value));
  });
}
}


/// @nodoc
mixin _$PotentialEmergentWorkV2 {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get scheduleV2Id; String? get potentialEmergentWorkId; ReferenceData? get potentialEmergentWork; String? get likelihoodId; ReferenceData? get likelihood; String? get notes; bool? get isDeleted;
/// Create a copy of PotentialEmergentWorkV2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PotentialEmergentWorkV2CopyWith<PotentialEmergentWorkV2> get copyWith => _$PotentialEmergentWorkV2CopyWithImpl<PotentialEmergentWorkV2>(this as PotentialEmergentWorkV2, _$identity);

  /// Serializes this PotentialEmergentWorkV2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PotentialEmergentWorkV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.potentialEmergentWorkId, potentialEmergentWorkId) || other.potentialEmergentWorkId == potentialEmergentWorkId)&&(identical(other.potentialEmergentWork, potentialEmergentWork) || other.potentialEmergentWork == potentialEmergentWork)&&(identical(other.likelihoodId, likelihoodId) || other.likelihoodId == likelihoodId)&&(identical(other.likelihood, likelihood) || other.likelihood == likelihood)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleV2Id,potentialEmergentWorkId,potentialEmergentWork,likelihoodId,likelihood,notes,isDeleted);

@override
String toString() {
  return 'PotentialEmergentWorkV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleV2Id: $scheduleV2Id, potentialEmergentWorkId: $potentialEmergentWorkId, potentialEmergentWork: $potentialEmergentWork, likelihoodId: $likelihoodId, likelihood: $likelihood, notes: $notes, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $PotentialEmergentWorkV2CopyWith<$Res>  {
  factory $PotentialEmergentWorkV2CopyWith(PotentialEmergentWorkV2 value, $Res Function(PotentialEmergentWorkV2) _then) = _$PotentialEmergentWorkV2CopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? scheduleV2Id, String? potentialEmergentWorkId, ReferenceData? potentialEmergentWork, String? likelihoodId, ReferenceData? likelihood, String? notes, bool? isDeleted
});


$ReferenceDataCopyWith<$Res>? get potentialEmergentWork;$ReferenceDataCopyWith<$Res>? get likelihood;

}
/// @nodoc
class _$PotentialEmergentWorkV2CopyWithImpl<$Res>
    implements $PotentialEmergentWorkV2CopyWith<$Res> {
  _$PotentialEmergentWorkV2CopyWithImpl(this._self, this._then);

  final PotentialEmergentWorkV2 _self;
  final $Res Function(PotentialEmergentWorkV2) _then;

/// Create a copy of PotentialEmergentWorkV2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? scheduleV2Id = freezed,Object? potentialEmergentWorkId = freezed,Object? potentialEmergentWork = freezed,Object? likelihoodId = freezed,Object? likelihood = freezed,Object? notes = freezed,Object? isDeleted = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,potentialEmergentWorkId: freezed == potentialEmergentWorkId ? _self.potentialEmergentWorkId : potentialEmergentWorkId // ignore: cast_nullable_to_non_nullable
as String?,potentialEmergentWork: freezed == potentialEmergentWork ? _self.potentialEmergentWork : potentialEmergentWork // ignore: cast_nullable_to_non_nullable
as ReferenceData?,likelihoodId: freezed == likelihoodId ? _self.likelihoodId : likelihoodId // ignore: cast_nullable_to_non_nullable
as String?,likelihood: freezed == likelihood ? _self.likelihood : likelihood // ignore: cast_nullable_to_non_nullable
as ReferenceData?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of PotentialEmergentWorkV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get potentialEmergentWork {
    if (_self.potentialEmergentWork == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.potentialEmergentWork!, (value) {
    return _then(_self.copyWith(potentialEmergentWork: value));
  });
}/// Create a copy of PotentialEmergentWorkV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get likelihood {
    if (_self.likelihood == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.likelihood!, (value) {
    return _then(_self.copyWith(likelihood: value));
  });
}
}


/// Adds pattern-matching-related methods to [PotentialEmergentWorkV2].
extension PotentialEmergentWorkV2Patterns on PotentialEmergentWorkV2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PotentialEmergentWorkV2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PotentialEmergentWorkV2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PotentialEmergentWorkV2 value)  $default,){
final _that = this;
switch (_that) {
case _PotentialEmergentWorkV2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PotentialEmergentWorkV2 value)?  $default,){
final _that = this;
switch (_that) {
case _PotentialEmergentWorkV2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? potentialEmergentWorkId,  ReferenceData? potentialEmergentWork,  String? likelihoodId,  ReferenceData? likelihood,  String? notes,  bool? isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PotentialEmergentWorkV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.potentialEmergentWorkId,_that.potentialEmergentWork,_that.likelihoodId,_that.likelihood,_that.notes,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? potentialEmergentWorkId,  ReferenceData? potentialEmergentWork,  String? likelihoodId,  ReferenceData? likelihood,  String? notes,  bool? isDeleted)  $default,) {final _that = this;
switch (_that) {
case _PotentialEmergentWorkV2():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.potentialEmergentWorkId,_that.potentialEmergentWork,_that.likelihoodId,_that.likelihood,_that.notes,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? potentialEmergentWorkId,  ReferenceData? potentialEmergentWork,  String? likelihoodId,  ReferenceData? likelihood,  String? notes,  bool? isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _PotentialEmergentWorkV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.potentialEmergentWorkId,_that.potentialEmergentWork,_that.likelihoodId,_that.likelihood,_that.notes,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PotentialEmergentWorkV2 implements PotentialEmergentWorkV2 {
  const _PotentialEmergentWorkV2({this.id, this.createdAt, this.updatedAt, this.scheduleV2Id, this.potentialEmergentWorkId, this.potentialEmergentWork, this.likelihoodId, this.likelihood, this.notes, this.isDeleted});
  factory _PotentialEmergentWorkV2.fromJson(Map<String, dynamic> json) => _$PotentialEmergentWorkV2FromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? scheduleV2Id;
@override final  String? potentialEmergentWorkId;
@override final  ReferenceData? potentialEmergentWork;
@override final  String? likelihoodId;
@override final  ReferenceData? likelihood;
@override final  String? notes;
@override final  bool? isDeleted;

/// Create a copy of PotentialEmergentWorkV2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PotentialEmergentWorkV2CopyWith<_PotentialEmergentWorkV2> get copyWith => __$PotentialEmergentWorkV2CopyWithImpl<_PotentialEmergentWorkV2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PotentialEmergentWorkV2ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PotentialEmergentWorkV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.potentialEmergentWorkId, potentialEmergentWorkId) || other.potentialEmergentWorkId == potentialEmergentWorkId)&&(identical(other.potentialEmergentWork, potentialEmergentWork) || other.potentialEmergentWork == potentialEmergentWork)&&(identical(other.likelihoodId, likelihoodId) || other.likelihoodId == likelihoodId)&&(identical(other.likelihood, likelihood) || other.likelihood == likelihood)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleV2Id,potentialEmergentWorkId,potentialEmergentWork,likelihoodId,likelihood,notes,isDeleted);

@override
String toString() {
  return 'PotentialEmergentWorkV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleV2Id: $scheduleV2Id, potentialEmergentWorkId: $potentialEmergentWorkId, potentialEmergentWork: $potentialEmergentWork, likelihoodId: $likelihoodId, likelihood: $likelihood, notes: $notes, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$PotentialEmergentWorkV2CopyWith<$Res> implements $PotentialEmergentWorkV2CopyWith<$Res> {
  factory _$PotentialEmergentWorkV2CopyWith(_PotentialEmergentWorkV2 value, $Res Function(_PotentialEmergentWorkV2) _then) = __$PotentialEmergentWorkV2CopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? scheduleV2Id, String? potentialEmergentWorkId, ReferenceData? potentialEmergentWork, String? likelihoodId, ReferenceData? likelihood, String? notes, bool? isDeleted
});


@override $ReferenceDataCopyWith<$Res>? get potentialEmergentWork;@override $ReferenceDataCopyWith<$Res>? get likelihood;

}
/// @nodoc
class __$PotentialEmergentWorkV2CopyWithImpl<$Res>
    implements _$PotentialEmergentWorkV2CopyWith<$Res> {
  __$PotentialEmergentWorkV2CopyWithImpl(this._self, this._then);

  final _PotentialEmergentWorkV2 _self;
  final $Res Function(_PotentialEmergentWorkV2) _then;

/// Create a copy of PotentialEmergentWorkV2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? scheduleV2Id = freezed,Object? potentialEmergentWorkId = freezed,Object? potentialEmergentWork = freezed,Object? likelihoodId = freezed,Object? likelihood = freezed,Object? notes = freezed,Object? isDeleted = freezed,}) {
  return _then(_PotentialEmergentWorkV2(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,potentialEmergentWorkId: freezed == potentialEmergentWorkId ? _self.potentialEmergentWorkId : potentialEmergentWorkId // ignore: cast_nullable_to_non_nullable
as String?,potentialEmergentWork: freezed == potentialEmergentWork ? _self.potentialEmergentWork : potentialEmergentWork // ignore: cast_nullable_to_non_nullable
as ReferenceData?,likelihoodId: freezed == likelihoodId ? _self.likelihoodId : likelihoodId // ignore: cast_nullable_to_non_nullable
as String?,likelihood: freezed == likelihood ? _self.likelihood : likelihood // ignore: cast_nullable_to_non_nullable
as ReferenceData?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of PotentialEmergentWorkV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get potentialEmergentWork {
    if (_self.potentialEmergentWork == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.potentialEmergentWork!, (value) {
    return _then(_self.copyWith(potentialEmergentWork: value));
  });
}/// Create a copy of PotentialEmergentWorkV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferenceDataCopyWith<$Res>? get likelihood {
    if (_self.likelihood == null) {
    return null;
  }

  return $ReferenceDataCopyWith<$Res>(_self.likelihood!, (value) {
    return _then(_self.copyWith(likelihood: value));
  });
}
}


/// @nodoc
mixin _$ScheduleComponent {

 String get id; String get scheduleId; String get componentId; MinimalComponent get component;
/// Create a copy of ScheduleComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleComponentCopyWith<ScheduleComponent> get copyWith => _$ScheduleComponentCopyWithImpl<ScheduleComponent>(this as ScheduleComponent, _$identity);

  /// Serializes this ScheduleComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleComponent&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.componentId, componentId) || other.componentId == componentId)&&(identical(other.component, component) || other.component == component));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleId,componentId,component);

@override
String toString() {
  return 'ScheduleComponent(id: $id, scheduleId: $scheduleId, componentId: $componentId, component: $component)';
}


}

/// @nodoc
abstract mixin class $ScheduleComponentCopyWith<$Res>  {
  factory $ScheduleComponentCopyWith(ScheduleComponent value, $Res Function(ScheduleComponent) _then) = _$ScheduleComponentCopyWithImpl;
@useResult
$Res call({
 String id, String scheduleId, String componentId, MinimalComponent component
});


$MinimalComponentCopyWith<$Res> get component;

}
/// @nodoc
class _$ScheduleComponentCopyWithImpl<$Res>
    implements $ScheduleComponentCopyWith<$Res> {
  _$ScheduleComponentCopyWithImpl(this._self, this._then);

  final ScheduleComponent _self;
  final $Res Function(ScheduleComponent) _then;

/// Create a copy of ScheduleComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? scheduleId = null,Object? componentId = null,Object? component = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,componentId: null == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String,component: null == component ? _self.component : component // ignore: cast_nullable_to_non_nullable
as MinimalComponent,
  ));
}
/// Create a copy of ScheduleComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MinimalComponentCopyWith<$Res> get component {
  
  return $MinimalComponentCopyWith<$Res>(_self.component, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String scheduleId,  String componentId,  MinimalComponent component)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleComponent() when $default != null:
return $default(_that.id,_that.scheduleId,_that.componentId,_that.component);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String scheduleId,  String componentId,  MinimalComponent component)  $default,) {final _that = this;
switch (_that) {
case _ScheduleComponent():
return $default(_that.id,_that.scheduleId,_that.componentId,_that.component);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String scheduleId,  String componentId,  MinimalComponent component)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleComponent() when $default != null:
return $default(_that.id,_that.scheduleId,_that.componentId,_that.component);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleComponent implements ScheduleComponent {
  const _ScheduleComponent({required this.id, required this.scheduleId, required this.componentId, required this.component});
  factory _ScheduleComponent.fromJson(Map<String, dynamic> json) => _$ScheduleComponentFromJson(json);

@override final  String id;
@override final  String scheduleId;
@override final  String componentId;
@override final  MinimalComponent component;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleComponent&&(identical(other.id, id) || other.id == id)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.componentId, componentId) || other.componentId == componentId)&&(identical(other.component, component) || other.component == component));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,scheduleId,componentId,component);

@override
String toString() {
  return 'ScheduleComponent(id: $id, scheduleId: $scheduleId, componentId: $componentId, component: $component)';
}


}

/// @nodoc
abstract mixin class _$ScheduleComponentCopyWith<$Res> implements $ScheduleComponentCopyWith<$Res> {
  factory _$ScheduleComponentCopyWith(_ScheduleComponent value, $Res Function(_ScheduleComponent) _then) = __$ScheduleComponentCopyWithImpl;
@override @useResult
$Res call({
 String id, String scheduleId, String componentId, MinimalComponent component
});


@override $MinimalComponentCopyWith<$Res> get component;

}
/// @nodoc
class __$ScheduleComponentCopyWithImpl<$Res>
    implements _$ScheduleComponentCopyWith<$Res> {
  __$ScheduleComponentCopyWithImpl(this._self, this._then);

  final _ScheduleComponent _self;
  final $Res Function(_ScheduleComponent) _then;

/// Create a copy of ScheduleComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? scheduleId = null,Object? componentId = null,Object? component = null,}) {
  return _then(_ScheduleComponent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,componentId: null == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String,component: null == component ? _self.component : component // ignore: cast_nullable_to_non_nullable
as MinimalComponent,
  ));
}

/// Create a copy of ScheduleComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MinimalComponentCopyWith<$Res> get component {
  
  return $MinimalComponentCopyWith<$Res>(_self.component, (value) {
    return _then(_self.copyWith(component: value));
  });
}
}


/// @nodoc
mixin _$MinimalComponent {

 String get id; String get componentID; String get name;
/// Create a copy of MinimalComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MinimalComponentCopyWith<MinimalComponent> get copyWith => _$MinimalComponentCopyWithImpl<MinimalComponent>(this as MinimalComponent, _$identity);

  /// Serializes this MinimalComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MinimalComponent&&(identical(other.id, id) || other.id == id)&&(identical(other.componentID, componentID) || other.componentID == componentID)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,componentID,name);

@override
String toString() {
  return 'MinimalComponent(id: $id, componentID: $componentID, name: $name)';
}


}

/// @nodoc
abstract mixin class $MinimalComponentCopyWith<$Res>  {
  factory $MinimalComponentCopyWith(MinimalComponent value, $Res Function(MinimalComponent) _then) = _$MinimalComponentCopyWithImpl;
@useResult
$Res call({
 String id, String componentID, String name
});




}
/// @nodoc
class _$MinimalComponentCopyWithImpl<$Res>
    implements $MinimalComponentCopyWith<$Res> {
  _$MinimalComponentCopyWithImpl(this._self, this._then);

  final MinimalComponent _self;
  final $Res Function(MinimalComponent) _then;

/// Create a copy of MinimalComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? componentID = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,componentID: null == componentID ? _self.componentID : componentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MinimalComponent].
extension MinimalComponentPatterns on MinimalComponent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MinimalComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MinimalComponent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MinimalComponent value)  $default,){
final _that = this;
switch (_that) {
case _MinimalComponent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MinimalComponent value)?  $default,){
final _that = this;
switch (_that) {
case _MinimalComponent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String componentID,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MinimalComponent() when $default != null:
return $default(_that.id,_that.componentID,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String componentID,  String name)  $default,) {final _that = this;
switch (_that) {
case _MinimalComponent():
return $default(_that.id,_that.componentID,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String componentID,  String name)?  $default,) {final _that = this;
switch (_that) {
case _MinimalComponent() when $default != null:
return $default(_that.id,_that.componentID,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MinimalComponent implements MinimalComponent {
  const _MinimalComponent({required this.id, required this.componentID, required this.name});
  factory _MinimalComponent.fromJson(Map<String, dynamic> json) => _$MinimalComponentFromJson(json);

@override final  String id;
@override final  String componentID;
@override final  String name;

/// Create a copy of MinimalComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MinimalComponentCopyWith<_MinimalComponent> get copyWith => __$MinimalComponentCopyWithImpl<_MinimalComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MinimalComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MinimalComponent&&(identical(other.id, id) || other.id == id)&&(identical(other.componentID, componentID) || other.componentID == componentID)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,componentID,name);

@override
String toString() {
  return 'MinimalComponent(id: $id, componentID: $componentID, name: $name)';
}


}

/// @nodoc
abstract mixin class _$MinimalComponentCopyWith<$Res> implements $MinimalComponentCopyWith<$Res> {
  factory _$MinimalComponentCopyWith(_MinimalComponent value, $Res Function(_MinimalComponent) _then) = __$MinimalComponentCopyWithImpl;
@override @useResult
$Res call({
 String id, String componentID, String name
});




}
/// @nodoc
class __$MinimalComponentCopyWithImpl<$Res>
    implements _$MinimalComponentCopyWith<$Res> {
  __$MinimalComponentCopyWithImpl(this._self, this._then);

  final _MinimalComponent _self;
  final $Res Function(_MinimalComponent) _then;

/// Create a copy of MinimalComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? componentID = null,Object? name = null,}) {
  return _then(_MinimalComponent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,componentID: null == componentID ? _self.componentID : componentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

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
mixin _$ScheduleV2Response {

 bool get success; ScheduleV2Data get data;
/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleV2ResponseCopyWith<ScheduleV2Response> get copyWith => _$ScheduleV2ResponseCopyWithImpl<ScheduleV2Response>(this as ScheduleV2Response, _$identity);

  /// Serializes this ScheduleV2Response to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleV2Response&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ScheduleV2Response(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ScheduleV2ResponseCopyWith<$Res>  {
  factory $ScheduleV2ResponseCopyWith(ScheduleV2Response value, $Res Function(ScheduleV2Response) _then) = _$ScheduleV2ResponseCopyWithImpl;
@useResult
$Res call({
 bool success, ScheduleV2Data data
});


$ScheduleV2DataCopyWith<$Res> get data;

}
/// @nodoc
class _$ScheduleV2ResponseCopyWithImpl<$Res>
    implements $ScheduleV2ResponseCopyWith<$Res> {
  _$ScheduleV2ResponseCopyWithImpl(this._self, this._then);

  final ScheduleV2Response _self;
  final $Res Function(ScheduleV2Response) _then;

/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ScheduleV2Data,
  ));
}
/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleV2DataCopyWith<$Res> get data {
  
  return $ScheduleV2DataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ScheduleV2Data data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleV2Response() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ScheduleV2Data data)  $default,) {final _that = this;
switch (_that) {
case _ScheduleV2Response():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ScheduleV2Data data)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleV2Response() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleV2Response implements ScheduleV2Response {
  const _ScheduleV2Response({required this.success, required this.data});
  factory _ScheduleV2Response.fromJson(Map<String, dynamic> json) => _$ScheduleV2ResponseFromJson(json);

@override final  bool success;
@override final  ScheduleV2Data data;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleV2Response&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ScheduleV2Response(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ScheduleV2ResponseCopyWith<$Res> implements $ScheduleV2ResponseCopyWith<$Res> {
  factory _$ScheduleV2ResponseCopyWith(_ScheduleV2Response value, $Res Function(_ScheduleV2Response) _then) = __$ScheduleV2ResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, ScheduleV2Data data
});


@override $ScheduleV2DataCopyWith<$Res> get data;

}
/// @nodoc
class __$ScheduleV2ResponseCopyWithImpl<$Res>
    implements _$ScheduleV2ResponseCopyWith<$Res> {
  __$ScheduleV2ResponseCopyWithImpl(this._self, this._then);

  final _ScheduleV2Response _self;
  final $Res Function(_ScheduleV2Response) _then;

/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ScheduleV2Response(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ScheduleV2Data,
  ));
}

/// Create a copy of ScheduleV2Response
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleV2DataCopyWith<$Res> get data {
  
  return $ScheduleV2DataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ScheduleV2Data {

 List<ScheduleV2> get data; Pagination get pagination;
/// Create a copy of ScheduleV2Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleV2DataCopyWith<ScheduleV2Data> get copyWith => _$ScheduleV2DataCopyWithImpl<ScheduleV2Data>(this as ScheduleV2Data, _$identity);

  /// Serializes this ScheduleV2Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleV2Data&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'ScheduleV2Data(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ScheduleV2DataCopyWith<$Res>  {
  factory $ScheduleV2DataCopyWith(ScheduleV2Data value, $Res Function(ScheduleV2Data) _then) = _$ScheduleV2DataCopyWithImpl;
@useResult
$Res call({
 List<ScheduleV2> data, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$ScheduleV2DataCopyWithImpl<$Res>
    implements $ScheduleV2DataCopyWith<$Res> {
  _$ScheduleV2DataCopyWithImpl(this._self, this._then);

  final ScheduleV2Data _self;
  final $Res Function(ScheduleV2Data) _then;

/// Create a copy of ScheduleV2Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}
/// Create a copy of ScheduleV2Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleV2Data].
extension ScheduleV2DataPatterns on ScheduleV2Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleV2Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleV2Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleV2Data value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleV2Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleV2Data value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleV2Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ScheduleV2> data,  Pagination pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleV2Data() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ScheduleV2> data,  Pagination pagination)  $default,) {final _that = this;
switch (_that) {
case _ScheduleV2Data():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ScheduleV2> data,  Pagination pagination)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleV2Data() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleV2Data implements ScheduleV2Data {
  const _ScheduleV2Data({required final  List<ScheduleV2> data, required this.pagination}): _data = data;
  factory _ScheduleV2Data.fromJson(Map<String, dynamic> json) => _$ScheduleV2DataFromJson(json);

 final  List<ScheduleV2> _data;
@override List<ScheduleV2> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  Pagination pagination;

/// Create a copy of ScheduleV2Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleV2DataCopyWith<_ScheduleV2Data> get copyWith => __$ScheduleV2DataCopyWithImpl<_ScheduleV2Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleV2DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleV2Data&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'ScheduleV2Data(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$ScheduleV2DataCopyWith<$Res> implements $ScheduleV2DataCopyWith<$Res> {
  factory _$ScheduleV2DataCopyWith(_ScheduleV2Data value, $Res Function(_ScheduleV2Data) _then) = __$ScheduleV2DataCopyWithImpl;
@override @useResult
$Res call({
 List<ScheduleV2> data, Pagination pagination
});


@override $PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$ScheduleV2DataCopyWithImpl<$Res>
    implements _$ScheduleV2DataCopyWith<$Res> {
  __$ScheduleV2DataCopyWithImpl(this._self, this._then);

  final _ScheduleV2Data _self;
  final $Res Function(_ScheduleV2Data) _then;

/// Create a copy of ScheduleV2Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_ScheduleV2Data(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}

/// Create a copy of ScheduleV2Data
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
mixin _$ScheduleV2 {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get scheduleID; String get status; String get scheduleTypeId; ReferenceData? get scheduleType; String get operationId; ReferenceData? get operation; String get createdById; User? get createdBy; String? get submittedById; User? get submittedBy; String? get reviewedById; User? get reviewedBy; String? get approvedById; User? get approvedBy; String get equipmentId; Equipment? get equipment; List<ScheduleComponentV2> get components; String get description; DateTime get dueDate; List<ChecklistQuestionV2> get checklistQuestions; List<InspectionMethodV2> get inspectionMethods; List<PotentialEmergentWorkV2> get potentialEmergentWorks; List<AttachmentV2> get scopeImages; DateTime? get inspectionDate; String? get comments; List<AttachmentV2> get attachments; bool? get isDeleted;
/// Create a copy of ScheduleV2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleV2CopyWith<ScheduleV2> get copyWith => _$ScheduleV2CopyWithImpl<ScheduleV2>(this as ScheduleV2, _$identity);

  /// Serializes this ScheduleV2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleID, scheduleID) || other.scheduleID == scheduleID)&&(identical(other.status, status) || other.status == status)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.scheduleType, scheduleType) || other.scheduleType == scheduleType)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.submittedById, submittedById) || other.submittedById == submittedById)&&(identical(other.submittedBy, submittedBy) || other.submittedBy == submittedBy)&&(identical(other.reviewedById, reviewedById) || other.reviewedById == reviewedById)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.approvedById, approvedById) || other.approvedById == approvedById)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.equipment, equipment) || other.equipment == equipment)&&const DeepCollectionEquality().equals(other.components, components)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&const DeepCollectionEquality().equals(other.checklistQuestions, checklistQuestions)&&const DeepCollectionEquality().equals(other.inspectionMethods, inspectionMethods)&&const DeepCollectionEquality().equals(other.potentialEmergentWorks, potentialEmergentWorks)&&const DeepCollectionEquality().equals(other.scopeImages, scopeImages)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.comments, comments) || other.comments == comments)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,scheduleID,status,scheduleTypeId,scheduleType,operationId,operation,createdById,createdBy,submittedById,submittedBy,reviewedById,reviewedBy,approvedById,approvedBy,equipmentId,equipment,const DeepCollectionEquality().hash(components),description,dueDate,const DeepCollectionEquality().hash(checklistQuestions),const DeepCollectionEquality().hash(inspectionMethods),const DeepCollectionEquality().hash(potentialEmergentWorks),const DeepCollectionEquality().hash(scopeImages),inspectionDate,comments,const DeepCollectionEquality().hash(attachments),isDeleted]);

@override
String toString() {
  return 'ScheduleV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleID: $scheduleID, status: $status, scheduleTypeId: $scheduleTypeId, scheduleType: $scheduleType, operationId: $operationId, operation: $operation, createdById: $createdById, createdBy: $createdBy, submittedById: $submittedById, submittedBy: $submittedBy, reviewedById: $reviewedById, reviewedBy: $reviewedBy, approvedById: $approvedById, approvedBy: $approvedBy, equipmentId: $equipmentId, equipment: $equipment, components: $components, description: $description, dueDate: $dueDate, checklistQuestions: $checklistQuestions, inspectionMethods: $inspectionMethods, potentialEmergentWorks: $potentialEmergentWorks, scopeImages: $scopeImages, inspectionDate: $inspectionDate, comments: $comments, attachments: $attachments, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $ScheduleV2CopyWith<$Res>  {
  factory $ScheduleV2CopyWith(ScheduleV2 value, $Res Function(ScheduleV2) _then) = _$ScheduleV2CopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String scheduleID, String status, String scheduleTypeId, ReferenceData? scheduleType, String operationId, ReferenceData? operation, String createdById, User? createdBy, String? submittedById, User? submittedBy, String? reviewedById, User? reviewedBy, String? approvedById, User? approvedBy, String equipmentId, Equipment? equipment, List<ScheduleComponentV2> components, String description, DateTime dueDate, List<ChecklistQuestionV2> checklistQuestions, List<InspectionMethodV2> inspectionMethods, List<PotentialEmergentWorkV2> potentialEmergentWorks, List<AttachmentV2> scopeImages, DateTime? inspectionDate, String? comments, List<AttachmentV2> attachments, bool? isDeleted
});


$ReferenceDataCopyWith<$Res>? get scheduleType;$ReferenceDataCopyWith<$Res>? get operation;$UserCopyWith<$Res>? get createdBy;$UserCopyWith<$Res>? get submittedBy;$UserCopyWith<$Res>? get reviewedBy;$UserCopyWith<$Res>? get approvedBy;$EquipmentCopyWith<$Res>? get equipment;

}
/// @nodoc
class _$ScheduleV2CopyWithImpl<$Res>
    implements $ScheduleV2CopyWith<$Res> {
  _$ScheduleV2CopyWithImpl(this._self, this._then);

  final ScheduleV2 _self;
  final $Res Function(ScheduleV2) _then;

/// Create a copy of ScheduleV2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scheduleID = null,Object? status = null,Object? scheduleTypeId = null,Object? scheduleType = freezed,Object? operationId = null,Object? operation = freezed,Object? createdById = null,Object? createdBy = freezed,Object? submittedById = freezed,Object? submittedBy = freezed,Object? reviewedById = freezed,Object? reviewedBy = freezed,Object? approvedById = freezed,Object? approvedBy = freezed,Object? equipmentId = null,Object? equipment = freezed,Object? components = null,Object? description = null,Object? dueDate = null,Object? checklistQuestions = null,Object? inspectionMethods = null,Object? potentialEmergentWorks = null,Object? scopeImages = null,Object? inspectionDate = freezed,Object? comments = freezed,Object? attachments = null,Object? isDeleted = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduleID: null == scheduleID ? _self.scheduleID : scheduleID // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,scheduleTypeId: null == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String,scheduleType: freezed == scheduleType ? _self.scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,operationId: null == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as ReferenceData?,createdById: null == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as User?,submittedById: freezed == submittedById ? _self.submittedById : submittedById // ignore: cast_nullable_to_non_nullable
as String?,submittedBy: freezed == submittedBy ? _self.submittedBy : submittedBy // ignore: cast_nullable_to_non_nullable
as User?,reviewedById: freezed == reviewedById ? _self.reviewedById : reviewedById // ignore: cast_nullable_to_non_nullable
as String?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as User?,approvedById: freezed == approvedById ? _self.approvedById : approvedById // ignore: cast_nullable_to_non_nullable
as String?,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as User?,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as Equipment?,components: null == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as List<ScheduleComponentV2>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,checklistQuestions: null == checklistQuestions ? _self.checklistQuestions : checklistQuestions // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionV2>,inspectionMethods: null == inspectionMethods ? _self.inspectionMethods : inspectionMethods // ignore: cast_nullable_to_non_nullable
as List<InspectionMethodV2>,potentialEmergentWorks: null == potentialEmergentWorks ? _self.potentialEmergentWorks : potentialEmergentWorks // ignore: cast_nullable_to_non_nullable
as List<PotentialEmergentWorkV2>,scopeImages: null == scopeImages ? _self.scopeImages : scopeImages // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>,inspectionDate: freezed == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ScheduleV2
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
}/// Create a copy of ScheduleV2
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
}/// Create a copy of ScheduleV2
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
}/// Create a copy of ScheduleV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get submittedBy {
    if (_self.submittedBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.submittedBy!, (value) {
    return _then(_self.copyWith(submittedBy: value));
  });
}/// Create a copy of ScheduleV2
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
}/// Create a copy of ScheduleV2
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
}/// Create a copy of ScheduleV2
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
}
}


/// Adds pattern-matching-related methods to [ScheduleV2].
extension ScheduleV2Patterns on ScheduleV2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleV2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleV2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleV2 value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleV2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleV2 value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleV2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scheduleID,  String status,  String scheduleTypeId,  ReferenceData? scheduleType,  String operationId,  ReferenceData? operation,  String createdById,  User? createdBy,  String? submittedById,  User? submittedBy,  String? reviewedById,  User? reviewedBy,  String? approvedById,  User? approvedBy,  String equipmentId,  Equipment? equipment,  List<ScheduleComponentV2> components,  String description,  DateTime dueDate,  List<ChecklistQuestionV2> checklistQuestions,  List<InspectionMethodV2> inspectionMethods,  List<PotentialEmergentWorkV2> potentialEmergentWorks,  List<AttachmentV2> scopeImages,  DateTime? inspectionDate,  String? comments,  List<AttachmentV2> attachments,  bool? isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleID,_that.status,_that.scheduleTypeId,_that.scheduleType,_that.operationId,_that.operation,_that.createdById,_that.createdBy,_that.submittedById,_that.submittedBy,_that.reviewedById,_that.reviewedBy,_that.approvedById,_that.approvedBy,_that.equipmentId,_that.equipment,_that.components,_that.description,_that.dueDate,_that.checklistQuestions,_that.inspectionMethods,_that.potentialEmergentWorks,_that.scopeImages,_that.inspectionDate,_that.comments,_that.attachments,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scheduleID,  String status,  String scheduleTypeId,  ReferenceData? scheduleType,  String operationId,  ReferenceData? operation,  String createdById,  User? createdBy,  String? submittedById,  User? submittedBy,  String? reviewedById,  User? reviewedBy,  String? approvedById,  User? approvedBy,  String equipmentId,  Equipment? equipment,  List<ScheduleComponentV2> components,  String description,  DateTime dueDate,  List<ChecklistQuestionV2> checklistQuestions,  List<InspectionMethodV2> inspectionMethods,  List<PotentialEmergentWorkV2> potentialEmergentWorks,  List<AttachmentV2> scopeImages,  DateTime? inspectionDate,  String? comments,  List<AttachmentV2> attachments,  bool? isDeleted)  $default,) {final _that = this;
switch (_that) {
case _ScheduleV2():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleID,_that.status,_that.scheduleTypeId,_that.scheduleType,_that.operationId,_that.operation,_that.createdById,_that.createdBy,_that.submittedById,_that.submittedBy,_that.reviewedById,_that.reviewedBy,_that.approvedById,_that.approvedBy,_that.equipmentId,_that.equipment,_that.components,_that.description,_that.dueDate,_that.checklistQuestions,_that.inspectionMethods,_that.potentialEmergentWorks,_that.scopeImages,_that.inspectionDate,_that.comments,_that.attachments,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String scheduleID,  String status,  String scheduleTypeId,  ReferenceData? scheduleType,  String operationId,  ReferenceData? operation,  String createdById,  User? createdBy,  String? submittedById,  User? submittedBy,  String? reviewedById,  User? reviewedBy,  String? approvedById,  User? approvedBy,  String equipmentId,  Equipment? equipment,  List<ScheduleComponentV2> components,  String description,  DateTime dueDate,  List<ChecklistQuestionV2> checklistQuestions,  List<InspectionMethodV2> inspectionMethods,  List<PotentialEmergentWorkV2> potentialEmergentWorks,  List<AttachmentV2> scopeImages,  DateTime? inspectionDate,  String? comments,  List<AttachmentV2> attachments,  bool? isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleID,_that.status,_that.scheduleTypeId,_that.scheduleType,_that.operationId,_that.operation,_that.createdById,_that.createdBy,_that.submittedById,_that.submittedBy,_that.reviewedById,_that.reviewedBy,_that.approvedById,_that.approvedBy,_that.equipmentId,_that.equipment,_that.components,_that.description,_that.dueDate,_that.checklistQuestions,_that.inspectionMethods,_that.potentialEmergentWorks,_that.scopeImages,_that.inspectionDate,_that.comments,_that.attachments,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleV2 implements ScheduleV2 {
  const _ScheduleV2({required this.id, required this.createdAt, required this.updatedAt, required this.scheduleID, required this.status, required this.scheduleTypeId, this.scheduleType, required this.operationId, this.operation, required this.createdById, this.createdBy, this.submittedById, this.submittedBy, this.reviewedById, this.reviewedBy, this.approvedById, this.approvedBy, required this.equipmentId, this.equipment, final  List<ScheduleComponentV2> components = const [], required this.description, required this.dueDate, final  List<ChecklistQuestionV2> checklistQuestions = const [], final  List<InspectionMethodV2> inspectionMethods = const [], final  List<PotentialEmergentWorkV2> potentialEmergentWorks = const [], final  List<AttachmentV2> scopeImages = const [], this.inspectionDate, this.comments, final  List<AttachmentV2> attachments = const [], this.isDeleted}): _components = components,_checklistQuestions = checklistQuestions,_inspectionMethods = inspectionMethods,_potentialEmergentWorks = potentialEmergentWorks,_scopeImages = scopeImages,_attachments = attachments;
  factory _ScheduleV2.fromJson(Map<String, dynamic> json) => _$ScheduleV2FromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String scheduleID;
@override final  String status;
@override final  String scheduleTypeId;
@override final  ReferenceData? scheduleType;
@override final  String operationId;
@override final  ReferenceData? operation;
@override final  String createdById;
@override final  User? createdBy;
@override final  String? submittedById;
@override final  User? submittedBy;
@override final  String? reviewedById;
@override final  User? reviewedBy;
@override final  String? approvedById;
@override final  User? approvedBy;
@override final  String equipmentId;
@override final  Equipment? equipment;
 final  List<ScheduleComponentV2> _components;
@override@JsonKey() List<ScheduleComponentV2> get components {
  if (_components is EqualUnmodifiableListView) return _components;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_components);
}

@override final  String description;
@override final  DateTime dueDate;
 final  List<ChecklistQuestionV2> _checklistQuestions;
@override@JsonKey() List<ChecklistQuestionV2> get checklistQuestions {
  if (_checklistQuestions is EqualUnmodifiableListView) return _checklistQuestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checklistQuestions);
}

 final  List<InspectionMethodV2> _inspectionMethods;
@override@JsonKey() List<InspectionMethodV2> get inspectionMethods {
  if (_inspectionMethods is EqualUnmodifiableListView) return _inspectionMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inspectionMethods);
}

 final  List<PotentialEmergentWorkV2> _potentialEmergentWorks;
@override@JsonKey() List<PotentialEmergentWorkV2> get potentialEmergentWorks {
  if (_potentialEmergentWorks is EqualUnmodifiableListView) return _potentialEmergentWorks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_potentialEmergentWorks);
}

 final  List<AttachmentV2> _scopeImages;
@override@JsonKey() List<AttachmentV2> get scopeImages {
  if (_scopeImages is EqualUnmodifiableListView) return _scopeImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scopeImages);
}

@override final  DateTime? inspectionDate;
@override final  String? comments;
 final  List<AttachmentV2> _attachments;
@override@JsonKey() List<AttachmentV2> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

@override final  bool? isDeleted;

/// Create a copy of ScheduleV2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleV2CopyWith<_ScheduleV2> get copyWith => __$ScheduleV2CopyWithImpl<_ScheduleV2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleV2ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleID, scheduleID) || other.scheduleID == scheduleID)&&(identical(other.status, status) || other.status == status)&&(identical(other.scheduleTypeId, scheduleTypeId) || other.scheduleTypeId == scheduleTypeId)&&(identical(other.scheduleType, scheduleType) || other.scheduleType == scheduleType)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.submittedById, submittedById) || other.submittedById == submittedById)&&(identical(other.submittedBy, submittedBy) || other.submittedBy == submittedBy)&&(identical(other.reviewedById, reviewedById) || other.reviewedById == reviewedById)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.approvedById, approvedById) || other.approvedById == approvedById)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.equipment, equipment) || other.equipment == equipment)&&const DeepCollectionEquality().equals(other._components, _components)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&const DeepCollectionEquality().equals(other._checklistQuestions, _checklistQuestions)&&const DeepCollectionEquality().equals(other._inspectionMethods, _inspectionMethods)&&const DeepCollectionEquality().equals(other._potentialEmergentWorks, _potentialEmergentWorks)&&const DeepCollectionEquality().equals(other._scopeImages, _scopeImages)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.comments, comments) || other.comments == comments)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,scheduleID,status,scheduleTypeId,scheduleType,operationId,operation,createdById,createdBy,submittedById,submittedBy,reviewedById,reviewedBy,approvedById,approvedBy,equipmentId,equipment,const DeepCollectionEquality().hash(_components),description,dueDate,const DeepCollectionEquality().hash(_checklistQuestions),const DeepCollectionEquality().hash(_inspectionMethods),const DeepCollectionEquality().hash(_potentialEmergentWorks),const DeepCollectionEquality().hash(_scopeImages),inspectionDate,comments,const DeepCollectionEquality().hash(_attachments),isDeleted]);

@override
String toString() {
  return 'ScheduleV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleID: $scheduleID, status: $status, scheduleTypeId: $scheduleTypeId, scheduleType: $scheduleType, operationId: $operationId, operation: $operation, createdById: $createdById, createdBy: $createdBy, submittedById: $submittedById, submittedBy: $submittedBy, reviewedById: $reviewedById, reviewedBy: $reviewedBy, approvedById: $approvedById, approvedBy: $approvedBy, equipmentId: $equipmentId, equipment: $equipment, components: $components, description: $description, dueDate: $dueDate, checklistQuestions: $checklistQuestions, inspectionMethods: $inspectionMethods, potentialEmergentWorks: $potentialEmergentWorks, scopeImages: $scopeImages, inspectionDate: $inspectionDate, comments: $comments, attachments: $attachments, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$ScheduleV2CopyWith<$Res> implements $ScheduleV2CopyWith<$Res> {
  factory _$ScheduleV2CopyWith(_ScheduleV2 value, $Res Function(_ScheduleV2) _then) = __$ScheduleV2CopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String scheduleID, String status, String scheduleTypeId, ReferenceData? scheduleType, String operationId, ReferenceData? operation, String createdById, User? createdBy, String? submittedById, User? submittedBy, String? reviewedById, User? reviewedBy, String? approvedById, User? approvedBy, String equipmentId, Equipment? equipment, List<ScheduleComponentV2> components, String description, DateTime dueDate, List<ChecklistQuestionV2> checklistQuestions, List<InspectionMethodV2> inspectionMethods, List<PotentialEmergentWorkV2> potentialEmergentWorks, List<AttachmentV2> scopeImages, DateTime? inspectionDate, String? comments, List<AttachmentV2> attachments, bool? isDeleted
});


@override $ReferenceDataCopyWith<$Res>? get scheduleType;@override $ReferenceDataCopyWith<$Res>? get operation;@override $UserCopyWith<$Res>? get createdBy;@override $UserCopyWith<$Res>? get submittedBy;@override $UserCopyWith<$Res>? get reviewedBy;@override $UserCopyWith<$Res>? get approvedBy;@override $EquipmentCopyWith<$Res>? get equipment;

}
/// @nodoc
class __$ScheduleV2CopyWithImpl<$Res>
    implements _$ScheduleV2CopyWith<$Res> {
  __$ScheduleV2CopyWithImpl(this._self, this._then);

  final _ScheduleV2 _self;
  final $Res Function(_ScheduleV2) _then;

/// Create a copy of ScheduleV2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? scheduleID = null,Object? status = null,Object? scheduleTypeId = null,Object? scheduleType = freezed,Object? operationId = null,Object? operation = freezed,Object? createdById = null,Object? createdBy = freezed,Object? submittedById = freezed,Object? submittedBy = freezed,Object? reviewedById = freezed,Object? reviewedBy = freezed,Object? approvedById = freezed,Object? approvedBy = freezed,Object? equipmentId = null,Object? equipment = freezed,Object? components = null,Object? description = null,Object? dueDate = null,Object? checklistQuestions = null,Object? inspectionMethods = null,Object? potentialEmergentWorks = null,Object? scopeImages = null,Object? inspectionDate = freezed,Object? comments = freezed,Object? attachments = null,Object? isDeleted = freezed,}) {
  return _then(_ScheduleV2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduleID: null == scheduleID ? _self.scheduleID : scheduleID // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,scheduleTypeId: null == scheduleTypeId ? _self.scheduleTypeId : scheduleTypeId // ignore: cast_nullable_to_non_nullable
as String,scheduleType: freezed == scheduleType ? _self.scheduleType : scheduleType // ignore: cast_nullable_to_non_nullable
as ReferenceData?,operationId: null == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as ReferenceData?,createdById: null == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as User?,submittedById: freezed == submittedById ? _self.submittedById : submittedById // ignore: cast_nullable_to_non_nullable
as String?,submittedBy: freezed == submittedBy ? _self.submittedBy : submittedBy // ignore: cast_nullable_to_non_nullable
as User?,reviewedById: freezed == reviewedById ? _self.reviewedById : reviewedById // ignore: cast_nullable_to_non_nullable
as String?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as User?,approvedById: freezed == approvedById ? _self.approvedById : approvedById // ignore: cast_nullable_to_non_nullable
as String?,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as User?,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as Equipment?,components: null == components ? _self._components : components // ignore: cast_nullable_to_non_nullable
as List<ScheduleComponentV2>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,checklistQuestions: null == checklistQuestions ? _self._checklistQuestions : checklistQuestions // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionV2>,inspectionMethods: null == inspectionMethods ? _self._inspectionMethods : inspectionMethods // ignore: cast_nullable_to_non_nullable
as List<InspectionMethodV2>,potentialEmergentWorks: null == potentialEmergentWorks ? _self._potentialEmergentWorks : potentialEmergentWorks // ignore: cast_nullable_to_non_nullable
as List<PotentialEmergentWorkV2>,scopeImages: null == scopeImages ? _self._scopeImages : scopeImages // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>,inspectionDate: freezed == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ScheduleV2
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
}/// Create a copy of ScheduleV2
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
}/// Create a copy of ScheduleV2
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
}/// Create a copy of ScheduleV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get submittedBy {
    if (_self.submittedBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.submittedBy!, (value) {
    return _then(_self.copyWith(submittedBy: value));
  });
}/// Create a copy of ScheduleV2
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
}/// Create a copy of ScheduleV2
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
}/// Create a copy of ScheduleV2
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
}
}


/// @nodoc
mixin _$ScheduleComponentV2 {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get scheduleV2Id; String? get componentId; Component? get component;
/// Create a copy of ScheduleComponentV2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleComponentV2CopyWith<ScheduleComponentV2> get copyWith => _$ScheduleComponentV2CopyWithImpl<ScheduleComponentV2>(this as ScheduleComponentV2, _$identity);

  /// Serializes this ScheduleComponentV2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleComponentV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.componentId, componentId) || other.componentId == componentId)&&(identical(other.component, component) || other.component == component));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleV2Id,componentId,component);

@override
String toString() {
  return 'ScheduleComponentV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleV2Id: $scheduleV2Id, componentId: $componentId, component: $component)';
}


}

/// @nodoc
abstract mixin class $ScheduleComponentV2CopyWith<$Res>  {
  factory $ScheduleComponentV2CopyWith(ScheduleComponentV2 value, $Res Function(ScheduleComponentV2) _then) = _$ScheduleComponentV2CopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? scheduleV2Id, String? componentId, Component? component
});


$ComponentCopyWith<$Res>? get component;

}
/// @nodoc
class _$ScheduleComponentV2CopyWithImpl<$Res>
    implements $ScheduleComponentV2CopyWith<$Res> {
  _$ScheduleComponentV2CopyWithImpl(this._self, this._then);

  final ScheduleComponentV2 _self;
  final $Res Function(ScheduleComponentV2) _then;

/// Create a copy of ScheduleComponentV2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? scheduleV2Id = freezed,Object? componentId = freezed,Object? component = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,componentId: freezed == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String?,component: freezed == component ? _self.component : component // ignore: cast_nullable_to_non_nullable
as Component?,
  ));
}
/// Create a copy of ScheduleComponentV2
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


/// Adds pattern-matching-related methods to [ScheduleComponentV2].
extension ScheduleComponentV2Patterns on ScheduleComponentV2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleComponentV2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleComponentV2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleComponentV2 value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleComponentV2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleComponentV2 value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleComponentV2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? componentId,  Component? component)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleComponentV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.componentId,_that.component);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? componentId,  Component? component)  $default,) {final _that = this;
switch (_that) {
case _ScheduleComponentV2():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.componentId,_that.component);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? componentId,  Component? component)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleComponentV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.componentId,_that.component);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleComponentV2 implements ScheduleComponentV2 {
  const _ScheduleComponentV2({this.id, this.createdAt, this.updatedAt, this.scheduleV2Id, this.componentId, this.component});
  factory _ScheduleComponentV2.fromJson(Map<String, dynamic> json) => _$ScheduleComponentV2FromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? scheduleV2Id;
@override final  String? componentId;
@override final  Component? component;

/// Create a copy of ScheduleComponentV2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleComponentV2CopyWith<_ScheduleComponentV2> get copyWith => __$ScheduleComponentV2CopyWithImpl<_ScheduleComponentV2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleComponentV2ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleComponentV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.componentId, componentId) || other.componentId == componentId)&&(identical(other.component, component) || other.component == component));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleV2Id,componentId,component);

@override
String toString() {
  return 'ScheduleComponentV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleV2Id: $scheduleV2Id, componentId: $componentId, component: $component)';
}


}

/// @nodoc
abstract mixin class _$ScheduleComponentV2CopyWith<$Res> implements $ScheduleComponentV2CopyWith<$Res> {
  factory _$ScheduleComponentV2CopyWith(_ScheduleComponentV2 value, $Res Function(_ScheduleComponentV2) _then) = __$ScheduleComponentV2CopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? scheduleV2Id, String? componentId, Component? component
});


@override $ComponentCopyWith<$Res>? get component;

}
/// @nodoc
class __$ScheduleComponentV2CopyWithImpl<$Res>
    implements _$ScheduleComponentV2CopyWith<$Res> {
  __$ScheduleComponentV2CopyWithImpl(this._self, this._then);

  final _ScheduleComponentV2 _self;
  final $Res Function(_ScheduleComponentV2) _then;

/// Create a copy of ScheduleComponentV2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? scheduleV2Id = freezed,Object? componentId = freezed,Object? component = freezed,}) {
  return _then(_ScheduleComponentV2(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,componentId: freezed == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String?,component: freezed == component ? _self.component : component // ignore: cast_nullable_to_non_nullable
as Component?,
  ));
}

/// Create a copy of ScheduleComponentV2
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
mixin _$ChecklistQuestionV2 {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get scheduleV2Id; String? get inspectionType; String? get question; String? get helpText; ResponseType? get responseType; String? get value; String? get note; DateTime? get completedAt; String? get completedById; User? get completedBy; List<AttachmentV2> get attachments; bool? get isDeleted; String? get section; int? get order;
/// Create a copy of ChecklistQuestionV2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistQuestionV2CopyWith<ChecklistQuestionV2> get copyWith => _$ChecklistQuestionV2CopyWithImpl<ChecklistQuestionV2>(this as ChecklistQuestionV2, _$identity);

  /// Serializes this ChecklistQuestionV2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistQuestionV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.inspectionType, inspectionType) || other.inspectionType == inspectionType)&&(identical(other.question, question) || other.question == question)&&(identical(other.helpText, helpText) || other.helpText == helpText)&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completedById, completedById) || other.completedById == completedById)&&(identical(other.completedBy, completedBy) || other.completedBy == completedBy)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.section, section) || other.section == section)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleV2Id,inspectionType,question,helpText,responseType,value,note,completedAt,completedById,completedBy,const DeepCollectionEquality().hash(attachments),isDeleted,section,order);

@override
String toString() {
  return 'ChecklistQuestionV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleV2Id: $scheduleV2Id, inspectionType: $inspectionType, question: $question, helpText: $helpText, responseType: $responseType, value: $value, note: $note, completedAt: $completedAt, completedById: $completedById, completedBy: $completedBy, attachments: $attachments, isDeleted: $isDeleted, section: $section, order: $order)';
}


}

/// @nodoc
abstract mixin class $ChecklistQuestionV2CopyWith<$Res>  {
  factory $ChecklistQuestionV2CopyWith(ChecklistQuestionV2 value, $Res Function(ChecklistQuestionV2) _then) = _$ChecklistQuestionV2CopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? scheduleV2Id, String? inspectionType, String? question, String? helpText, ResponseType? responseType, String? value, String? note, DateTime? completedAt, String? completedById, User? completedBy, List<AttachmentV2> attachments, bool? isDeleted, String? section, int? order
});


$UserCopyWith<$Res>? get completedBy;

}
/// @nodoc
class _$ChecklistQuestionV2CopyWithImpl<$Res>
    implements $ChecklistQuestionV2CopyWith<$Res> {
  _$ChecklistQuestionV2CopyWithImpl(this._self, this._then);

  final ChecklistQuestionV2 _self;
  final $Res Function(ChecklistQuestionV2) _then;

/// Create a copy of ChecklistQuestionV2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? scheduleV2Id = freezed,Object? inspectionType = freezed,Object? question = freezed,Object? helpText = freezed,Object? responseType = freezed,Object? value = freezed,Object? note = freezed,Object? completedAt = freezed,Object? completedById = freezed,Object? completedBy = freezed,Object? attachments = null,Object? isDeleted = freezed,Object? section = freezed,Object? order = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,inspectionType: freezed == inspectionType ? _self.inspectionType : inspectionType // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,helpText: freezed == helpText ? _self.helpText : helpText // ignore: cast_nullable_to_non_nullable
as String?,responseType: freezed == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as ResponseType?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedById: freezed == completedById ? _self.completedById : completedById // ignore: cast_nullable_to_non_nullable
as String?,completedBy: freezed == completedBy ? _self.completedBy : completedBy // ignore: cast_nullable_to_non_nullable
as User?,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of ChecklistQuestionV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get completedBy {
    if (_self.completedBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.completedBy!, (value) {
    return _then(_self.copyWith(completedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChecklistQuestionV2].
extension ChecklistQuestionV2Patterns on ChecklistQuestionV2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistQuestionV2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistQuestionV2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistQuestionV2 value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistQuestionV2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistQuestionV2 value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistQuestionV2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? inspectionType,  String? question,  String? helpText,  ResponseType? responseType,  String? value,  String? note,  DateTime? completedAt,  String? completedById,  User? completedBy,  List<AttachmentV2> attachments,  bool? isDeleted,  String? section,  int? order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistQuestionV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.value,_that.note,_that.completedAt,_that.completedById,_that.completedBy,_that.attachments,_that.isDeleted,_that.section,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? inspectionType,  String? question,  String? helpText,  ResponseType? responseType,  String? value,  String? note,  DateTime? completedAt,  String? completedById,  User? completedBy,  List<AttachmentV2> attachments,  bool? isDeleted,  String? section,  int? order)  $default,) {final _that = this;
switch (_that) {
case _ChecklistQuestionV2():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.value,_that.note,_that.completedAt,_that.completedById,_that.completedBy,_that.attachments,_that.isDeleted,_that.section,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? scheduleV2Id,  String? inspectionType,  String? question,  String? helpText,  ResponseType? responseType,  String? value,  String? note,  DateTime? completedAt,  String? completedById,  User? completedBy,  List<AttachmentV2> attachments,  bool? isDeleted,  String? section,  int? order)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistQuestionV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.scheduleV2Id,_that.inspectionType,_that.question,_that.helpText,_that.responseType,_that.value,_that.note,_that.completedAt,_that.completedById,_that.completedBy,_that.attachments,_that.isDeleted,_that.section,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistQuestionV2 implements ChecklistQuestionV2 {
  const _ChecklistQuestionV2({this.id, this.createdAt, this.updatedAt, this.scheduleV2Id, this.inspectionType, this.question, this.helpText, this.responseType, this.value, this.note, this.completedAt, this.completedById, this.completedBy, final  List<AttachmentV2> attachments = const [], this.isDeleted, this.section, this.order}): _attachments = attachments;
  factory _ChecklistQuestionV2.fromJson(Map<String, dynamic> json) => _$ChecklistQuestionV2FromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? scheduleV2Id;
@override final  String? inspectionType;
@override final  String? question;
@override final  String? helpText;
@override final  ResponseType? responseType;
@override final  String? value;
@override final  String? note;
@override final  DateTime? completedAt;
@override final  String? completedById;
@override final  User? completedBy;
 final  List<AttachmentV2> _attachments;
@override@JsonKey() List<AttachmentV2> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

@override final  bool? isDeleted;
@override final  String? section;
@override final  int? order;

/// Create a copy of ChecklistQuestionV2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistQuestionV2CopyWith<_ChecklistQuestionV2> get copyWith => __$ChecklistQuestionV2CopyWithImpl<_ChecklistQuestionV2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistQuestionV2ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistQuestionV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.inspectionType, inspectionType) || other.inspectionType == inspectionType)&&(identical(other.question, question) || other.question == question)&&(identical(other.helpText, helpText) || other.helpText == helpText)&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.value, value) || other.value == value)&&(identical(other.note, note) || other.note == note)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completedById, completedById) || other.completedById == completedById)&&(identical(other.completedBy, completedBy) || other.completedBy == completedBy)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.section, section) || other.section == section)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,scheduleV2Id,inspectionType,question,helpText,responseType,value,note,completedAt,completedById,completedBy,const DeepCollectionEquality().hash(_attachments),isDeleted,section,order);

@override
String toString() {
  return 'ChecklistQuestionV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, scheduleV2Id: $scheduleV2Id, inspectionType: $inspectionType, question: $question, helpText: $helpText, responseType: $responseType, value: $value, note: $note, completedAt: $completedAt, completedById: $completedById, completedBy: $completedBy, attachments: $attachments, isDeleted: $isDeleted, section: $section, order: $order)';
}


}

/// @nodoc
abstract mixin class _$ChecklistQuestionV2CopyWith<$Res> implements $ChecklistQuestionV2CopyWith<$Res> {
  factory _$ChecklistQuestionV2CopyWith(_ChecklistQuestionV2 value, $Res Function(_ChecklistQuestionV2) _then) = __$ChecklistQuestionV2CopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? scheduleV2Id, String? inspectionType, String? question, String? helpText, ResponseType? responseType, String? value, String? note, DateTime? completedAt, String? completedById, User? completedBy, List<AttachmentV2> attachments, bool? isDeleted, String? section, int? order
});


@override $UserCopyWith<$Res>? get completedBy;

}
/// @nodoc
class __$ChecklistQuestionV2CopyWithImpl<$Res>
    implements _$ChecklistQuestionV2CopyWith<$Res> {
  __$ChecklistQuestionV2CopyWithImpl(this._self, this._then);

  final _ChecklistQuestionV2 _self;
  final $Res Function(_ChecklistQuestionV2) _then;

/// Create a copy of ChecklistQuestionV2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? scheduleV2Id = freezed,Object? inspectionType = freezed,Object? question = freezed,Object? helpText = freezed,Object? responseType = freezed,Object? value = freezed,Object? note = freezed,Object? completedAt = freezed,Object? completedById = freezed,Object? completedBy = freezed,Object? attachments = null,Object? isDeleted = freezed,Object? section = freezed,Object? order = freezed,}) {
  return _then(_ChecklistQuestionV2(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,inspectionType: freezed == inspectionType ? _self.inspectionType : inspectionType // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,helpText: freezed == helpText ? _self.helpText : helpText // ignore: cast_nullable_to_non_nullable
as String?,responseType: freezed == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as ResponseType?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedById: freezed == completedById ? _self.completedById : completedById // ignore: cast_nullable_to_non_nullable
as String?,completedBy: freezed == completedBy ? _self.completedBy : completedBy // ignore: cast_nullable_to_non_nullable
as User?,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentV2>,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of ChecklistQuestionV2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get completedBy {
    if (_self.completedBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.completedBy!, (value) {
    return _then(_self.copyWith(completedBy: value));
  });
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
mixin _$AttachmentV2 {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get documentID; String? get name; String? get url; String? get description; String? get comments; String? get equipmentId; String? get scheduleV2Id; String? get scopeScheduleV2Id; String? get checklistQuestionV2Id; bool? get isDeleted;
/// Create a copy of AttachmentV2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttachmentV2CopyWith<AttachmentV2> get copyWith => _$AttachmentV2CopyWithImpl<AttachmentV2>(this as AttachmentV2, _$identity);

  /// Serializes this AttachmentV2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttachmentV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.documentID, documentID) || other.documentID == documentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.scopeScheduleV2Id, scopeScheduleV2Id) || other.scopeScheduleV2Id == scopeScheduleV2Id)&&(identical(other.checklistQuestionV2Id, checklistQuestionV2Id) || other.checklistQuestionV2Id == checklistQuestionV2Id)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,documentID,name,url,description,comments,equipmentId,scheduleV2Id,scopeScheduleV2Id,checklistQuestionV2Id,isDeleted);

@override
String toString() {
  return 'AttachmentV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, documentID: $documentID, name: $name, url: $url, description: $description, comments: $comments, equipmentId: $equipmentId, scheduleV2Id: $scheduleV2Id, scopeScheduleV2Id: $scopeScheduleV2Id, checklistQuestionV2Id: $checklistQuestionV2Id, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $AttachmentV2CopyWith<$Res>  {
  factory $AttachmentV2CopyWith(AttachmentV2 value, $Res Function(AttachmentV2) _then) = _$AttachmentV2CopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? documentID, String? name, String? url, String? description, String? comments, String? equipmentId, String? scheduleV2Id, String? scopeScheduleV2Id, String? checklistQuestionV2Id, bool? isDeleted
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? documentID = freezed,Object? name = freezed,Object? url = freezed,Object? description = freezed,Object? comments = freezed,Object? equipmentId = freezed,Object? scheduleV2Id = freezed,Object? scopeScheduleV2Id = freezed,Object? checklistQuestionV2Id = freezed,Object? isDeleted = freezed,}) {
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
as String?,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,scopeScheduleV2Id: freezed == scopeScheduleV2Id ? _self.scopeScheduleV2Id : scopeScheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,checklistQuestionV2Id: freezed == checklistQuestionV2Id ? _self.checklistQuestionV2Id : checklistQuestionV2Id // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? documentID,  String? name,  String? url,  String? description,  String? comments,  String? equipmentId,  String? scheduleV2Id,  String? scopeScheduleV2Id,  String? checklistQuestionV2Id,  bool? isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttachmentV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.equipmentId,_that.scheduleV2Id,_that.scopeScheduleV2Id,_that.checklistQuestionV2Id,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? documentID,  String? name,  String? url,  String? description,  String? comments,  String? equipmentId,  String? scheduleV2Id,  String? scopeScheduleV2Id,  String? checklistQuestionV2Id,  bool? isDeleted)  $default,) {final _that = this;
switch (_that) {
case _AttachmentV2():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.equipmentId,_that.scheduleV2Id,_that.scopeScheduleV2Id,_that.checklistQuestionV2Id,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? documentID,  String? name,  String? url,  String? description,  String? comments,  String? equipmentId,  String? scheduleV2Id,  String? scopeScheduleV2Id,  String? checklistQuestionV2Id,  bool? isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _AttachmentV2() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.equipmentId,_that.scheduleV2Id,_that.scopeScheduleV2Id,_that.checklistQuestionV2Id,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttachmentV2 implements AttachmentV2 {
  const _AttachmentV2({this.id, this.createdAt, this.updatedAt, this.documentID, this.name, this.url, this.description, this.comments, this.equipmentId, this.scheduleV2Id, this.scopeScheduleV2Id, this.checklistQuestionV2Id, this.isDeleted});
  factory _AttachmentV2.fromJson(Map<String, dynamic> json) => _$AttachmentV2FromJson(json);

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? documentID;
@override final  String? name;
@override final  String? url;
@override final  String? description;
@override final  String? comments;
@override final  String? equipmentId;
@override final  String? scheduleV2Id;
@override final  String? scopeScheduleV2Id;
@override final  String? checklistQuestionV2Id;
@override final  bool? isDeleted;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttachmentV2&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.documentID, documentID) || other.documentID == documentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleV2Id, scheduleV2Id) || other.scheduleV2Id == scheduleV2Id)&&(identical(other.scopeScheduleV2Id, scopeScheduleV2Id) || other.scopeScheduleV2Id == scopeScheduleV2Id)&&(identical(other.checklistQuestionV2Id, checklistQuestionV2Id) || other.checklistQuestionV2Id == checklistQuestionV2Id)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,documentID,name,url,description,comments,equipmentId,scheduleV2Id,scopeScheduleV2Id,checklistQuestionV2Id,isDeleted);

@override
String toString() {
  return 'AttachmentV2(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, documentID: $documentID, name: $name, url: $url, description: $description, comments: $comments, equipmentId: $equipmentId, scheduleV2Id: $scheduleV2Id, scopeScheduleV2Id: $scopeScheduleV2Id, checklistQuestionV2Id: $checklistQuestionV2Id, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$AttachmentV2CopyWith<$Res> implements $AttachmentV2CopyWith<$Res> {
  factory _$AttachmentV2CopyWith(_AttachmentV2 value, $Res Function(_AttachmentV2) _then) = __$AttachmentV2CopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? documentID, String? name, String? url, String? description, String? comments, String? equipmentId, String? scheduleV2Id, String? scopeScheduleV2Id, String? checklistQuestionV2Id, bool? isDeleted
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? documentID = freezed,Object? name = freezed,Object? url = freezed,Object? description = freezed,Object? comments = freezed,Object? equipmentId = freezed,Object? scheduleV2Id = freezed,Object? scopeScheduleV2Id = freezed,Object? checklistQuestionV2Id = freezed,Object? isDeleted = freezed,}) {
  return _then(_AttachmentV2(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,documentID: freezed == documentID ? _self.documentID : documentID // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,scheduleV2Id: freezed == scheduleV2Id ? _self.scheduleV2Id : scheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,scopeScheduleV2Id: freezed == scopeScheduleV2Id ? _self.scopeScheduleV2Id : scopeScheduleV2Id // ignore: cast_nullable_to_non_nullable
as String?,checklistQuestionV2Id: freezed == checklistQuestionV2Id ? _self.checklistQuestionV2Id : checklistQuestionV2Id // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$User {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get role; String get title; String get name; String get email; String get password; List<ScheduleV2> get createdSchedulesV2; List<ScheduleV2> get submittedSchedulesV2; List<ScheduleV2> get reviewedSchedulesV2; List<ScheduleV2> get approvedSchedulesV2; List<ChecklistQuestionV2> get completedChecklistQuestionsV2; bool? get isDeleted;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.role, role) || other.role == role)&&(identical(other.title, title) || other.title == title)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&const DeepCollectionEquality().equals(other.createdSchedulesV2, createdSchedulesV2)&&const DeepCollectionEquality().equals(other.submittedSchedulesV2, submittedSchedulesV2)&&const DeepCollectionEquality().equals(other.reviewedSchedulesV2, reviewedSchedulesV2)&&const DeepCollectionEquality().equals(other.approvedSchedulesV2, approvedSchedulesV2)&&const DeepCollectionEquality().equals(other.completedChecklistQuestionsV2, completedChecklistQuestionsV2)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,role,title,name,email,password,const DeepCollectionEquality().hash(createdSchedulesV2),const DeepCollectionEquality().hash(submittedSchedulesV2),const DeepCollectionEquality().hash(reviewedSchedulesV2),const DeepCollectionEquality().hash(approvedSchedulesV2),const DeepCollectionEquality().hash(completedChecklistQuestionsV2),isDeleted);

@override
String toString() {
  return 'User(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, role: $role, title: $title, name: $name, email: $email, password: $password, createdSchedulesV2: $createdSchedulesV2, submittedSchedulesV2: $submittedSchedulesV2, reviewedSchedulesV2: $reviewedSchedulesV2, approvedSchedulesV2: $approvedSchedulesV2, completedChecklistQuestionsV2: $completedChecklistQuestionsV2, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String role, String title, String name, String email, String password, List<ScheduleV2> createdSchedulesV2, List<ScheduleV2> submittedSchedulesV2, List<ScheduleV2> reviewedSchedulesV2, List<ScheduleV2> approvedSchedulesV2, List<ChecklistQuestionV2> completedChecklistQuestionsV2, bool? isDeleted
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? role = null,Object? title = null,Object? name = null,Object? email = null,Object? password = null,Object? createdSchedulesV2 = null,Object? submittedSchedulesV2 = null,Object? reviewedSchedulesV2 = null,Object? approvedSchedulesV2 = null,Object? completedChecklistQuestionsV2 = null,Object? isDeleted = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,createdSchedulesV2: null == createdSchedulesV2 ? _self.createdSchedulesV2 : createdSchedulesV2 // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2>,submittedSchedulesV2: null == submittedSchedulesV2 ? _self.submittedSchedulesV2 : submittedSchedulesV2 // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2>,reviewedSchedulesV2: null == reviewedSchedulesV2 ? _self.reviewedSchedulesV2 : reviewedSchedulesV2 // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2>,approvedSchedulesV2: null == approvedSchedulesV2 ? _self.approvedSchedulesV2 : approvedSchedulesV2 // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2>,completedChecklistQuestionsV2: null == completedChecklistQuestionsV2 ? _self.completedChecklistQuestionsV2 : completedChecklistQuestionsV2 // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionV2>,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String role,  String title,  String name,  String email,  String password,  List<ScheduleV2> createdSchedulesV2,  List<ScheduleV2> submittedSchedulesV2,  List<ScheduleV2> reviewedSchedulesV2,  List<ScheduleV2> approvedSchedulesV2,  List<ChecklistQuestionV2> completedChecklistQuestionsV2,  bool? isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.role,_that.title,_that.name,_that.email,_that.password,_that.createdSchedulesV2,_that.submittedSchedulesV2,_that.reviewedSchedulesV2,_that.approvedSchedulesV2,_that.completedChecklistQuestionsV2,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String role,  String title,  String name,  String email,  String password,  List<ScheduleV2> createdSchedulesV2,  List<ScheduleV2> submittedSchedulesV2,  List<ScheduleV2> reviewedSchedulesV2,  List<ScheduleV2> approvedSchedulesV2,  List<ChecklistQuestionV2> completedChecklistQuestionsV2,  bool? isDeleted)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.role,_that.title,_that.name,_that.email,_that.password,_that.createdSchedulesV2,_that.submittedSchedulesV2,_that.reviewedSchedulesV2,_that.approvedSchedulesV2,_that.completedChecklistQuestionsV2,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String role,  String title,  String name,  String email,  String password,  List<ScheduleV2> createdSchedulesV2,  List<ScheduleV2> submittedSchedulesV2,  List<ScheduleV2> reviewedSchedulesV2,  List<ScheduleV2> approvedSchedulesV2,  List<ChecklistQuestionV2> completedChecklistQuestionsV2,  bool? isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.role,_that.title,_that.name,_that.email,_that.password,_that.createdSchedulesV2,_that.submittedSchedulesV2,_that.reviewedSchedulesV2,_that.approvedSchedulesV2,_that.completedChecklistQuestionsV2,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({required this.id, required this.createdAt, required this.updatedAt, required this.role, required this.title, required this.name, required this.email, required this.password, final  List<ScheduleV2> createdSchedulesV2 = const [], final  List<ScheduleV2> submittedSchedulesV2 = const [], final  List<ScheduleV2> reviewedSchedulesV2 = const [], final  List<ScheduleV2> approvedSchedulesV2 = const [], final  List<ChecklistQuestionV2> completedChecklistQuestionsV2 = const [], this.isDeleted}): _createdSchedulesV2 = createdSchedulesV2,_submittedSchedulesV2 = submittedSchedulesV2,_reviewedSchedulesV2 = reviewedSchedulesV2,_approvedSchedulesV2 = approvedSchedulesV2,_completedChecklistQuestionsV2 = completedChecklistQuestionsV2;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String role;
@override final  String title;
@override final  String name;
@override final  String email;
@override final  String password;
 final  List<ScheduleV2> _createdSchedulesV2;
@override@JsonKey() List<ScheduleV2> get createdSchedulesV2 {
  if (_createdSchedulesV2 is EqualUnmodifiableListView) return _createdSchedulesV2;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_createdSchedulesV2);
}

 final  List<ScheduleV2> _submittedSchedulesV2;
@override@JsonKey() List<ScheduleV2> get submittedSchedulesV2 {
  if (_submittedSchedulesV2 is EqualUnmodifiableListView) return _submittedSchedulesV2;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_submittedSchedulesV2);
}

 final  List<ScheduleV2> _reviewedSchedulesV2;
@override@JsonKey() List<ScheduleV2> get reviewedSchedulesV2 {
  if (_reviewedSchedulesV2 is EqualUnmodifiableListView) return _reviewedSchedulesV2;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviewedSchedulesV2);
}

 final  List<ScheduleV2> _approvedSchedulesV2;
@override@JsonKey() List<ScheduleV2> get approvedSchedulesV2 {
  if (_approvedSchedulesV2 is EqualUnmodifiableListView) return _approvedSchedulesV2;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_approvedSchedulesV2);
}

 final  List<ChecklistQuestionV2> _completedChecklistQuestionsV2;
@override@JsonKey() List<ChecklistQuestionV2> get completedChecklistQuestionsV2 {
  if (_completedChecklistQuestionsV2 is EqualUnmodifiableListView) return _completedChecklistQuestionsV2;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completedChecklistQuestionsV2);
}

@override final  bool? isDeleted;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.role, role) || other.role == role)&&(identical(other.title, title) || other.title == title)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&const DeepCollectionEquality().equals(other._createdSchedulesV2, _createdSchedulesV2)&&const DeepCollectionEquality().equals(other._submittedSchedulesV2, _submittedSchedulesV2)&&const DeepCollectionEquality().equals(other._reviewedSchedulesV2, _reviewedSchedulesV2)&&const DeepCollectionEquality().equals(other._approvedSchedulesV2, _approvedSchedulesV2)&&const DeepCollectionEquality().equals(other._completedChecklistQuestionsV2, _completedChecklistQuestionsV2)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,role,title,name,email,password,const DeepCollectionEquality().hash(_createdSchedulesV2),const DeepCollectionEquality().hash(_submittedSchedulesV2),const DeepCollectionEquality().hash(_reviewedSchedulesV2),const DeepCollectionEquality().hash(_approvedSchedulesV2),const DeepCollectionEquality().hash(_completedChecklistQuestionsV2),isDeleted);

@override
String toString() {
  return 'User(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, role: $role, title: $title, name: $name, email: $email, password: $password, createdSchedulesV2: $createdSchedulesV2, submittedSchedulesV2: $submittedSchedulesV2, reviewedSchedulesV2: $reviewedSchedulesV2, approvedSchedulesV2: $approvedSchedulesV2, completedChecklistQuestionsV2: $completedChecklistQuestionsV2, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String role, String title, String name, String email, String password, List<ScheduleV2> createdSchedulesV2, List<ScheduleV2> submittedSchedulesV2, List<ScheduleV2> reviewedSchedulesV2, List<ScheduleV2> approvedSchedulesV2, List<ChecklistQuestionV2> completedChecklistQuestionsV2, bool? isDeleted
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? role = null,Object? title = null,Object? name = null,Object? email = null,Object? password = null,Object? createdSchedulesV2 = null,Object? submittedSchedulesV2 = null,Object? reviewedSchedulesV2 = null,Object? approvedSchedulesV2 = null,Object? completedChecklistQuestionsV2 = null,Object? isDeleted = freezed,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,createdSchedulesV2: null == createdSchedulesV2 ? _self._createdSchedulesV2 : createdSchedulesV2 // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2>,submittedSchedulesV2: null == submittedSchedulesV2 ? _self._submittedSchedulesV2 : submittedSchedulesV2 // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2>,reviewedSchedulesV2: null == reviewedSchedulesV2 ? _self._reviewedSchedulesV2 : reviewedSchedulesV2 // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2>,approvedSchedulesV2: null == approvedSchedulesV2 ? _self._approvedSchedulesV2 : approvedSchedulesV2 // ignore: cast_nullable_to_non_nullable
as List<ScheduleV2>,completedChecklistQuestionsV2: null == completedChecklistQuestionsV2 ? _self._completedChecklistQuestionsV2 : completedChecklistQuestionsV2 // ignore: cast_nullable_to_non_nullable
as List<ChecklistQuestionV2>,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttachmentResponse {

 String get id; DateTime get createdAt; DateTime get updatedAt; String get documentID; String get name; String get url; String? get description; String? get comments; bool get isDeleted; String? get equipmentId; String? get scheduleId; String? get scopeImageScheduleId; String? get checklistAnswerId; String? get recordId;
/// Create a copy of AttachmentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttachmentResponseCopyWith<AttachmentResponse> get copyWith => _$AttachmentResponseCopyWithImpl<AttachmentResponse>(this as AttachmentResponse, _$identity);

  /// Serializes this AttachmentResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttachmentResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.documentID, documentID) || other.documentID == documentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.scopeImageScheduleId, scopeImageScheduleId) || other.scopeImageScheduleId == scopeImageScheduleId)&&(identical(other.checklistAnswerId, checklistAnswerId) || other.checklistAnswerId == checklistAnswerId)&&(identical(other.recordId, recordId) || other.recordId == recordId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,documentID,name,url,description,comments,isDeleted,equipmentId,scheduleId,scopeImageScheduleId,checklistAnswerId,recordId);

@override
String toString() {
  return 'AttachmentResponse(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, documentID: $documentID, name: $name, url: $url, description: $description, comments: $comments, isDeleted: $isDeleted, equipmentId: $equipmentId, scheduleId: $scheduleId, scopeImageScheduleId: $scopeImageScheduleId, checklistAnswerId: $checklistAnswerId, recordId: $recordId)';
}


}

/// @nodoc
abstract mixin class $AttachmentResponseCopyWith<$Res>  {
  factory $AttachmentResponseCopyWith(AttachmentResponse value, $Res Function(AttachmentResponse) _then) = _$AttachmentResponseCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String documentID, String name, String url, String? description, String? comments, bool isDeleted, String? equipmentId, String? scheduleId, String? scopeImageScheduleId, String? checklistAnswerId, String? recordId
});




}
/// @nodoc
class _$AttachmentResponseCopyWithImpl<$Res>
    implements $AttachmentResponseCopyWith<$Res> {
  _$AttachmentResponseCopyWithImpl(this._self, this._then);

  final AttachmentResponse _self;
  final $Res Function(AttachmentResponse) _then;

/// Create a copy of AttachmentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? documentID = null,Object? name = null,Object? url = null,Object? description = freezed,Object? comments = freezed,Object? isDeleted = null,Object? equipmentId = freezed,Object? scheduleId = freezed,Object? scopeImageScheduleId = freezed,Object? checklistAnswerId = freezed,Object? recordId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,documentID: null == documentID ? _self.documentID : documentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,scopeImageScheduleId: freezed == scopeImageScheduleId ? _self.scopeImageScheduleId : scopeImageScheduleId // ignore: cast_nullable_to_non_nullable
as String?,checklistAnswerId: freezed == checklistAnswerId ? _self.checklistAnswerId : checklistAnswerId // ignore: cast_nullable_to_non_nullable
as String?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttachmentResponse].
extension AttachmentResponsePatterns on AttachmentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttachmentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttachmentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttachmentResponse value)  $default,){
final _that = this;
switch (_that) {
case _AttachmentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttachmentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AttachmentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String documentID,  String name,  String url,  String? description,  String? comments,  bool isDeleted,  String? equipmentId,  String? scheduleId,  String? scopeImageScheduleId,  String? checklistAnswerId,  String? recordId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttachmentResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  String documentID,  String name,  String url,  String? description,  String? comments,  bool isDeleted,  String? equipmentId,  String? scheduleId,  String? scopeImageScheduleId,  String? checklistAnswerId,  String? recordId)  $default,) {final _that = this;
switch (_that) {
case _AttachmentResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  String documentID,  String name,  String url,  String? description,  String? comments,  bool isDeleted,  String? equipmentId,  String? scheduleId,  String? scopeImageScheduleId,  String? checklistAnswerId,  String? recordId)?  $default,) {final _that = this;
switch (_that) {
case _AttachmentResponse() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.documentID,_that.name,_that.url,_that.description,_that.comments,_that.isDeleted,_that.equipmentId,_that.scheduleId,_that.scopeImageScheduleId,_that.checklistAnswerId,_that.recordId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttachmentResponse implements AttachmentResponse {
  const _AttachmentResponse({required this.id, required this.createdAt, required this.updatedAt, required this.documentID, required this.name, required this.url, this.description, this.comments, required this.isDeleted, this.equipmentId, this.scheduleId, this.scopeImageScheduleId, this.checklistAnswerId, this.recordId});
  factory _AttachmentResponse.fromJson(Map<String, dynamic> json) => _$AttachmentResponseFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String documentID;
@override final  String name;
@override final  String url;
@override final  String? description;
@override final  String? comments;
@override final  bool isDeleted;
@override final  String? equipmentId;
@override final  String? scheduleId;
@override final  String? scopeImageScheduleId;
@override final  String? checklistAnswerId;
@override final  String? recordId;

/// Create a copy of AttachmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttachmentResponseCopyWith<_AttachmentResponse> get copyWith => __$AttachmentResponseCopyWithImpl<_AttachmentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttachmentResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttachmentResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.documentID, documentID) || other.documentID == documentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.scopeImageScheduleId, scopeImageScheduleId) || other.scopeImageScheduleId == scopeImageScheduleId)&&(identical(other.checklistAnswerId, checklistAnswerId) || other.checklistAnswerId == checklistAnswerId)&&(identical(other.recordId, recordId) || other.recordId == recordId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,documentID,name,url,description,comments,isDeleted,equipmentId,scheduleId,scopeImageScheduleId,checklistAnswerId,recordId);

@override
String toString() {
  return 'AttachmentResponse(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, documentID: $documentID, name: $name, url: $url, description: $description, comments: $comments, isDeleted: $isDeleted, equipmentId: $equipmentId, scheduleId: $scheduleId, scopeImageScheduleId: $scopeImageScheduleId, checklistAnswerId: $checklistAnswerId, recordId: $recordId)';
}


}

/// @nodoc
abstract mixin class _$AttachmentResponseCopyWith<$Res> implements $AttachmentResponseCopyWith<$Res> {
  factory _$AttachmentResponseCopyWith(_AttachmentResponse value, $Res Function(_AttachmentResponse) _then) = __$AttachmentResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, String documentID, String name, String url, String? description, String? comments, bool isDeleted, String? equipmentId, String? scheduleId, String? scopeImageScheduleId, String? checklistAnswerId, String? recordId
});




}
/// @nodoc
class __$AttachmentResponseCopyWithImpl<$Res>
    implements _$AttachmentResponseCopyWith<$Res> {
  __$AttachmentResponseCopyWithImpl(this._self, this._then);

  final _AttachmentResponse _self;
  final $Res Function(_AttachmentResponse) _then;

/// Create a copy of AttachmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? documentID = null,Object? name = null,Object? url = null,Object? description = freezed,Object? comments = freezed,Object? isDeleted = null,Object? equipmentId = freezed,Object? scheduleId = freezed,Object? scopeImageScheduleId = freezed,Object? checklistAnswerId = freezed,Object? recordId = freezed,}) {
  return _then(_AttachmentResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,documentID: null == documentID ? _self.documentID : documentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,equipmentId: freezed == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,scopeImageScheduleId: freezed == scopeImageScheduleId ? _self.scopeImageScheduleId : scopeImageScheduleId // ignore: cast_nullable_to_non_nullable
as String?,checklistAnswerId: freezed == checklistAnswerId ? _self.checklistAnswerId : checklistAnswerId // ignore: cast_nullable_to_non_nullable
as String?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

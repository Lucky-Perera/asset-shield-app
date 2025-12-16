import 'dart:convert';

import 'package:asset_shield/features/auth/data/models/user_model.dart';
import 'package:asset_shield/features/home/data/models/record_draft_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  static FlutterSecureStorage get _storage => const FlutterSecureStorage();

  // Storage keys
  static const String _tokenKey = 'Token';
  static const String _userKey = 'User';
  static const String _userIdKey = 'UserId';
  static const String _userObjectKey = 'UserObject';

  // Token methods
  Future<void> saveToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return await _storage.read(key: _tokenKey);
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: _tokenKey);
  }

  Future<void> deleteUser() async {
    await _storage.delete(key: _userKey);
  }

  // User object methods
  Future<void> saveUserObject(UserModel user) async {
    final value = jsonEncode(user.toJson());
    await _storage.write(key: _userObjectKey, value: value);
  }

  Future<UserModel?> getUserObject() async {
    final raw = await _storage.read(key: _userObjectKey);
    if (raw == null) return null;

    try {
      final json = jsonDecode(raw) as Map<String, dynamic>;
      return UserModel.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  Future<void> deleteUserObject() async {
    await _storage.delete(key: _userObjectKey);
  }

  // User ID methods
  Future<void> saveUserId(String userId) async {
    await _storage.write(key: _userIdKey, value: userId);
  }

  Future<String?> getUserId() async {
    final storedId = await _storage.read(key: _userIdKey);
    if (storedId != null) return storedId;

    // Fallback to the saved User object if available
    final user = await getUserObject();
    return user?.id;
  }

  Future<void> deleteUserId() async {
    await _storage.delete(key: _userIdKey);
  }

  // Draft record methods (for saving in-progress records)
  Future<void> saveDraftRecord(String key, String draftJson) async {
    await _storage.write(key: key, value: draftJson);
  }

  Future<String?> getDraftRecord(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> deleteDraftRecord(String key) async {
    await _storage.delete(key: key);
  }

  // Model-based draft record methods
  Future<void> saveDraftRecordModel(
    String scheduleId,
    RecordDraftModel draft,
  ) async {
    final key = _getDraftKey(scheduleId);
    await _storage.write(key: key, value: draft.toJsonString());
  }

  Future<RecordDraftModel?> getDraftRecordModel(String scheduleId) async {
    final key = _getDraftKey(scheduleId);
    final jsonString = await _storage.read(key: key);

    if (jsonString == null || jsonString.isEmpty) {
      return null;
    }

    try {
      return RecordDraftModel.fromJsonString(jsonString);
    } catch (e) {
      // If parsing fails, delete corrupted draft and return null
      await deleteDraftRecord(key);
      return null;
    }
  }

  Future<void> deleteDraftRecordModel(String scheduleId) async {
    final key = _getDraftKey(scheduleId);
    await _storage.delete(key: key);
  }

  String _getDraftKey(String scheduleId) => 'draft_record_$scheduleId';

  // Clear all stored data
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}

import 'dart:convert';

import 'package:asset_shield/features/auth/data/models/user_model.dart';
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

  // Clear all stored data
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}

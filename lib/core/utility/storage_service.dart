import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:asset_shield/features/auth/data/models/user_model.dart';

class StorageService {
  static FlutterSecureStorage get _storage => const FlutterSecureStorage();

  // Storage keys
  static const String _tokenKey = 'Token';
  static const String _userKey = 'User';

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

  // User methods
  Future<void> saveUser(UserModel user) async {
    final userJson = jsonEncode(user.toJson());
    await _storage.write(key: _userKey, value: userJson);
  }

  Future<UserModel?> getUser() async {
    final userJson = await _storage.read(key: _userKey);
    if (userJson != null) {
      return UserModel.fromJson(jsonDecode(userJson));
    }
    return null;
  }

  Future<void> deleteUser() async {
    await _storage.delete(key: _userKey);
  }

  // Clear all stored data
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}

import 'dart:developer';
import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/utility/client.dart';
import 'package:asset_shield/core/utility/helpers.dart';
import 'package:asset_shield/core/utility/storage_service.dart';
import 'package:asset_shield/features/auth/data/models/login_request_model.dart';
import 'package:asset_shield/features/auth/data/models/login_response_model.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthService {
  final Dio _dio = Client.dio;
  final StorageService _storageService = StorageService();

  /// Login with email and password
  Future<LoginResponseModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final requestModel = LoginRequestModel(email: email, password: password);

      final response = await _dio.post(
        '/auth/login',
        data: requestModel.toJson(),
      );

      final loginResponse = LoginResponseModel.fromJson(response.data);

      // Store token and user data
      await _storageService.saveToken(loginResponse.data.accessToken);

      // Decode token and save user ID
      try {
        final decodedToken = JwtDecoder.decode(loginResponse.data.accessToken);
        final userId = decodedToken['sub'] as String?;
        if (userId != null) {
          await _storageService.saveUserId(userId);
          log('User ID saved from token: $userId', name: 'AuthService');
        }
      } catch (e) {
        log('Error decoding token: $e', name: 'AuthService', error: e);
      }

      return loginResponse;
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }

  /// Logout user
  Future<void> logout() async {
    try {
      await _storageService.clearAll();
      Routes().login();
    } catch (e) {
      rethrow;
    }
  }

  /// Check if user is logged in
  Future<bool> isLoggedIn() async {
    final token = await _storageService.getToken();
    return token != null && token.isNotEmpty;
  }

  /// Get current access token
  Future<String?> getAccessToken() async {
    return await _storageService.getToken();
  }

  /// Verify the current access token with the backend
  Future<bool> verifyToken() async {
    try {
      final token = await _storageService.getToken();
      if (token == null) return false;

      final response = await _dio.post(
        '/auth/verify',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      return response.data['success'] == true;
    } catch (e) {
      return false;
    }
  }
}

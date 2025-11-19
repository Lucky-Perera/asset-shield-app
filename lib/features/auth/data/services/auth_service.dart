import 'package:asset_shield/core/utility/client.dart';
import 'package:asset_shield/core/utility/helpers.dart';
import 'package:asset_shield/core/utility/storage_service.dart';
import 'package:asset_shield/features/auth/data/models/login_request_model.dart';
import 'package:asset_shield/features/auth/data/models/login_response_model.dart';
import 'package:dio/dio.dart';

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
      await _storageService.saveUser(loginResponse.data.user);

      return loginResponse;
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }

  /// Logout user
  Future<void> logout() async {
    try {
      await _storageService.clearAll();
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

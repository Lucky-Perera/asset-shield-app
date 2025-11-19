import 'package:asset_shield/core/utility/client.dart';
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
      throw _handleError(e);
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

  /// Handle Dio errors
  String _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timeout. Please try again.';
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        if (statusCode == 401) {
          return 'Invalid credentials. Please try again.';
        } else if (statusCode == 404) {
          return 'Service not found. Please contact support.';
        } else if (statusCode == 500) {
          return 'Server error. Please try again later.';
        }
        return error.response?.data['message'] ?? 'An error occurred';
      case DioExceptionType.cancel:
        return 'Request cancelled';
      case DioExceptionType.connectionError:
        return 'No internet connection';
      default:
        return 'An unexpected error occurred';
    }
  }
}

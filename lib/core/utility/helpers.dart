import 'package:dio/dio.dart';

class Helpers {
  static String handleError(DioException error) {
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
          return error.response?.data['error'] ??
              error.response?.data['message'] ??
              'Resource not found.';
        } else if (statusCode == 500) {
          return 'Server error. Please try again later.';
        }
        return error.response?.data['error'] ??
            'An error occurred. Please try again.';
      case DioExceptionType.cancel:
        return 'Request cancelled';
      case DioExceptionType.connectionError:
        return 'No internet connection';
      default:
        return 'An unexpected error occurred';
    }
  }
}

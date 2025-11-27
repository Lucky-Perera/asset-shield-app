import 'dart:io';

import 'package:dio/dio.dart';
import 'package:permission_handler/permission_handler.dart';

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

  static Future<void> requestInitialPermissions() async {
    if (Platform.isAndroid) {
      // Request broad storage and media-related permissions. On Android 13+
      // scoped media permissions (READ_MEDIA_IMAGES/VIDEO) are used by the
      // platform; requesting storage and camera/microphone covers common cases.
      await [
        Permission.storage,
        Permission.manageExternalStorage,
        Permission.camera,
        Permission.microphone,
      ].request();
    } else if (Platform.isIOS) {
      // Request photo library, camera and microphone on iOS.
      await [
        Permission.photos,
        Permission.camera,
        Permission.microphone,
      ].request();
    }
  }
}

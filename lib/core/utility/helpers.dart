import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
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
      await [Permission.camera].request();
    } else if (Platform.isIOS) {
      // Request photo library and camera on iOS.
      await [
        Permission.photos,
        Permission.camera,
      ].request();
    }
  }

  /// Pick files with error handling
  /// Returns list of File objects or null if user cancelled
  static Future<List<File>?> pickFiles({
    bool allowMultiple = true,
    FileType type = FileType.any,
  }) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        allowMultiple: allowMultiple,
        type: type,
      );

      if (result != null && result.files.isNotEmpty) {
        return result.paths
            .whereType<String>()
            .map((path) => File(path))
            .toList();
      }
      return null;
    } catch (e) {
      debugPrint('File picker error: $e');
      return null;
    }
  }

  /// Show error snackbar
  static void showErrorSnackbar(BuildContext context, String message) {
    if (!context.mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}

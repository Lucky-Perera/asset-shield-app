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
      // Request broad storage and media-related permissions. On Android 13+
      // scoped media permissions (READ_MEDIA_IMAGES/VIDEO) are used by the
      // platform; requesting storage and camera/microphone covers common cases.
      await [
        Permission.storage,
        Permission.manageExternalStorage,
        Permission.camera,
        // Permission.microphone,
      ].request();
    } else if (Platform.isIOS) {
      // Request photo library, camera and microphone on iOS.
      await [
        Permission.photos,
        Permission.camera,
        // Permission.microphone,
      ].request();
    }
  }

  /// Request storage permissions for file operations
  /// Returns true if permissions are granted, false otherwise
  static Future<bool> requestStoragePermissions(BuildContext context) async {
    if (Platform.isAndroid) {
      // Request both storage and manage external storage where available.
      final statuses = await [
        Permission.storage,
        Permission.manageExternalStorage,
      ].request();

      final storageGranted =
          (statuses[Permission.storage]?.isGranted ?? false) ||
          (statuses[Permission.manageExternalStorage]?.isGranted ?? false);

      if (!storageGranted) {
        // Avoid using the provided BuildContext across the async gap above.
        // Confirm the context is still mounted before showing any dialogs.
        if (!context.mounted) return false;

        final shouldOpenSettings = await _showPermissionDialog(
          context,
          title: 'Storage Permission Required',
          message:
              'This app needs storage permission to select files. Would you like to open settings?',
        );

        if (shouldOpenSettings) {
          await openAppSettings();
        }

        return false;
      }
      return true;
    }
    return true; // iOS doesn't need explicit storage permissions for FilePicker
  }

  /// Show permission dialog and return user's choice
  static Future<bool> _showPermissionDialog(
    BuildContext context, {
    required String title,
    required String message,
  }) async {
    return await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(true),
                child: const Text('Open Settings'),
              ),
            ],
          ),
        ) ??
        false;
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

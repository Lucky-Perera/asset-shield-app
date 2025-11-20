import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class ErrorState extends StatelessWidget {
  final Object error;
  final VoidCallback onRetry;

  const ErrorState({super.key, required this.error, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            size: 48,
            color: ColorPalette.grey400,
          ),
          const SizedBox(height: 16),
          Text(
            'Error loading schedules',
            style: TextStyle(fontSize: 16, color: ColorPalette.grey600),
          ),
          const SizedBox(height: 8),
          Text(
            error.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: ColorPalette.grey500),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: onRetry,
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorPalette.black,
              foregroundColor: ColorPalette.white,
            ),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}

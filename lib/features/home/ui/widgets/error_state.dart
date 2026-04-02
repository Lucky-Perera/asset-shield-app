import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
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
            color: ColorPalette.textMuted,
          ),
          const SizedBox(height: 16),
          Text(
            'Error loading schedules',
            style: context.appTextTheme.bodyMedium!.copyWith(
              color: ColorPalette.textSecondary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            error.toString(),
            textAlign: TextAlign.center,
            style: context.appTextTheme.bodySmall!.copyWith(
              color: ColorPalette.textMuted,
            ),
          ),
          const SizedBox(height: 16),
          ReusableButton(
            width: null,
            height: 44,
            borderRadius: AppRadii.sm,
            backgroundColor: ColorPalette.black,
            foregroundColor: ColorPalette.white,
            onPressed: onRetry,
            text: 'Retry',
          ),
        ],
      ),
    );
  }
}

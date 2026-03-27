import 'package:bot_toast/bot_toast.dart';
import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class ToastService {
  static void show(String message) {
    BotToast.showCustomText(
      duration: Duration(seconds: 3),
      onlyOne: true,
      toastBuilder: (_) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: ColorPalette.grey900,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: AppTypography.style(
              size: AppFontSizes.body,
              weight: AppFontWeights.medium,
              color: ColorPalette.textInverse,
            ),
          ),
        ),
      ),
    );
  }
}

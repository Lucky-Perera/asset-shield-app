import 'package:bot_toast/bot_toast.dart';
import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToastService {
  static void show(String message) {
    BotToast.showCustomText(
      duration: Duration(seconds: 3),
      onlyOne: true,
      toastBuilder: (_) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: ColorPalette.toastBackground,
            borderRadius: BorderRadius.circular(20.r),
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

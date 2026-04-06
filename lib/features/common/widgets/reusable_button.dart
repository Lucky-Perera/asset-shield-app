import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_tokens.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/color_palette.dart';

/// A reusable button widget with a black background and rounded corners.
/// Can be customized with different text, callbacks, and optional parameters.
///
/// All dimensional defaults are resolved inside [build] via flutter_screenutil
/// so callers never need to apply `.w`, `.h`, or `.r` themselves.
class ReusableButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  /// Pass an unscaled logical width. Defaults to [double.infinity].
  /// Non-infinite values are automatically scaled with `.w`.
  final double? width;

  /// Pass an unscaled logical height. Defaults to [AppSizes.buttonHeight].
  /// Automatically scaled with `.h` inside build.
  final double? height;

  /// Pass an unscaled logical border radius. Defaults to [AppRadii.sm].
  /// Automatically scaled with `.r` inside build.
  final double? borderRadius;

  final TextStyle? textStyle;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Color? foregroundColor;
  final Color? borderColor;
  final bool isLoading;

  const ReusableButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width,         // ← no raw default; resolved in build
    this.height,        // ← no raw default; resolved in build
    this.borderRadius,  // ← no raw default; resolved in build
    this.textStyle,
    this.backgroundColor,
    this.padding,
    this.foregroundColor,
    this.borderColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedBackgroundColor = backgroundColor ?? ColorPalette.primary;
    final resolvedForegroundColor = foregroundColor ?? ColorPalette.onPrimary;

    // All scaling happens here — callers pass raw logical values only.
    final resolvedWidth =
        width == null || width == double.infinity
            ? double.infinity
            : width!.w;
    final resolvedHeight = (height ?? AppSizes.buttonHeight).h;
    final resolvedBorderRadius = (borderRadius ?? AppRadii.sm).r;
    final resolvedPadding =
        padding ?? EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h);

    final buttonStyle =
        Theme.of(context).elevatedButtonTheme.style ?? const ButtonStyle();

    return SizedBox(
      width: resolvedWidth,
      height: resolvedHeight,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: buttonStyle.copyWith(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return resolvedBackgroundColor.withValues(alpha: 0.5);
            }
            return resolvedBackgroundColor;
          }),
          foregroundColor: WidgetStatePropertyAll(resolvedForegroundColor),
          side: borderColor == null
              ? null
              : WidgetStatePropertyAll(BorderSide(color: borderColor!)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(resolvedBorderRadius),
            ),
          ),
          padding: WidgetStatePropertyAll(resolvedPadding),
        ),
        child: isLoading
            ? SizedBox(
                width: 20.r,
                height: 20.r,
                child: CircularProgressIndicator(
                  strokeWidth: 2.w,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    resolvedForegroundColor,
                  ),
                ),
              )
            : FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  text,
                  maxLines: 1,
                  style:
                      textStyle ??
                      context.appTextTheme.titleSmall!.copyWith(
                        color: resolvedForegroundColor,
                      ),
                ),
              ),
      ),
    );
  }
}
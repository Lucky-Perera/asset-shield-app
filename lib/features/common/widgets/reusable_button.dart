import 'package:flutter/material.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/color_palette.dart';

/// A reusable button widget with a black background and rounded corners.
/// Can be customized with different text, callbacks, and optional parameters.
class ReusableButton extends StatelessWidget {
  /// The text to display on the button
  final String text;

  /// Callback function when button is pressed
  final VoidCallback? onPressed;

  /// Optional width of the button. If null, takes full width of parent
  final double? width;

  /// Optional height of the button. Defaults to 50
  final double height;

  /// Optional border radius. Defaults to 8
  final double borderRadius;

  /// Optional text style. If null, uses default white text
  final TextStyle? textStyle;

  /// Optional background color. Defaults to ColorPalette.black
  final Color? backgroundColor;

  /// Optional padding inside the button. Defaults to horizontal 24, vertical 12
  final EdgeInsetsGeometry? padding;

  /// Optional loading state to show a circular progress indicator
  final bool isLoading;

  const ReusableButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width = double.infinity,
    this.height = 50,
    this.borderRadius = 8,
    this.textStyle,
    this.backgroundColor,
    this.padding,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedBackgroundColor = backgroundColor ?? ColorPalette.primary;
    final buttonStyle =
        Theme.of(context).elevatedButtonTheme.style ?? const ButtonStyle();

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: buttonStyle.copyWith(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return resolvedBackgroundColor.withValues(alpha: 0.5);
            }
            return resolvedBackgroundColor;
          }),
          foregroundColor: const WidgetStatePropertyAll(ColorPalette.onPrimary),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          padding: WidgetStatePropertyAll(
            padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(ColorPalette.white),
                ),
              )
            : Text(
                text,
                style:
                    textStyle ??
                    AppTextStyles.button(
                      context,
                    ).copyWith(color: ColorPalette.onPrimary),
              ),
      ),
    );
  }
}

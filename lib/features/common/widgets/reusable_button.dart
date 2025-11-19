import 'package:flutter/material.dart';
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
    this.width,
    this.height = 50,
    this.borderRadius = 8,
    this.textStyle,
    this.backgroundColor,
    this.padding,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? ColorPalette.black,
          foregroundColor: ColorPalette.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding:
              padding ??
              const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          elevation: 0,
          disabledBackgroundColor: (backgroundColor ?? ColorPalette.black)
              .withValues(alpha: 0.5),
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
                    const TextStyle(
                      color: ColorPalette.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
              ),
      ),
    );
  }
}

import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleErrorState extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onRetry;

  const ScheduleErrorState({
    super.key,
    required this.errorMessage,
    required this.onRetry,
  });

  bool _isNotFoundError() {
    return errorMessage.toLowerCase().contains('not found');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            _isNotFoundError() ? Icons.info_outline : Icons.error_outline,
            size: 48.r,
            color: _isNotFoundError()
                ? ColorPalette.warning
                : ColorPalette.error,
          ),
          SizedBox(height: 16.h),
          if (!_isNotFoundError())
            Text(
              'Error loading scope details',
              style: context.appTextTheme.titleMedium!.copyWith(
                color: ColorPalette.error,
              ),
            ),
          SizedBox(height: _isNotFoundError() ? 0 : 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: context.appTextTheme.bodyMedium!.copyWith(
                color: _isNotFoundError() ? ColorPalette.textSecondary : null,
              ),
            ),
          ),
          if (!_isNotFoundError()) ...[
            SizedBox(height: 16.h),
            ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
          ],
        ],
      ),
    );
  }
}

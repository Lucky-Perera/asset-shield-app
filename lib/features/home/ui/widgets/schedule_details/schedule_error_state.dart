import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

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
            size: 48,
            color: _isNotFoundError() ? Colors.orange : Colors.red,
          ),
          const SizedBox(height: 16),
          if (!_isNotFoundError())
            Text(
              'Error loading scope details',
              style: AppTextStyles.h2(context).copyWith(color: Colors.red),
            ),
          SizedBox(height: _isNotFoundError() ? 0 : 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: AppTextStyles.base(context).copyWith(
                color: _isNotFoundError() ? Colors.grey.shade700 : null,
              ),
            ),
          ),
          if (!_isNotFoundError()) ...[
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('Retry'),
            ),
          ],
        ],
      ),
    );
  }
}

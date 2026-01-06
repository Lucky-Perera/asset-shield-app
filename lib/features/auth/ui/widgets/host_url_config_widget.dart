import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:asset_shield/features/common/widgets/reusable_text_field.dart';

/// Widget for configuring custom host URL (e.g., ngrok URLs for development)
/// Provides a collapsible section with URL input and validation
class HostUrlConfigWidget extends StatefulWidget {
  final TextEditingController controller;
  final bool isLoading;
  final bool initiallyExpanded;

  const HostUrlConfigWidget({
    super.key,
    required this.controller,
    this.isLoading = false,
    this.initiallyExpanded = false,
  });

  @override
  State<HostUrlConfigWidget> createState() => _HostUrlConfigWidgetState();
}

class _HostUrlConfigWidgetState extends State<HostUrlConfigWidget> {
  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  String? _validateUrl(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null; // Optional field
    }
    final urlPattern = RegExp(r'^https?://.+', caseSensitive: false);
    if (!urlPattern.hasMatch(value.trim())) {
      return 'Enter a valid URL starting with http:// or https://';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Toggle Button
        Align(
          alignment: Alignment.centerRight,
          child: TextButton.icon(
            onPressed: widget.isLoading ? null : _toggleExpansion,
            icon: Icon(
              _isExpanded ? Icons.keyboard_arrow_up : Icons.settings,
              size: 18.sp,
            ),
            label: Text(
              _isExpanded ? 'Hide URL Config' : 'Custom URL',
              style: TextStyle(fontSize: 12.sp),
            ),
          ),
        ),

        // Host URL Field (conditionally displayed)
        if (_isExpanded) ...[
          SizedBox(height: 8.h),
          ReusableTextField(
            controller: widget.controller,
            labelText: 'Custom Host URL (optional)',
            hintText: 'https://your-ngrok-url.ngrok-free.app',
            keyboardType: TextInputType.url,
            textInputAction: TextInputAction.next,
            prefixIcon: const Icon(Icons.cloud_outlined),
            enabled: !widget.isLoading,
            validator: _validateUrl,
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Text(
              'Enter base URL only. "/api/mobile" will be added automatically.\nLeave empty to use default localhost.',
              style: TextStyle(
                fontSize: 11.sp,
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ],
    );
  }
}

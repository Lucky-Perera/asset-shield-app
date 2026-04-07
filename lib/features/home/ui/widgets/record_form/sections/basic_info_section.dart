import 'package:asset_shield/features/common/widgets/form_date_field.dart';
import 'package:asset_shield/features/common/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasicInfoSection extends StatelessWidget {
  final TextEditingController equipmentController;
  final TextEditingController descriptionController;
  final TextEditingController scheduleItemController;
  final DateTime? recordCreatedDate;
  final bool isReadOnly;
  final Function(DateTime) onDateSelected;

  const BasicInfoSection({
    super.key,
    required this.equipmentController,
    required this.descriptionController,
    required this.scheduleItemController,
    required this.recordCreatedDate,
    required this.isReadOnly,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FormTextField(
          label: 'Equipment',
          hint: 'Enter equipment',
          controller: equipmentController,
          enabled: false,
        ),
        SizedBox(height: 20.h),
        FormTextField(
          label: 'Description',
          hint: 'Enter description',
          controller: descriptionController,
          isRequired: !isReadOnly,
          enabled: !isReadOnly,
          maxLines: 4,
          minLines: 3,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter description';
            }
            return null;
          },
        ),
        SizedBox(height: 20.h),
        FormTextField(
          label: 'Schedule Item',
          hint: ' ',
          controller: scheduleItemController,
          enabled: false,
        ),
        SizedBox(height: 20.h),
        FormDateField(
          label: 'Record created date',
          selectedDate: recordCreatedDate,
          isRequired: !isReadOnly,
          readOnly: isReadOnly,
          onDateSelected: onDateSelected,
        ),
      ],
    );
  }
}

import 'package:asset_shield/features/common/widgets/form_date_field.dart';
import 'package:asset_shield/features/common/widgets/form_multi_select_field.dart';
import 'package:asset_shield/features/common/widgets/form_text_field.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InspectionInfoSection extends StatelessWidget {
  final List<String> selectedInspectedComponents;
  final List<MultiSelectItem<String>> componentItems;
  final TextEditingController scheduleTypeController;
  final DateTime? inspectionDate;
  final TextEditingController actionCreatedController;
  final TextEditingController commentsController;
  final bool isReadOnly;
  final Function(DateTime) onInspectionDateSelected;
  final Function(List<String>) onComponentsChanged;
  final ScheduleV2Response schedule;

  const InspectionInfoSection({
    super.key,
    required this.selectedInspectedComponents,
    required this.componentItems,
    required this.scheduleTypeController,
    required this.inspectionDate,
    required this.actionCreatedController,
    required this.commentsController,
    required this.isReadOnly,
    required this.onInspectionDateSelected,
    required this.onComponentsChanged,
    required this.schedule,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FormMultiSelectField<String>(
          label: 'Inspected components',
          hint: 'Select components',
          selectedValues: selectedInspectedComponents,
          isRequired: !isReadOnly,
          items: componentItems,
          itemLabel: (componentId) {
            final component = schedule.components
                .firstWhere((sc) => sc.componentId == componentId)
                .component;
            return component.name;
          },
          onChanged: (values) {
            if (!isReadOnly) {
              onComponentsChanged(values);
            }
          },
          validator: isReadOnly
              ? (_) => null
              : (values) {
                  if (values == null || values.isEmpty) {
                    return 'Please select at least one component';
                  }
                  return null;
                },
          readOnly: isReadOnly,
        ),
        SizedBox(height: 20.h),
        FormTextField(
          label: 'Schedule Type',
          hint: ' ',
          controller: scheduleTypeController,
          enabled: false,
        ),
        SizedBox(height: 20.h),
        FormDateField(
          label: 'Inspection Date',
          selectedDate: inspectionDate,
          isRequired: !isReadOnly,
          readOnly: isReadOnly,
          onDateSelected: onInspectionDateSelected,
        ),
        SizedBox(height: 20.h),
        FormTextField(
          label: 'Action Created',
          hint: 'Enter action created',
          controller: actionCreatedController,
          isRequired: !isReadOnly,
          enabled: !isReadOnly,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter action created';
            }
            return null;
          },
        ),
        SizedBox(height: 20.h),
        FormTextField(
          label: 'Comments',
          hint: 'Enter comments',
          controller: commentsController,
          maxLines: 4,
          enabled: !isReadOnly,
          minLines: 3,
        ),
      ],
    );
  }
}

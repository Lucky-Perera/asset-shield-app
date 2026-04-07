import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'schedule_form_primitives.dart';

/// A reusable multi-select field widget with consistent styling
class FormMultiSelectField<T> extends StatelessWidget {
  final String label;
  final String? hint;
  final List<T> selectedValues;
  final List<MultiSelectItem<T>> items;
  final ValueChanged<List<T>> onChanged;
  final String? Function(List<T>?)? validator;
  final bool isRequired;
  final String Function(T) itemLabel;
  final bool readOnly;

  const FormMultiSelectField({
    super.key,
    required this.label,
    this.hint,
    required this.selectedValues,
    required this.items,
    required this.onChanged,
    required this.itemLabel,
    this.validator,
    this.isRequired = false,
    required this.readOnly,
  });

  Future<void> _showMultiSelectDialog(
    BuildContext context,
    FormFieldState<List<T>> state,
  ) async {
    final List<T> tempSelected = List.from(state.value ?? selectedValues);
    final scheduleTheme = context.scheduleTheme;

    await showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: scheduleTheme.cardBackground,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(scheduleTheme.radius.r),
              ),
              title: Text(
                label,
                style: ScheduleTextStyles.title(
                  context,
                  size: AppFontSizes.caption,
                ),
              ),
              titlePadding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 0),
              contentPadding: EdgeInsets.only(top: 8.h),
              content: SizedBox(
                width: double.maxFinite,
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    final isSelected = tempSelected.contains(item.value);

                    return CheckboxListTile(
                      value: isSelected,
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -4),
                      contentPadding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 0),
                      title: Text(
                        item.label,
                        style: ScheduleTextStyles.value(
                          context,
                          size: AppFontSizes.caption,
                        ),
                      ),
                      activeColor: scheduleTheme.paginationActive,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool? checked) {
                        setState(() {
                          if (checked == true) {
                            tempSelected.add(item.value);
                          } else {
                            tempSelected.remove(item.value);
                          }
                        });
                      },
                    );
                  },
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => router.pop(),
                  child: Text(
                    'Cancel',
                    style: ScheduleTextStyles.value(
                      context,
                      size: AppFontSizes.caption,
                      color: ColorPalette.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Update external value and form field state so validator sees change
                    onChanged(tempSelected);
                    state.didChange(tempSelected);
                    router.pop();
                  },
                  child: Text(
                    'Done',
                    style: ScheduleTextStyles.label(
                      context,
                      size: AppFontSizes.caption,
                      color: scheduleTheme.draftTone.foreground,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final displayText = selectedValues.isEmpty
        ? hint ?? 'Select items'
        : selectedValues.map((v) => itemLabel(v)).join(', ');
    final scheduleTheme = context.scheduleTheme;

    return ScheduleFieldSection(
      label: label,
      isRequired: isRequired,
      child: FormField<List<T>>(
        validator: validator,
        initialValue: selectedValues,
        builder: (FormFieldState<List<T>> state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: readOnly
                    ? null
                    : () => _showMultiSelectDialog(context, state),
                borderRadius: BorderRadius.circular(
                  scheduleTheme.radius.r,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 15.h,
                  ),
                  decoration: ScheduleFormDecorations.container(
                    context,
                    enabled: !readOnly,
                    hasError: state.hasError,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          displayText,
                          style: selectedValues.isEmpty
                              ? ScheduleTextStyles.hint(
                                  context,
                                  size: AppFontSizes.caption,
                                )
                              : ScheduleTextStyles.value(
                                  context,
                                  size: AppFontSizes.caption,
                                  color: readOnly
                                      ? scheduleTheme.secondaryText
                                      : scheduleTheme.primaryText,
                                ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: readOnly
                            ? scheduleTheme.secondaryText
                            : scheduleTheme.icon,
                        size: AppSizes.fieldIcon.sp,
                      ),
                    ],
                  ),
                ),
              ),
              if (state.hasError)
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 8.h),
                  child: Text(
                    state.errorText ?? '',
                    style: ScheduleTextStyles.caption(
                      context,
                      size: AppFontSizes.caption,
                      color: ColorPalette.error,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

/// A model class for multi-select items
class MultiSelectItem<T> {
  final T value;
  final String label;

  const MultiSelectItem({required this.value, required this.label});
}

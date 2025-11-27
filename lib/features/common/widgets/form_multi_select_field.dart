import 'package:asset_shield/core/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/color_palette.dart';

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
  });

  Future<void> _showMultiSelectDialog(
    BuildContext context,
    FormFieldState<List<T>> state,
  ) async {
    final List<T> tempSelected = List.from(state.value ?? selectedValues);

    await showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text(label),
              contentPadding: EdgeInsets.only(top: 16.h),
              content: SizedBox(
                width: double.maxFinite,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    final isSelected = tempSelected.contains(item.value);

                    return CheckboxListTile(
                      value: isSelected,
                      title: Text(item.label),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Colors.blue,
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
                    style: TextStyle(color: ColorPalette.grey600),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Update external value and form field state so validator sees change
                    onChanged(tempSelected);
                    state.didChange(tempSelected);
                    router.pop();
                  },
                  child: const Text('Done'),
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 14.sp,
              color: ColorPalette.black,
              fontWeight: FontWeight.w500,
            ),
            children: [
              if (isRequired)
                const TextSpan(
                  text: '* ',
                  style: TextStyle(color: Colors.red),
                ),
              TextSpan(text: label),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        FormField<List<T>>(
          validator: validator,
          initialValue: selectedValues,
          builder: (FormFieldState<List<T>> state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => _showMultiSelectDialog(context, state),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 14.h,
                    ),
                    decoration: BoxDecoration(
                      color: ColorPalette.white,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: state.hasError
                            ? Colors.red
                            : ColorPalette.grey300,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            displayText,
                            style: TextStyle(
                              color: selectedValues.isEmpty
                                  ? ColorPalette.grey400
                                  : ColorPalette.black,
                              fontSize: 14.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: ColorPalette.grey400,
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
                      style: TextStyle(color: Colors.red, fontSize: 12.sp),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}

/// A model class for multi-select items
class MultiSelectItem<T> {
  final T value;
  final String label;

  const MultiSelectItem({required this.value, required this.label});
}

import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionTile extends StatefulWidget {
  final ChecklistQuestionV2 question;
  final Function(String questionId, String value, String note)? onAnswerChanged;
  final bool readOnly;
  final String? initialValue;
  final String? initialNote;

  const QuestionTile({
    super.key,
    required this.question,
    this.onAnswerChanged,
    this.readOnly = false,
    this.initialValue,
    this.initialNote,
  }) : assert(
         !readOnly || onAnswerChanged == null,
         'onAnswerChanged must be null when readOnly is true',
       );

  @override
  State<QuestionTile> createState() => _QuestionTileState();
}

class _QuestionTileState extends State<QuestionTile> {
  late TextEditingController _noteController;
  String? _selectedValue;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _noteController = TextEditingController(
      text: widget.initialNote ?? widget.question.note ?? '',
    );
    _selectedValue = widget.initialValue ?? widget.question.value;
  }

  @override
  void didUpdateWidget(QuestionTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update values if they changed
    if (widget.initialValue != oldWidget.initialValue) {
      _selectedValue = widget.initialValue ?? widget.question.value;
    }
    if (widget.initialNote != oldWidget.initialNote) {
      _noteController.text = widget.initialNote ?? widget.question.note ?? '';
    }
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  void _onValueSelected(String value) {
    if (widget.readOnly) return;

    setState(() {
      _selectedValue = value;
    });
    if (widget.onAnswerChanged != null) {
      widget.onAnswerChanged!(widget.question.id!, value, _noteController.text);
    }
  }

  void _onNoteChanged() {
    if (widget.readOnly) return;

    if (widget.onAnswerChanged != null && _selectedValue != null) {
      widget.onAnswerChanged!(
        widget.question.id!,
        _selectedValue!,
        _noteController.text,
      );
    }
  }

  List<ResponseValue> _getResponseOptions() {
    if (widget.question.responseType == ResponseType.yesNo) {
      return [ResponseValue.yes, ResponseValue.no];
    } else {
      return [
        ResponseValue.good,
        ResponseValue.fair,
        ResponseValue.poor,
        ResponseValue.na,
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    // Debug: Print the readOnly state
    if (widget.readOnly) {
      debugPrint(
        '>>> QuestionTile ${widget.question.id} is READ-ONLY with value: $_selectedValue',
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      color: ColorPalette.whiteSwatch.shade700,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: _isExpanded,
          onExpansionChanged: (expanded) {
            setState(() {
              _isExpanded = expanded;
            });
          },
          title: Text(
            widget.question.question ?? '',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          childrenPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 8.h,
          ),
          children: [
            if ((widget.question.helpText ?? '').isNotEmpty)
              Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: Text(
                  widget.question.helpText ?? '',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: ColorPalette.black.withValues(alpha: 0.7),
                  ),
                ),
              ),

            // Response buttons
            Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: _getResponseOptions().map((option) {
                  final isSelected = _selectedValue == option.apiValue;
                  return ChoiceChip(
                    label: Text(option.displayName),
                    selected: isSelected,
                    onSelected: widget.readOnly
                        ? null
                        : (_) => _onValueSelected(option.apiValue),
                    selectedColor: ColorPalette.primary,
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : ColorPalette.black,
                      fontSize: 13.sp,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                    backgroundColor: ColorPalette.whiteSwatch.shade600,
                    side: BorderSide(
                      color: isSelected
                          ? ColorPalette.primary
                          : ColorPalette.black.withValues(alpha: 0.2),
                    ),
                  );
                }).toList(),
              ),
            ),

            // Note text field
            TextField(
              controller: _noteController,
              onChanged: widget.readOnly ? null : (_) => _onNoteChanged(),
              enabled: !widget.readOnly,
              decoration: InputDecoration(
                labelText: 'Note',
                hintText: widget.readOnly ? '' : 'Add a note...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 12.h,
                ),
              ),
              maxLines: 3,
              style: TextStyle(fontSize: 13.sp),
            ),

            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}

import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/checklist/question_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionTile extends StatelessWidget {
  final String title;
  final List<ChecklistQuestionV2> items;
  final Function(String questionId, String value, String note)? onAnswerChanged;
  final bool readOnly;
  final Map<String, Map<String, String>>? initialValues;

  const SectionTile({
    super.key,
    required this.title,
    required this.items,
    this.onAnswerChanged,
    this.readOnly = false,
    this.initialValues,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorPalette.whiteSwatch.shade200,
      // margin: EdgeInsets.only(bottom: 12.h),
      // elevation: 0,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          // tilePadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          title: Text(title, style: AppTextStyles.h2(context)),
          children: items.map((q) {
            final questionId = q.id ?? '';
            final initial = initialValues?[questionId];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: QuestionTile(
                key: ValueKey(questionId),
                question: q,
                onAnswerChanged: readOnly ? null : onAnswerChanged,
                readOnly: readOnly,
                initialValue: initial?['value'],
                initialNote: initial?['note'],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

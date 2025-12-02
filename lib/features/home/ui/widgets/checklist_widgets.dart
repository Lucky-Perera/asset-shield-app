import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';

class ChecklistSections extends StatelessWidget {
  final List<ChecklistQuestionV2> questions;
  const ChecklistSections({super.key, required this.questions});

  List<ChecklistQuestionV2> _filter(String type) => questions
      .where(
        (q) => (q.inspectionType ?? '').toLowerCase() == type.toLowerCase(),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    final internal = _filter('INTERNAL');
    final external = _filter('EXTERNAL');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (internal.isNotEmpty)
          _SectionTile(title: 'Internal', items: internal),
        if (external.isNotEmpty)
          _SectionTile(title: 'External', items: external),
      ],
    );
  }
}

class _SectionTile extends StatelessWidget {
  final String title;
  final List<ChecklistQuestionV2> items;
  const _SectionTile({required this.title, required this.items});

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
          children: items
              .map(
                (q) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: _QuestionTile(question: q),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _QuestionTile extends StatelessWidget {
  final ChecklistQuestionV2 question;
  const _QuestionTile({required this.question});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      color: ColorPalette.whiteSwatch.shade700,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(
            question.question ?? '',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          childrenPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 8.h,
          ),
          children: [
            if ((question.helpText ?? '').isNotEmpty)
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text(
                  question.helpText ?? '',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: ColorPalette.black.withValues(alpha: 0.7),
                  ),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'Value: ${question.value ?? '-'}',
                    style: TextStyle(fontSize: 13.sp),
                  ),
                ),
                SizedBox(width: 12.w),
                Flexible(
                  child: Text(
                    'Note: ${question.note ?? '-'}',
                    style: TextStyle(fontSize: 13.sp),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

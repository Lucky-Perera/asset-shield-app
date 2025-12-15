import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/data/providers/record_with_checklist_provider.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/inspection_methods_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/potential_emergent_works_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_info_card.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/scope_overview_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleDetailsScreen extends ConsumerStatefulWidget {
  final ScheduleV2Response schedule;
  const ScheduleDetailsScreen({super.key, required this.schedule});

  @override
  ConsumerState<ScheduleDetailsScreen> createState() =>
      _ScheduleDetailsScreenState();
}

class _ScheduleDetailsScreenState extends ConsumerState<ScheduleDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final recordWithChecklistAsync = ref.watch(
      recordWithChecklistProvider(widget.schedule.id),
    );
    final state = recordWithChecklistAsync.value;
    final hasSubmittedAnswers = state?.hasSubmittedAnswers ?? false;
    final isRejected = state?.record?.status == RecordStatus.rejected;

    // Show/hide loading indicator based on async state
    if (recordWithChecklistAsync.isLoading &&
        !recordWithChecklistAsync.hasValue) {
      EasyLoading.show();
    } else {
      EasyLoading.dismiss();
    }

    return SafeArea(
      child: AppScaffold(
        appBar: AppBar(
          backgroundColor: ColorPalette.white,
          title: Text(
            'Schedule Details',
            style: AppTextStyles.h2(
              context,
            ).copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        body: _buildBody(hasSubmittedAnswers, isRejected),
      ),
    );
  }

  Widget _buildBody(bool hasSubmittedAnswers, bool isRejected) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScheduleInfoCard(schedule: widget.schedule),
          SizedBox(height: 16.h),
          ScopeOverviewCard(schedule: widget.schedule),
          SizedBox(height: 16.h),
          InspectionMethodsSection(
            inspectionMethods: widget.schedule.inspectionMethods,
          ),
          SizedBox(height: 16.h),
          PotentialEmergentWorksSection(
            potentialEmergentWorks: widget.schedule.potentialEmergentWorks,
          ),
          SizedBox(height: 16.h),
          ReusableButton(
            text: isRejected
                ? 'Edit Record'
                : (hasSubmittedAnswers ? 'View Record' : 'Add Record'),
            onPressed: () => Routes().addRecord(widget.schedule),
          ),
        ],
      ),
    );
  }
}

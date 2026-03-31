import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/data/providers/record_with_checklist_provider.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/inspection_methods_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/potential_emergent_works_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_info_card.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/scope_overview_card.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_ui/schedule_surface.dart';
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
    final recordStatus = recordWithChecklistAsync.value?.record?.status;
    final scheduleTheme = context.scheduleTheme;

    if (recordWithChecklistAsync.isLoading &&
        !recordWithChecklistAsync.hasValue) {
      EasyLoading.show();
    } else {
      EasyLoading.dismiss();
    }

    return SafeArea(
      child: AppScaffold(
        backgroundColor: scheduleTheme.pageBackground,
        appBar: SchedulePageAppBar(
          title: 'Schedule Details',
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          onLeadingPressed: () => router.pop(),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(24.w, 12.h, 24.w, 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScheduleInfoCard(schedule: widget.schedule),
              SizedBox(height: 18.h),
              ScopeOverviewCard(schedule: widget.schedule),
              SizedBox(height: 18.h),
              InspectionMethodsSection(
                inspectionMethods: widget.schedule.inspectionMethods,
              ),
              SizedBox(height: 18.h),
              PotentialEmergentWorksSection(
                potentialEmergentWorks: widget.schedule.potentialEmergentWorks,
              ),
            ],
          ),
        ),
        bottomNavigationBar: ScheduleBottomBar(
          child: ReusableButton(
            text: _buttonText(recordStatus),
            onPressed: () => Routes().addRecord(widget.schedule),
            height: 64.h,
            borderRadius: 18.r,
            backgroundColor: scheduleTheme.paginationActive,
            foregroundColor: scheduleTheme.cardBackground,
          ),
        ),
      ),
    );
  }

  String _buttonText(RecordStatus? recordStatus) {
    if (recordStatus == RecordStatus.draft) {
      return 'Edit Draft';
    }
    if (recordStatus == RecordStatus.rejected) {
      return 'Edit Record';
    }
    if (recordStatus == RecordStatus.pendingApproval ||
        recordStatus == RecordStatus.approved) {
      return 'View Record';
    }
    return 'Add Record';
  }
}

import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/data/providers/checklist_provider.dart';
import 'package:asset_shield/features/home/data/providers/record_provider.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/inspection_methods_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/potential_emergent_works_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_info_card.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/scope_overview_card.dart';
import 'package:flutter/material.dart';
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
    ref.watch(recordProvider(widget.schedule.id));
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
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    final checklistState = ref
        .watch(checklistProvider(widget.schedule.id))
        .value;

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
            text: (checklistState?.answersAlreadySubmitted ?? false)
                ? 'View Record'
                : 'Add Record',
            onPressed: () => Routes().addRecord(widget.schedule),
          ),
        ],
      ),
    );
  }
}

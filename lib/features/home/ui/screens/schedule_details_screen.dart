import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/data/providers/checklist_provider.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/inspection_methods_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/potential_emergent_works_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_error_state.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_info_card.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/scope_overview_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleDetailsScreen extends ConsumerStatefulWidget {
  final ScheduleV2 schedule;
  const ScheduleDetailsScreen({super.key, required this.schedule});

  @override
  ConsumerState<ScheduleDetailsScreen> createState() =>
      _ScheduleDetailsScreenState();
}

class _ScheduleDetailsScreenState extends ConsumerState<ScheduleDetailsScreen> {
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _fetchScopeDetails();
  }

  Future<void> _fetchScopeDetails() async {
    setState(() {
      _errorMessage = null;
    });
    EasyLoading.show();

    try {
      // final response = await _scheduleService.fetchScopeDetailsByScheduleId(
      //   widget.schedule.id,
      // );
      // setState(() {
      //   _scopeData = response?.data;
      // });
      EasyLoading.dismiss();
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
      EasyLoading.dismiss();
    }
  }

  @override
  Widget build(BuildContext context) {
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
    final checklistState = ref.watch(checklistProvider(widget.schedule.id));

    if (_errorMessage != null) {
      return ScheduleErrorState(
        errorMessage: _errorMessage!,
        onRetry: _fetchScopeDetails,
      );
    }

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
            text: checklistState.answersAlreadySubmitted
                ? 'View Record'
                : 'Add Record',
            onPressed: () => Routes().addRecord(widget.schedule),
          ),
        ],
      ),
    );
  }
}

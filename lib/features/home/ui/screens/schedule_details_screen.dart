import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/inspection_methods_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/potential_emergent_works_section.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_error_state.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleDetailsScreen extends StatefulWidget {
  final ScheduleV2 schedule;
  const ScheduleDetailsScreen({super.key, required this.schedule});

  @override
  State<ScheduleDetailsScreen> createState() => _ScheduleDetailsScreenState();
}

class _ScheduleDetailsScreenState extends State<ScheduleDetailsScreen> {
  // final SheduleService _scheduleService = SheduleService();
  String? _errorMessage;
  // Scope? _scopeData;

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
          // ScopeOverviewCard(scopeData: _scopeData!),
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
            text: 'Add Record',
            onPressed: () => Routes().addRecord(widget.schedule),
          ),
        ],
      ),
    );
  }
}

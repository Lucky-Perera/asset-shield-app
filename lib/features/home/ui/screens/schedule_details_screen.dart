import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/home/data/models/schedule_response.dart';
import 'package:asset_shield/features/home/data/models/scope_model.dart';
import 'package:asset_shield/features/home/data/services/shedule_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ScheduleDetailsScreen extends StatefulWidget {
  final Schedule schedule;
  const ScheduleDetailsScreen({super.key, required this.schedule});

  @override
  State<ScheduleDetailsScreen> createState() => _ScheduleDetailsScreenState();
}

class _ScheduleDetailsScreenState extends State<ScheduleDetailsScreen> {
  final SheduleService _scheduleService = SheduleService();
  String? _errorMessage;
  Scope? _scopeData;

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
      final response = await _scheduleService.fetchScopeDetailsByScheduleId(
        widget.schedule.id,
      );
      setState(() {
        _scopeData = response?.data;
      });
      EasyLoading.dismiss();
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
      EasyLoading.dismiss();
    }
  }

  bool _isNotFoundError() {
    return _errorMessage?.toLowerCase().contains('not found') ?? false;
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
      return _buildErrorState();
    }

    if (_scopeData == null) {
      return _buildEmptyState();
    }

    return _buildScopeContent();
  }

  Widget _buildErrorState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            _isNotFoundError() ? Icons.info_outline : Icons.error_outline,
            size: 48,
            color: _isNotFoundError() ? Colors.orange : Colors.red,
          ),
          const SizedBox(height: 16),
          if (!_isNotFoundError())
            Text(
              'Error loading scope details',
              style: AppTextStyles.h2(context).copyWith(color: Colors.red),
            ),
          SizedBox(height: _isNotFoundError() ? 0 : 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              _errorMessage!,
              textAlign: TextAlign.center,
              style: AppTextStyles.base(context).copyWith(
                color: _isNotFoundError() ? Colors.grey.shade700 : null,
              ),
            ),
          ),
          if (!_isNotFoundError()) ...[
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _fetchScopeDetails,
              child: const Text('Retry'),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Text('No scope data available', style: AppTextStyles.h2(context)),
    );
  }

  Widget _buildScopeContent() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildScheduleInfoCard(),
          const SizedBox(height: 16),
          _buildScopeOverviewCard(),
          const SizedBox(height: 16),
          _buildInspectionMethodsSection(),
          const SizedBox(height: 16),
          _buildPotentialEmergentWorksSection(),
        ],
      ),
    );
  }

  Widget _buildScheduleInfoCard() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader('Schedule Information'),
            const SizedBox(height: 12),
            ..._buildScheduleInfoRows(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildScheduleInfoRows() {
    return [
      _buildInfoRow('Schedule ID:', widget.schedule.scheduleID),
      _buildInfoRow('Description:', widget.schedule.description),
      _buildInfoRow('Status:', widget.schedule.status),
      _buildInfoRow(
        'Due Date:',
        '${widget.schedule.dueDate.day}/${widget.schedule.dueDate.month}/${widget.schedule.dueDate.year}',
      ),
      if (widget.schedule.equipment?.name != null)
        _buildInfoRow('Equipment:', widget.schedule.equipment!.name!),
    ];
  }

  Widget _buildScopeOverviewCard() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader('Scope Overview'),
            const SizedBox(height: 12),
            ..._buildScopeOverviewRows(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildScopeOverviewRows() {
    return [
      _buildInfoRow('Damage Mechanism:', _scopeData!.damageMechanism),
      _buildInfoRow(
        'Inspection Effectiveness:',
        _scopeData!.inspectionEffectiveness,
      ),
      _buildInfoRow('Scope ID:', _scopeData!.id),
    ];
  }

  Widget _buildInspectionMethodsSection() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeaderWithCount(
              'Inspection Methods',
              _scopeData!.inspectionMethods.length,
            ),
            const SizedBox(height: 16),
            if (_scopeData!.inspectionMethods.isEmpty)
              _buildEmptyMessage('No inspection methods available')
            else
              ...List.generate(
                _scopeData!.inspectionMethods.length,
                (index) => _buildInspectionMethodCard(
                  _scopeData!.inspectionMethods[index],
                  index + 1,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildInspectionMethodCard(InspectionMethod method, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorPalette.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: ColorPalette.primary,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  '#$index',
                  style: AppTextStyles.label(context).copyWith(
                    color: ColorPalette.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  method.method.value,
                  style: AppTextStyles.base(
                    context,
                  ).copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _buildMethodDetail('Location', method.location),
          _buildMethodDetail('Special Access', method.specialAccess.value),
          _buildMethodDetail(
            'Insulation Removal',
            method.insulationRemoval.value,
          ),
          _buildMethodDetail('Cleaning', method.cleaning.value),
          if (method.notes.isNotEmpty)
            _buildMethodDetail('Notes', method.notes),
        ],
      ),
    );
  }

  Widget _buildMethodDetail(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: AppTextStyles.label(
                context,
              ).copyWith(color: Colors.grey.shade700),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: AppTextStyles.label(
                context,
              ).copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPotentialEmergentWorksSection() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeaderWithCount(
              'Potential Emergent Works',
              _scopeData!.potentialEmergentWorks.length,
            ),
            const SizedBox(height: 16),
            if (_scopeData!.potentialEmergentWorks.isEmpty)
              _buildEmptyMessage('No potential emergent works')
            else
              ...List.generate(
                _scopeData!.potentialEmergentWorks.length,
                (index) => _buildEmergentWorkCard(
                  _scopeData!.potentialEmergentWorks[index],
                  index + 1,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmergentWorkCard(PotentialEmergentWork work, int index) {
    Color likelihoodColor = _getLikelihoodColor(work.likelihood.value);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorPalette.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: likelihoodColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  '#$index',
                  style: AppTextStyles.label(context).copyWith(
                    color: likelihoodColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  work.potentialEmergentWork.value,
                  style: AppTextStyles.base(
                    context,
                  ).copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text(
                'Likelihood: ',
                style: AppTextStyles.label(
                  context,
                ).copyWith(color: Colors.grey.shade700),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: likelihoodColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  work.likelihood.value,
                  style: AppTextStyles.label(context).copyWith(
                    color: ColorPalette.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          if (work.notes.isNotEmpty) ...[
            const SizedBox(height: 8),
            _buildMethodDetail('Notes', work.notes),
          ],
        ],
      ),
    );
  }

  Color _getLikelihoodColor(String likelihood) {
    switch (likelihood.toLowerCase()) {
      case 'likely':
        return Colors.red;
      case 'possible':
        return Colors.orange;
      case 'unlikely':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: AppTextStyles.h2(context).copyWith(fontWeight: FontWeight.w700),
    );
  }

  Widget _buildSectionHeaderWithCount(String title, int count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: _buildSectionHeader(title)),
        _buildCountBadge(count),
      ],
    );
  }

  Widget _buildCountBadge(int count) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: ColorPalette.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        '$count',
        style: AppTextStyles.base(
          context,
        ).copyWith(color: ColorPalette.primary, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildEmptyMessage(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          message,
          style: AppTextStyles.base(context).copyWith(color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: Text(
              label,
              style: AppTextStyles.base(
                context,
              ).copyWith(color: Colors.grey.shade700),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: AppTextStyles.base(
                context,
              ).copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

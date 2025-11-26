import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:flutter/material.dart';

class InspectionMethodsSection extends StatelessWidget {
  final List<InspectionMethodV2> inspectionMethods;

  const InspectionMethodsSection({super.key, required this.inspectionMethods});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SectionHeaderWithCount(
              title: 'Inspection Methods',
              count: inspectionMethods.length,
            ),
            const SizedBox(height: 16),
            if (inspectionMethods.isEmpty)
              _EmptyMessage(message: 'No inspection methods available')
            else
              ...List.generate(
                inspectionMethods.length,
                (index) => _InspectionMethodCard(
                  method: inspectionMethods[index],
                  index: index + 1,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _SectionHeaderWithCount extends StatelessWidget {
  final String title;
  final int count;

  const _SectionHeaderWithCount({required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: AppTextStyles.h2(
              context,
            ).copyWith(fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: ColorPalette.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            '$count',
            style: AppTextStyles.base(context).copyWith(
              color: ColorPalette.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class _InspectionMethodCard extends StatelessWidget {
  final InspectionMethodV2 method;
  final int index;

  const _InspectionMethodCard({required this.method, required this.index});

  @override
  Widget build(BuildContext context) {
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
                  method.method?.value ?? 'N/A',
                  style: AppTextStyles.base(
                    context,
                  ).copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _MethodDetail(label: 'Location', value: method.location ?? 'N/A'),
          _MethodDetail(
            label: 'Special Access',
            value: method.specialAccess?.value ?? 'N/A',
          ),
          _MethodDetail(
            label: 'Insulation Removal',
            value: method.insulationRemoval?.value ?? 'N/A',
          ),
          _MethodDetail(
            label: 'Cleaning',
            value: method.cleaning?.value ?? 'N/A',
          ),
          if (method.notes != null && method.notes!.isNotEmpty)
            _MethodDetail(label: 'Notes', value: method.notes!),
        ],
      ),
    );
  }
}

class _MethodDetail extends StatelessWidget {
  final String label;
  final String value;

  const _MethodDetail({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
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
}

class _EmptyMessage extends StatelessWidget {
  final String message;

  const _EmptyMessage({required this.message});

  @override
  Widget build(BuildContext context) {
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
}

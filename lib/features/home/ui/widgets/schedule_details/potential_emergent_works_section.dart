import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/home/data/models/scope_model.dart';
import 'package:flutter/material.dart';

class PotentialEmergentWorksSection extends StatelessWidget {
  final List<PotentialEmergentWork> potentialEmergentWorks;

  const PotentialEmergentWorksSection({
    super.key,
    required this.potentialEmergentWorks,
  });

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
              title: 'Potential Emergent Works',
              count: potentialEmergentWorks.length,
            ),
            const SizedBox(height: 16),
            if (potentialEmergentWorks.isEmpty)
              _EmptyMessage(message: 'No potential emergent works')
            else
              ...List.generate(
                potentialEmergentWorks.length,
                (index) => _EmergentWorkCard(
                  work: potentialEmergentWorks[index],
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

class _EmergentWorkCard extends StatelessWidget {
  final PotentialEmergentWork work;
  final int index;

  const _EmergentWorkCard({required this.work, required this.index});

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

  @override
  Widget build(BuildContext context) {
    final likelihoodColor = _getLikelihoodColor(work.likelihood.value);

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
                  color: likelihoodColor.withValues(alpha: 0.2),
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
            _MethodDetail(label: 'Notes', value: work.notes),
          ],
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

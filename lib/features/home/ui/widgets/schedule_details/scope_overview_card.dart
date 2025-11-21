import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/features/home/data/models/scope_model.dart';
import 'package:flutter/material.dart';

class ScopeOverviewCard extends StatelessWidget {
  final Scope scopeData;

  const ScopeOverviewCard({super.key, required this.scopeData});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Scope Overview',
              style: AppTextStyles.h2(
                context,
              ).copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 12),
            _InfoRow(
              label: 'Damage Mechanism:',
              value: scopeData.damageMechanism,
            ),
            _InfoRow(
              label: 'Inspection Effectiveness:',
              value: scopeData.inspectionEffectiveness,
            ),
            _InfoRow(label: 'Scope ID:', value: scopeData.id),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
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

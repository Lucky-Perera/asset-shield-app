import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_ui/schedule_surface.dart';
import 'package:flutter/material.dart';

class ScheduleDetailsCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final Color? borderColor;
  final List<BoxShadow>? boxShadow;

  const ScheduleDetailsCard({
    super.key,
    required this.child,
    this.margin,
    this.padding = const EdgeInsets.all(24),
    this.backgroundColor,
    this.borderColor,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return ScheduleSurfaceCard(
      margin: margin,
      padding: padding,
      backgroundColor: backgroundColor ?? scheduleTheme.cardBackground,
      borderColor: borderColor ?? scheduleTheme.cardBorder,
      radius: scheduleTheme.detailCardRadius,
      boxShadow: boxShadow,
      child: child,
    );
  }
}

import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ScheduleBadgeVariant { standard, sectionCount, detailIndex, detailTone }

class SchedulePageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final TextStyle? titleStyle;
  final IconData leadingIcon;
  final VoidCallback? onLeadingPressed;
  final List<Widget>? actions;
  final bool centerTitle;
  final Color? backgroundColor;

  const SchedulePageAppBar({
    super.key,
    required this.title,
    this.titleStyle,
    required this.leadingIcon,
    this.onLeadingPressed,
    this.actions,
    this.centerTitle = true,
    this.backgroundColor,
  });

  @override
  Size get preferredSize => Size.fromHeight(AppSizes.appBarHeight.h);

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return AppBar(
      backgroundColor: backgroundColor ?? scheduleTheme.pageBackground,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: centerTitle,
      title: Text(
        title,
        style: titleStyle ?? ScheduleTextStyles.title(context),
      ),
      leading: IconButton(
        icon: Icon(leadingIcon, size: 24.sp, color: scheduleTheme.icon),
        onPressed: onLeadingPressed,
      ),
      actions: actions,
    );
  }
}

class ScheduleSurfaceCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final Color? borderColor;
  final double radius;
  final List<BoxShadow>? boxShadow;

  const ScheduleSurfaceCard({
    super.key,
    required this.child,
    this.margin,
    this.padding = const EdgeInsets.all(24),
    this.backgroundColor,
    this.borderColor,
    this.radius = ScheduleRadii.card,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;
    final resolvedBorderColor = borderColor ?? scheduleTheme.cardBorder;

    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? scheduleTheme.cardBackground,
        borderRadius: BorderRadius.circular(radius.r),
        border: Border.all(
          color: resolvedBorderColor,
          width: AppStrokes.regular,
        ),
        boxShadow:
            boxShadow ?? [scheduleTheme.cardShadow(color: resolvedBorderColor)],
      ),
      child: child,
    );
  }
}

class ScheduleSectionTitle extends StatelessWidget {
  final String title;
  final Widget? trailing;

  const ScheduleSectionTitle({super.key, required this.title, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            title,
            style: ScheduleTextStyles.caption(
              context,
            ).copyWith(fontWeight: FontWeight.w700),
          ),
        ),
        if (trailing != null) ...[SizedBox(width: 12.w), trailing!],
      ],
    );
  }
}

class ScheduleBadge extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;
  final ScheduleBadgeVariant variant;
  final EdgeInsetsGeometry? padding;
  final double? radius;
  final double? minWidth;
  final double? minHeight;
  final FontWeight fontWeight;

  const ScheduleBadge({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.foregroundColor,
    this.variant = ScheduleBadgeVariant.standard,
    this.padding,
    this.radius,
    this.minWidth,
    this.minHeight,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    final style = _styleForVariant(context);

    return Container(
      constraints: BoxConstraints(
        minWidth: minWidth ?? style.minWidth,
        minHeight: minHeight ?? style.minHeight,
      ),
      padding: padding ?? style.padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular((radius ?? style.radius).r),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: ScheduleTextStyles.caption(
          context,
          color: foregroundColor,
        ).copyWith(fontWeight: fontWeight),
      ),
    );
  }

  _ScheduleBadgeStyle _styleForVariant(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    switch (variant) {
      case ScheduleBadgeVariant.sectionCount:
        return _squareBadgeStyle(radius: scheduleTheme.badgeRadius);
      case ScheduleBadgeVariant.detailIndex:
        return _squareBadgeStyle(radius: scheduleTheme.detailCardRadius);
      case ScheduleBadgeVariant.detailTone:
        return _ScheduleBadgeStyle(
          minWidth: 0,
          minHeight: 36.h,
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
          radius: scheduleTheme.detailCardRadius,
        );
      case ScheduleBadgeVariant.standard:
        return _ScheduleBadgeStyle(
          minWidth: 0,
          minHeight: 0,
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
          radius: ScheduleRadii.badge,
        );
    }
  }

  _ScheduleBadgeStyle _squareBadgeStyle({required double radius}) {
    return _ScheduleBadgeStyle(
      minWidth: 40.w,
      minHeight: 40.h,
      padding: EdgeInsets.zero,
      radius: radius,
    );
  }
}

class _ScheduleBadgeStyle {
  final double minWidth;
  final double minHeight;
  final EdgeInsetsGeometry padding;
  final double radius;

  const _ScheduleBadgeStyle({
    required this.minWidth,
    required this.minHeight,
    required this.padding,
    required this.radius,
  });
}

class ScheduleInfoRow extends StatelessWidget {
  final String label;
  final String value;
  final double labelWidth;
  final EdgeInsetsGeometry padding;
  final TextStyle? labelStyle;
  final TextStyle? valueStyle;

  const ScheduleInfoRow({
    super.key,
    required this.label,
    required this.value,
    this.labelWidth = 132,
    this.padding = const EdgeInsets.only(bottom: 16),
    this.labelStyle,
    this.valueStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: labelWidth.w,
            child: Text(
              label,
              style: labelStyle ?? ScheduleTextStyles.caption(context),
            ),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: Text(
              value,
              style:
                  valueStyle ??
                  ScheduleTextStyles.caption(
                    context,
                  ).copyWith(fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

class ScheduleBottomBar extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const ScheduleBottomBar({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final scheduleTheme = context.scheduleTheme;

    return Container(
      padding:
          padding ??
          EdgeInsets.fromLTRB(
            24.w,
            16.h,
            24.w,
            bottomPadding > 0 ? bottomPadding : 16.h,
          ),
      decoration: BoxDecoration(
        color: scheduleTheme.cardBackground,
        border: Border(
          top: BorderSide(
            color: scheduleTheme.cardBorder.withValues(alpha: 0.65),
          ),
        ),
        boxShadow: [scheduleTheme.bottomBarShadow()],
      ),
      child: child,
    );
  }
}

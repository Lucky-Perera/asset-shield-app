import 'dart:ui' show lerpDouble;

import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

@immutable
class ScheduleTone {
  final Color background;
  final Color foreground;

  const ScheduleTone({required this.background, required this.foreground});
}

@immutable
class ScheduleThemeData extends ThemeExtension<ScheduleThemeData> {
  final Color pageBackground;
  final Color cardBackground;
  final Color cardBorder;
  final Color primaryText;
  final Color secondaryText;
  final Color icon;
  final Color sectionBackground;
  final Color fieldDisabledBackground;
  final Color drawerHeaderBackground;
  final Color paginationActive;
  final Color paginationInactiveBorder;
  final Color paginationDisabled;
  final Color countBadgeBackground;
  final Color countBadgeText;
  final Color indexBadgeBackground;
  final Color indexBadgeText;
  final Color chipBackground;
  final Color chipBorder;
  final Color chipSelectedBackground;
  final Color chipSelectedText;
  final Color draftButtonBackground;
  final Color draftButtonText;
  final Color ghostButtonText;
  final double cardRadius;
  final double detailCardRadius;
  final double fieldRadius;
  final double badgeRadius;
  final double searchRadius;
  final double drawerRadius;

  const ScheduleThemeData({
    required this.pageBackground,
    required this.cardBackground,
    required this.cardBorder,
    required this.primaryText,
    required this.secondaryText,
    required this.icon,
    required this.sectionBackground,
    required this.fieldDisabledBackground,
    required this.drawerHeaderBackground,
    required this.paginationActive,
    required this.paginationInactiveBorder,
    required this.paginationDisabled,
    required this.countBadgeBackground,
    required this.countBadgeText,
    required this.indexBadgeBackground,
    required this.indexBadgeText,
    required this.chipBackground,
    required this.chipBorder,
    required this.chipSelectedBackground,
    required this.chipSelectedText,
    required this.draftButtonBackground,
    required this.draftButtonText,
    required this.ghostButtonText,
    required this.cardRadius,
    required this.detailCardRadius,
    required this.fieldRadius,
    required this.badgeRadius,
    required this.searchRadius,
    required this.drawerRadius,
  });

  factory ScheduleThemeData.light() {
    return ScheduleThemeData(
      pageBackground: ColorPalette.surfaceSubtle,
      cardBackground: ColorPalette.surface,
      cardBorder: ColorPalette.primarySubtle,
      primaryText: ColorPalette.textPrimary,
      secondaryText: ColorPalette.textMuted,
      icon: ColorPalette.textPrimary,
      sectionBackground: ColorPalette.primarySubtle,
      fieldDisabledBackground: ColorPalette.surfaceSubtle,
      drawerHeaderBackground: ColorPalette.surfaceSubtle,
      paginationActive: ColorPalette.textPrimary,
      paginationInactiveBorder: ColorPalette.primarySubtle,
      paginationDisabled: ColorPalette.surfaceMuted,
      countBadgeBackground: ColorPalette.surfaceMuted,
      countBadgeText: ColorPalette.textPrimary,
      indexBadgeBackground: ColorPalette.textPrimary,
      indexBadgeText: ColorPalette.textInverse,
      chipBackground: ColorPalette.surface,
      chipBorder: ColorPalette.primarySubtle,
      chipSelectedBackground: ColorPalette.textPrimary,
      chipSelectedText: ColorPalette.textInverse,
      draftButtonBackground: ColorPalette.surfaceMuted,
      draftButtonText: ColorPalette.textPrimary,
      ghostButtonText: ColorPalette.textPrimary,
      cardRadius: AppRadii.xxl,
      detailCardRadius: AppRadii.sm,
      fieldRadius: AppRadii.xl,
      badgeRadius: AppRadii.md,
      searchRadius: AppRadii.xl,
      drawerRadius: AppRadii.drawer,
    );
  }

  ScheduleTone get noRecordTone =>
      ScheduleTone(background: countBadgeBackground, foreground: secondaryText);

  ScheduleTone get approvedTone => ScheduleTone(
    background: ColorPalette.success.withValues(alpha: 0.12),
    foreground: ColorPalette.success,
  );

  ScheduleTone get pendingTone => const ScheduleTone(
    background: ColorPalette.warningBackground,
    foreground: ColorPalette.warning,
  );

  ScheduleTone get rejectedTone => const ScheduleTone(
    background: ColorPalette.dangerBackground,
    foreground: ColorPalette.danger,
  );

  ScheduleTone get draftTone =>
      ScheduleTone(background: cardBorder, foreground: ColorPalette.primary);

  ScheduleTone get countBadgeTone => ScheduleTone(
    background: countBadgeBackground,
    foreground: countBadgeText,
  );

  ScheduleTone get indexBadgeTone => ScheduleTone(
    background: indexBadgeBackground,
    foreground: indexBadgeText,
  );

  ScheduleTone recordStatusTone(RecordStatus? status) {
    if (status == null) {
      return noRecordTone;
    }

    switch (status) {
      case RecordStatus.approved:
        return approvedTone;
      case RecordStatus.pendingApproval:
        return pendingTone;
      case RecordStatus.rejected:
        return rejectedTone;
      case RecordStatus.draft:
        return draftTone;
    }
  }

  ScheduleTone likelihoodTone(String? likelihood) {
    switch (likelihood?.trim().toLowerCase()) {
      case 'likely':
        return rejectedTone;
      case 'possible':
        return pendingTone;
      case 'unlikely':
        return approvedTone;
      default:
        return noRecordTone;
    }
  }

  BoxShadow cardShadow({Color? color, double opacity = 0.18}) {
    return BoxShadow(
      color: (color ?? cardBorder).withValues(alpha: opacity),
      blurRadius: 12,
      offset: const Offset(0, 4),
    );
  }

  BoxShadow bottomBarShadow() {
    return BoxShadow(
      color: cardBorder.withValues(alpha: 0.3),
      blurRadius: 16,
      offset: const Offset(0, -4),
    );
  }

  @override
  ScheduleThemeData copyWith({
    Color? pageBackground,
    Color? cardBackground,
    Color? cardBorder,
    Color? primaryText,
    Color? secondaryText,
    Color? icon,
    Color? sectionBackground,
    Color? fieldDisabledBackground,
    Color? drawerHeaderBackground,
    Color? paginationActive,
    Color? paginationInactiveBorder,
    Color? paginationDisabled,
    Color? countBadgeBackground,
    Color? countBadgeText,
    Color? indexBadgeBackground,
    Color? indexBadgeText,
    Color? chipBackground,
    Color? chipBorder,
    Color? chipSelectedBackground,
    Color? chipSelectedText,
    Color? draftButtonBackground,
    Color? draftButtonText,
    Color? ghostButtonText,
    double? cardRadius,
    double? detailCardRadius,
    double? fieldRadius,
    double? badgeRadius,
    double? searchRadius,
    double? drawerRadius,
  }) {
    return ScheduleThemeData(
      pageBackground: pageBackground ?? this.pageBackground,
      cardBackground: cardBackground ?? this.cardBackground,
      cardBorder: cardBorder ?? this.cardBorder,
      primaryText: primaryText ?? this.primaryText,
      secondaryText: secondaryText ?? this.secondaryText,
      icon: icon ?? this.icon,
      sectionBackground: sectionBackground ?? this.sectionBackground,
      fieldDisabledBackground:
          fieldDisabledBackground ?? this.fieldDisabledBackground,
      drawerHeaderBackground:
          drawerHeaderBackground ?? this.drawerHeaderBackground,
      paginationActive: paginationActive ?? this.paginationActive,
      paginationInactiveBorder:
          paginationInactiveBorder ?? this.paginationInactiveBorder,
      paginationDisabled: paginationDisabled ?? this.paginationDisabled,
      countBadgeBackground: countBadgeBackground ?? this.countBadgeBackground,
      countBadgeText: countBadgeText ?? this.countBadgeText,
      indexBadgeBackground: indexBadgeBackground ?? this.indexBadgeBackground,
      indexBadgeText: indexBadgeText ?? this.indexBadgeText,
      chipBackground: chipBackground ?? this.chipBackground,
      chipBorder: chipBorder ?? this.chipBorder,
      chipSelectedBackground:
          chipSelectedBackground ?? this.chipSelectedBackground,
      chipSelectedText: chipSelectedText ?? this.chipSelectedText,
      draftButtonBackground:
          draftButtonBackground ?? this.draftButtonBackground,
      draftButtonText: draftButtonText ?? this.draftButtonText,
      ghostButtonText: ghostButtonText ?? this.ghostButtonText,
      cardRadius: cardRadius ?? this.cardRadius,
      detailCardRadius: detailCardRadius ?? this.detailCardRadius,
      fieldRadius: fieldRadius ?? this.fieldRadius,
      badgeRadius: badgeRadius ?? this.badgeRadius,
      searchRadius: searchRadius ?? this.searchRadius,
      drawerRadius: drawerRadius ?? this.drawerRadius,
    );
  }

  @override
  ScheduleThemeData lerp(ThemeExtension<ScheduleThemeData>? other, double t) {
    if (other is! ScheduleThemeData) {
      return this;
    }

    return ScheduleThemeData(
      pageBackground: Color.lerp(pageBackground, other.pageBackground, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      cardBorder: Color.lerp(cardBorder, other.cardBorder, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
      icon: Color.lerp(icon, other.icon, t)!,
      sectionBackground: Color.lerp(
        sectionBackground,
        other.sectionBackground,
        t,
      )!,
      fieldDisabledBackground: Color.lerp(
        fieldDisabledBackground,
        other.fieldDisabledBackground,
        t,
      )!,
      drawerHeaderBackground: Color.lerp(
        drawerHeaderBackground,
        other.drawerHeaderBackground,
        t,
      )!,
      paginationActive: Color.lerp(
        paginationActive,
        other.paginationActive,
        t,
      )!,
      paginationInactiveBorder: Color.lerp(
        paginationInactiveBorder,
        other.paginationInactiveBorder,
        t,
      )!,
      paginationDisabled: Color.lerp(
        paginationDisabled,
        other.paginationDisabled,
        t,
      )!,
      countBadgeBackground: Color.lerp(
        countBadgeBackground,
        other.countBadgeBackground,
        t,
      )!,
      countBadgeText: Color.lerp(countBadgeText, other.countBadgeText, t)!,
      indexBadgeBackground: Color.lerp(
        indexBadgeBackground,
        other.indexBadgeBackground,
        t,
      )!,
      indexBadgeText: Color.lerp(indexBadgeText, other.indexBadgeText, t)!,
      chipBackground: Color.lerp(chipBackground, other.chipBackground, t)!,
      chipBorder: Color.lerp(chipBorder, other.chipBorder, t)!,
      chipSelectedBackground: Color.lerp(
        chipSelectedBackground,
        other.chipSelectedBackground,
        t,
      )!,
      chipSelectedText: Color.lerp(
        chipSelectedText,
        other.chipSelectedText,
        t,
      )!,
      draftButtonBackground: Color.lerp(
        draftButtonBackground,
        other.draftButtonBackground,
        t,
      )!,
      draftButtonText: Color.lerp(draftButtonText, other.draftButtonText, t)!,
      ghostButtonText: Color.lerp(ghostButtonText, other.ghostButtonText, t)!,
      cardRadius: lerpDouble(cardRadius, other.cardRadius, t)!,
      detailCardRadius: lerpDouble(
        detailCardRadius,
        other.detailCardRadius,
        t,
      )!,
      fieldRadius: lerpDouble(fieldRadius, other.fieldRadius, t)!,
      badgeRadius: lerpDouble(badgeRadius, other.badgeRadius, t)!,
      searchRadius: lerpDouble(searchRadius, other.searchRadius, t)!,
      drawerRadius: lerpDouble(drawerRadius, other.drawerRadius, t)!,
    );
  }
}

extension ScheduleThemeContext on BuildContext {
  ScheduleThemeData get scheduleTheme =>
      Theme.of(this).extension<ScheduleThemeData>() ??
      ScheduleThemeData.light();
}

import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/auth/data/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return Drawer(
      width: AppSizes.drawerWidth.w,
      backgroundColor: scheduleTheme.cardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(scheduleTheme.drawerRadius.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: AppSizes.drawerHeaderHeight.h + MediaQuery.paddingOf(context).top,
            padding: EdgeInsets.only(
              top: MediaQuery.paddingOf(context).top,
              left: 24.w,
              right: 24.w,
              bottom: 24.h,
            ),
            decoration: BoxDecoration(
              color: scheduleTheme.drawerHeaderBackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(scheduleTheme.drawerRadius.r),
              ),
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              'Menu',
              style: AppTypography.style(
                size: 23,
                weight: AppFontWeights.title,
                color: scheduleTheme.primaryText,
                height: 1,
              ),
            ),
          ),
          const Expanded(child: SizedBox.shrink()),
          SafeArea(
            top: false,
            child: Padding(
              padding: EdgeInsets.fromLTRB(28.w, 12.h, 28.w, 32.h),
              child: InkWell(
                borderRadius: BorderRadius.circular(
                  scheduleTheme.radius.r,
                ),
                onTap: () => AuthService().logout(),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout_rounded,
                        color: scheduleTheme.rejectedTone.foreground,
                        size: 30.sp,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Log Out',
                        style: ScheduleTextStyles.value(
                          context,
                          color: scheduleTheme.rejectedTone.foreground,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

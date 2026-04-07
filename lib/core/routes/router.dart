import 'package:asset_shield/core/routes/route_paths.dart';
import 'package:asset_shield/features/auth/ui/screens/login_screen.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/screens/add_record_screen.dart';
import 'package:asset_shield/features/home/ui/screens/home_screen.dart';
import 'package:asset_shield/features/home/ui/screens/schedule_details_screen.dart';
import 'package:asset_shield/features/common/widgets/full_screen_image_viewer.dart';
import 'package:asset_shield/features/splash/splash_screen.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

// Navigation Helper Class
class Routes {
  BuildContext get currentContext => rootNavigatorKey.currentContext!;

  void splash() => router.go(RoutePaths.splash);

  void login() => router.go(RoutePaths.login);

  void home() => router.go(RoutePaths.home);

  void scheduleDetails(ScheduleV2Response schedule) => router.go(
    "${RoutePaths.home}${RoutePaths.scheduleDetails}",
    extra: schedule,
  );

  void addRecord(ScheduleV2Response schedule) => router.go(
    "${RoutePaths.home}${RoutePaths.scheduleDetails}${RoutePaths.addRecord}",
    extra: schedule,
  );

  void imageViewer(String imageUrl) =>
      router.push(RoutePaths.imageViewer, extra: imageUrl);
}

// Router Configuration
final router = GoRouter(
  initialLocation: RoutePaths.splash,
  navigatorKey: rootNavigatorKey,
  observers: [BotToastNavigatorObserver()],
  routes: [
    // Splash
    GoRoute(
      path: RoutePaths.splash,
      builder: (context, state) => const SplashScreen(),
    ),

    // Auth Routes
    GoRoute(
      path: RoutePaths.login,
      builder: (context, state) => const LoginScreen(),
    ),

    // Home Routes
    GoRoute(
      path: RoutePaths.home,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: RoutePaths.scheduleDetails,
          builder: (context, state) {
            final schedule = state.extra as ScheduleV2Response;
            return ScheduleDetailsScreen(schedule: schedule);
          },
          routes: [
            GoRoute(
              path: RoutePaths.addRecord,
              builder: (context, state) {
                final schedule = state.extra as ScheduleV2Response;
                return AddRecordScreen(schedule: schedule);
              },
            ),
          ],
        ),
      ],
    ),
    // Full Screen Image Viewer (at top level for modal appearance)
    GoRoute(
      path: RoutePaths.imageViewer,
      builder: (context, state) {
        final imageUrl = state.extra as String;
        return FullScreenImageViewer(imageUrl: imageUrl);
      },
    ),
  ],

  redirect: (context, state) {
    return null;
  },
);

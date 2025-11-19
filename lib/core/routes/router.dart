import 'package:asset_shield/core/routes/route_paths.dart';
import 'package:asset_shield/features/auth/ui/screens/login_screen.dart';
import 'package:asset_shield/features/home/ui/screens/home_screen.dart';
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

  // Push methods for modal-style navigation
  void pushProfile() => router.push(RoutePaths.profile);
  void pushSettings() => router.pushNamed(RoutePaths.settings);
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
    ),
  ],

  // Redirect logic (e.g., auth checks)
  redirect: (context, state) {
    // Add your authentication logic here
    // Example:
    // final isLoggedIn = await checkAuthStatus();
    // if (!isLoggedIn && state.location != RoutePaths.login) {
    //   return RoutePaths.login;
    // }
    return null; // No redirect
  },
);

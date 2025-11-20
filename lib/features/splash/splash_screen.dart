import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/utility/storage_service.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  final StorageService _storageService = StorageService();

  void initialise() async {
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;

    // Check if user ID exists in storage
    final userId = await _storageService.getUserId();

    if (userId != null && userId.isNotEmpty) {
      // User is logged in, go to home
      Routes().home();
    } else {
      // No valid user ID, go to login
      Routes().login();
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initialise();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(body: Container(color: Colors.white));
  }
}

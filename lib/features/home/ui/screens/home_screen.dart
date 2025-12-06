import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/auth/data/services/auth_service.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/home/data/providers/schedule_provider.dart';
import 'package:asset_shield/features/home/ui/widgets/error_state.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_list.dart';
import 'package:asset_shield/features/home/ui/widgets/search_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (!_isSearching) {
        _searchController.clear();
        _searchQuery = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final schedulesAsync = ref.watch(schedulesProvider);

    return AppScaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // FIXED HEIGHT HEADER
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorPalette.blackSwatch.shade400,
              ),
              child: const Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),

            // MAIN CONTENT (put menu items here)
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const [
                  // Add more menu items if needed
                ],
              ),
            ),

            // LOG OUT BUTTON AT BOTTOM
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
              child: ListTile(
                leading: const Icon(Icons.output_rounded, color: Colors.red),
                title: const Text(
                  'Log Out',
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () => AuthService().logout(),
              ),
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            // Header with Search
            SearchHeader(
              isSearching: _isSearching,
              searchController: _searchController,
              onToggleSearch: _toggleSearch,
              onRefresh: () => ref.read(schedulesProvider.notifier).refresh(),
              onSearchChanged: (value) {
                setState(() {
                  _searchQuery = value.toLowerCase();
                });
              },
            ),
            // List
            Expanded(
              child: schedulesAsync.when(
                data: (scheduleState) => ScheduleList(
                  schedules: scheduleState.schedules,
                  pagination: scheduleState.pagination,
                  searchQuery: _searchQuery,
                  onRefresh: () =>
                      ref.read(schedulesProvider.notifier).refresh(),
                  onPageChanged: (page) =>
                      ref.read(schedulesProvider.notifier).goToPage(page),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(color: ColorPalette.black),
                ),
                error: (error, stack) => ErrorState(
                  error: error,
                  onRetry: () => ref.read(schedulesProvider.notifier).refresh(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

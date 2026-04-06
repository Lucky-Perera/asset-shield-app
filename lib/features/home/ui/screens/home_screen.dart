import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/home/ui/widgets/home_drawer.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/home/data/providers/schedule_provider.dart';
import 'package:asset_shield/features/home/ui/widgets/error_state.dart';
import 'package:asset_shield/features/home/ui/widgets/pagination_bar.dart';
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
        ref.read(schedulesProvider.notifier).search('');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final schedulesAsync = ref.watch(schedulesProvider);
    final scheduleTheme = context.scheduleTheme;

    return AppScaffold(
      backgroundColor: scheduleTheme.pageBackground,
      endDrawer: const HomeDrawer(),
      bottomNavigationBar: schedulesAsync.whenOrNull(
        data: (scheduleState) => scheduleState.schedules.isEmpty
            ? null
            : PaginationBar(
                currentPage: scheduleState.pagination.page,
                totalPages: scheduleState.pagination.totalPages,
                onPageChanged: (page) =>
                    ref.read(schedulesProvider.notifier).goToPage(page),
              ),
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            // Header with Search
            SearchHeader(
              isSearching: _isSearching,
              searchController: _searchController,
              onToggleSearch: _toggleSearch,
              onRefresh: () => ref.read(schedulesProvider.notifier).refresh(),
              onSearchChanged: (value) {
                ref.read(schedulesProvider.notifier).search(value);
              },
            ),
            // List
            Expanded(
              child: schedulesAsync.when(
                data: (scheduleState) => ScheduleList(
                  schedules: scheduleState.schedules,
                  searchQuery: scheduleState.searchQuery ?? '',
                  onRefresh: () =>
                      ref.read(schedulesProvider.notifier).refresh(),
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
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

import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/home/data/providers/schedule_provider.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schedulesAsync = ref.watch(schedulesProvider);

    return AppScaffold(
      body: Column(
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Schedules',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.black,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    ref.read(schedulesProvider.notifier).refresh();
                  },
                ),
              ],
            ),
          ),
          // List
          Expanded(
            child: schedulesAsync.when(
              data: (schedules) {
                if (schedules.isEmpty) {
                  return const Center(
                    child: Text(
                      'No schedules available',
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorPalette.grey500,
                      ),
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () async {
                    await ref.read(schedulesProvider.notifier).refresh();
                  },
                  child: ListView.builder(
                    itemCount: schedules.length,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemBuilder: (context, index) {
                      final schedule = schedules[index];
                      return ScheduleItem(
                        schedule: schedule,
                        onTap: () {
                          // TODO: Navigate to schedule details
                          debugPrint('Tapped schedule: ${schedule.id}');
                        },
                      );
                    },
                  ),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(color: ColorPalette.black),
              ),
              error: (error, stack) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 48,
                      color: ColorPalette.grey400,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Error loading schedules',
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorPalette.grey600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      error.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorPalette.grey500,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(schedulesProvider.notifier).refresh();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorPalette.black,
                        foregroundColor: ColorPalette.white,
                      ),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/auth/data/services/auth_service.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // FIXED HEIGHT HEADER
          DrawerHeader(
            decoration: BoxDecoration(color: ColorPalette.blackSwatch.shade400),
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
              title: const Text('Log Out', style: TextStyle(color: Colors.red)),
              onTap: () => AuthService().logout(),
            ),
          ),
        ],
      ),
    );
  }
}

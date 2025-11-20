import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  final bool isSearching;
  final TextEditingController searchController;
  final VoidCallback onToggleSearch;
  final VoidCallback onRefresh;
  final ValueChanged<String> onSearchChanged;

  const SearchHeader({
    super.key,
    required this.isSearching,
    required this.searchController,
    required this.onToggleSearch,
    required this.onRefresh,
    required this.onSearchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: isSearching ? _buildSearchField() : _buildHeader(),
    );
  }

  Widget _buildSearchField() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: searchController,
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Search by Schedule ID...',
              hintStyle: const TextStyle(color: ColorPalette.grey500),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: ColorPalette.grey300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: ColorPalette.black),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
            ),
            onChanged: onSearchChanged,
          ),
        ),
        const SizedBox(width: 8),
        IconButton(icon: const Icon(Icons.close), onPressed: onToggleSearch),
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
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
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: onToggleSearch,
            ),
            IconButton(icon: const Icon(Icons.refresh), onPressed: onRefresh),
          ],
        ),
      ],
    );
  }
}

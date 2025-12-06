import 'package:flutter/material.dart';

class MediaLabel extends StatelessWidget {
  final void Function()? onTap;
  const MediaLabel({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.image, size: 20, color: Colors.black87),
          SizedBox(width: 6),
          Text(
            'Media',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

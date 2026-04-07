import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FullScreenImageViewer extends StatefulWidget {
  final String imageUrl;

  const FullScreenImageViewer({super.key, required this.imageUrl});

  @override
  State<FullScreenImageViewer> createState() => _FullScreenImageViewerState();
}

class _FullScreenImageViewerState extends State<FullScreenImageViewer> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => EasyLoading.show());
  }

  @override
  void dispose() {
    EasyLoading.dismiss();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.black,
      body: Stack(
        children: [
          InteractiveViewer(
            minScale: 0.5,
            maxScale: 4.0,
            child: Center(
              child: CachedNetworkImage(
                imageUrl: widget.imageUrl,
                fit: BoxFit.contain,
                fadeInDuration: const Duration(milliseconds: 200),
                imageBuilder: (context, imageProvider) {
                  EasyLoading.dismiss();
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
                placeholder: (context, url) => const SizedBox.shrink(),
                errorWidget: (context, url, error) {
                  EasyLoading.dismiss();
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline_rounded,
                        color: ColorPalette.textInverse,
                        size: 48.sp,
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'Failed to load image',
                        style: TextStyle(
                          color: ColorPalette.textInverse,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          // Close button positioned visibly over the black background
          Positioned(
            top: 40.h,
            right: 20.w,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: ColorPalette.black.withValues(alpha: 0.5),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.close_rounded,
                    color: ColorPalette.textInverse,
                    size: 28.sp,
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

import 'dart:io';

import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/core/utility/toast_service.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/data/services/attachment_service.dart';
import 'package:asset_shield/features/home/ui/widgets/checklist/media_label.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

class QuestionTile extends StatefulWidget {
  final ChecklistQuestionTemplate question;
  final Function(String questionId, String value, String note)? onAnswerChanged;
  final Function(String questionId, String attachmentId, String attachmentName)?
  onAttachmentUploaded;
  final bool readOnly;
  final String? initialValue;
  final String? initialNote;
  final String? scheduleV2Id;
  final String? equipmentId;
  final List<AttachmentV2>? existingAttachments;
  final List<Map<String, String>>? uploadedAttachmentMetadata;

  const QuestionTile({
    super.key,
    required this.question,
    this.onAnswerChanged,
    this.onAttachmentUploaded,
    this.readOnly = false,
    this.initialValue,
    this.initialNote,
    this.scheduleV2Id,
    this.equipmentId,
    this.existingAttachments,
    this.uploadedAttachmentMetadata,
  });

  @override
  State<QuestionTile> createState() => _QuestionTileState();
}

class _QuestionTileState extends State<QuestionTile> {
  late TextEditingController _noteController;
  String? _selectedValue;
  bool _isExpanded = false;
  final List<File> _mediaFiles = [];
  final Set<String> _uploadedPaths = {};
  final List<Map<String, String>> _restoredAttachments = [];
  bool _isUploading = false;

  void _showMediaMenu() {
    final RenderBox box = context.findRenderObject() as RenderBox;
    final Offset position = box.localToGlobal(Offset.zero);

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx, // adjust X position
        position.dy + 90, // adjust Y position
        0,
        0,
      ),
      color: Colors.white,
      items: [
        PopupMenuItem(
          child: const Row(
            children: [
              Icon(Icons.attach_file, size: 20),
              SizedBox(width: 8),
              Text('Attach files'),
            ],
          ),
          onTap: () =>
              Future.delayed(const Duration(milliseconds: 100), _pickFiles),
        ),
        PopupMenuItem(
          child: const Row(
            children: [
              Icon(Icons.photo_camera, size: 20),
              SizedBox(width: 8),
              Text('Take photo'),
            ],
          ),
          onTap: () =>
              Future.delayed(const Duration(milliseconds: 100), _takePhoto),
        ),
        // PopupMenuItem(
        //   child: const Row(
        //     children: [
        //       Icon(Icons.videocam, size: 20),
        //       SizedBox(width: 8),
        //       Text('Take video'),
        //     ],
        //   ),
        //   onTap: () =>
        //       Future.delayed(const Duration(milliseconds: 100), _takeVideo),
        // ),
      ],
    );
  }

  Future<void> _pickFiles() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.any,
      );

      if (result != null) {
        final files = result.paths
            .whereType<String>()
            .map((p) => File(p))
            .toList();
        setState(() => _mediaFiles.addAll(files));
        await _uploadFiles(files);
      }
    } catch (e) {
      debugPrint("File pick error: $e");
    }
  }

  Future<void> _takePhoto() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      final file = File(image.path);
      setState(() => _mediaFiles.add(file));
      await _uploadFiles([file]);
    }
  }

  // Future<void> _takeVideo() async {
  //   final picker = ImagePicker();
  //   final video = await picker.pickVideo(source: ImageSource.camera);

  //   if (video != null) {
  //     final file = File(video.path);
  //     setState(() => _mediaFiles.add(file));
  //     await _uploadFiles([file]);
  //   }
  // }

  Future<void> _uploadFiles(List<File> files) async {
    if (widget.onAttachmentUploaded == null ||
        widget.scheduleV2Id == null ||
        widget.equipmentId == null) {
      return;
    }

    setState(() => _isUploading = true);

    try {
      for (final file in files) {
        // Skip if already uploaded
        if (_uploadedPaths.contains(file.path)) continue;

        final fileName = file.path.split('/').last;
        final attachmentService = AttachmentService();

        final attachment = await attachmentService.uploadAttachment(
          file: file,
          name: fileName,
          scheduleV2Id: widget.scheduleV2Id!,
          equipmentId: widget.equipmentId!,
        );

        _uploadedPaths.add(file.path);
        widget.onAttachmentUploaded!(
          widget.question.id,
          attachment.id,
          attachment.name,
        );
      }
    } catch (e) {
      ToastService.show('Upload failed: $e');
    } finally {
      setState(() => _isUploading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    _noteController = TextEditingController(
      text: widget.initialNote ?? widget.question.helpText ?? '',
    );
    _selectedValue = widget.initialValue ?? widget.question.question;

    // Restore previously uploaded attachments from metadata
    if (widget.uploadedAttachmentMetadata != null) {
      _restoredAttachments.addAll(widget.uploadedAttachmentMetadata!);
    }
  }

  @override
  void didUpdateWidget(QuestionTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update values if they changed
    if (widget.initialValue != oldWidget.initialValue) {
      _selectedValue = widget.initialValue ?? widget.question.question;
    }
    if (widget.initialNote != oldWidget.initialNote) {
      _noteController.text =
          widget.initialNote ?? widget.question.helpText ?? '';
    }
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  void _onValueSelected(String value) {
    if (widget.readOnly) return;

    setState(() {
      _selectedValue = value;
    });
    if (widget.onAnswerChanged != null) {
      widget.onAnswerChanged!(widget.question.id, value, _noteController.text);
    }
  }

  void _onNoteChanged() {
    if (widget.readOnly) return;

    if (widget.onAnswerChanged != null && _selectedValue != null) {
      widget.onAnswerChanged!(
        widget.question.id,
        _selectedValue!,
        _noteController.text,
      );
    }
  }

  List<ResponseValue> _getResponseOptions() {
    if (widget.question.responseType == ResponseType.yesNo) {
      return [ResponseValue.yes, ResponseValue.no];
    } else {
      return [
        ResponseValue.good,
        ResponseValue.fair,
        ResponseValue.poor,
        ResponseValue.na,
      ];
    }
  }

  void _showImageViewer(String imageUrl) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.black,
        child: Stack(
          children: [
            InteractiveViewer(
              child: Center(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.error, color: Colors.white, size: 48),
                          SizedBox(height: 16),
                          Text(
                            'Failed to load image',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                icon: Icon(Icons.close, color: Colors.white, size: 30),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _isImageUrl(String url) {
    final imageExtensions = ['.jpg', '.jpeg', '.png', '.gif', '.webp'];
    final lowerUrl = url.toLowerCase();
    return imageExtensions.any((ext) => lowerUrl.contains(ext));
  }

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      ToastService.show('Could not open link');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      color: ColorPalette.whiteSwatch.shade700,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: _isExpanded,
          onExpansionChanged: (expanded) {
            setState(() {
              _isExpanded = expanded;
            });
          },
          title: Text(
            widget.question.question,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          childrenPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 8.h,
          ),
          children: [
            if ((widget.question.helpText ?? '').isNotEmpty)
              Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: Text(
                  widget.question.helpText ?? '',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: ColorPalette.black.withValues(alpha: 0.7),
                  ),
                ),
              ),

            // Response buttons
            Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: _getResponseOptions().map((option) {
                  final isSelected = _selectedValue == option.apiValue;
                  return ChoiceChip(
                    label: Text(option.displayName),
                    selected: isSelected,
                    onSelected: widget.readOnly
                        ? null
                        : (_) => _onValueSelected(option.apiValue),
                    selectedColor: ColorPalette.primary,
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : ColorPalette.black,
                      fontSize: 13.sp,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                    backgroundColor: ColorPalette.whiteSwatch.shade600,
                    side: BorderSide(
                      color: isSelected
                          ? ColorPalette.primary
                          : ColorPalette.black.withValues(alpha: 0.2),
                    ),
                  );
                }).toList(),
              ),
            ),

            // Note text field
            TextField(
              controller: _noteController,
              onChanged: widget.readOnly ? null : (_) => _onNoteChanged(),
              enabled: !widget.readOnly,
              decoration: InputDecoration(
                labelText: 'Note',
                hintText: widget.readOnly ? '' : 'Add a note...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 12.h,
                ),
              ),
              maxLines: 3,
              style: TextStyle(fontSize: 13.sp),
            ),

            SizedBox(height: 8.h),

            // Show media button only if: not readonly OR (readonly but rejected and can edit)
            if (!widget.readOnly ||
                (widget.existingAttachments?.isEmpty ?? true))
              MediaLabel(onTap: _isUploading ? null : _showMediaMenu),

            if (_isUploading)
              Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                      height: 16.h,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'Uploading...',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: ColorPalette.black.withValues(alpha: 0.6),
                      ),
                    ),
                  ],
                ),
              ),

            if (_uploadedPaths.isNotEmpty || _restoredAttachments.isNotEmpty)
              Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Uploaded (${_uploadedPaths.length + _restoredAttachments.length})',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorPalette.black.withValues(alpha: 0.7),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    // Show restored attachments from draft
                    ..._restoredAttachments.map((attachment) {
                      final fileName = attachment['name'] ?? 'Unknown';
                      return Padding(
                        padding: EdgeInsets.only(bottom: 4.h),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 16.sp,
                              color: Colors.green,
                            ),
                            SizedBox(width: 6.w),
                            Expanded(
                              child: Text(
                                fileName,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: ColorPalette.black.withValues(
                                    alpha: 0.8,
                                  ),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                    // Show newly uploaded files in this session
                    ..._mediaFiles
                        .where((f) => _uploadedPaths.contains(f.path))
                        .map((file) {
                          final fileName = file.path.split('/').last;
                          return Padding(
                            padding: EdgeInsets.only(bottom: 4.h),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  size: 16.sp,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 6.w),
                                Expanded(
                                  child: Text(
                                    fileName,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: ColorPalette.black.withValues(
                                        alpha: 0.8,
                                      ),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),

            // Show existing attachments from backend
            if (widget.existingAttachments != null &&
                widget.existingAttachments!.isNotEmpty)
              Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Attachments (${widget.existingAttachments!.length})',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorPalette.black.withValues(alpha: 0.7),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    ...widget.existingAttachments!.map((attachment) {
                      final isImage = _isImageUrl(attachment.url);
                      return Padding(
                        padding: EdgeInsets.only(bottom: 4.h),
                        child: InkWell(
                          onTap: () {
                            if (isImage) {
                              _showImageViewer(attachment.url);
                            } else {
                              _openUrl(attachment.url);
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                isImage ? Icons.image : Icons.attach_file,
                                size: 16.sp,
                                color: ColorPalette.primary,
                              ),
                              SizedBox(width: 6.w),
                              Expanded(
                                child: Text(
                                  attachment.name,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: ColorPalette.primary,
                                    decoration: TextDecoration.underline,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/core/utility/toast_service.dart';
import 'package:asset_shield/features/common/widgets/schedule_form_primitives.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/data/services/attachment_service.dart';
import 'package:asset_shield/features/home/ui/widgets/checklist/media_label.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_ui/schedule_surface.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'attachment_row.dart';

class QuestionTile extends StatefulWidget {
  final ChecklistQuestionTemplate question;
  final Function(String questionId, String value, String note)? onAnswerChanged;
  final Function(String questionId, String attachmentId, String attachmentName)?
  onAttachmentUploaded;
  final Function(String questionId, String attachmentId)? onAttachmentDeleted;
  final bool readOnly;
  final String? initialValue;
  final String? initialNote;
  final String? scheduleV2Id;
  final String? equipmentId;
  final List<AttachmentV2>? existingAttachments;
  final List<Map<String, String>>? uploadedAttachmentMetadata;
  final bool initiallyExpanded;

  const QuestionTile({
    super.key,
    required this.question,
    this.onAnswerChanged,
    this.onAttachmentUploaded,
    this.onAttachmentDeleted,
    this.readOnly = false,
    this.initialValue,
    this.initialNote,
    this.scheduleV2Id,
    this.equipmentId,
    this.existingAttachments,
    this.uploadedAttachmentMetadata,
    this.initiallyExpanded = false,
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
  final Map<String, Map<String, String>> _uploadedFileMetadata =
      {}; // filePath -> {id, name}
  final List<Map<String, String>> _restoredAttachments = [];
  final Set<String> _deletedAttachmentIds =
      {}; // Track deleted existing attachments
  bool _isUploading = false;
  String? _deletingAttachmentId;

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
      color: ColorPalette.surface,
      items: [
        PopupMenuItem(
          child: const Row(
            children: [
              Icon(Icons.photo_library, size: 20),
              SizedBox(width: 8),
              Text('Photos'),
            ],
          ),
          onTap: () => Future.delayed(
            const Duration(milliseconds: 100),
            _pickFromGallery,
          ),
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

  Future<void> _pickFromGallery() async {
    try {
      final picker = ImagePicker();
      final List<XFile> images = await picker.pickMultiImage();

      if (images.isNotEmpty) {
        final files = images.map((image) => File(image.path)).toList();
        setState(() => _mediaFiles.addAll(files));
        await _uploadFiles(files);
      }
    } catch (e) {
      debugPrint("Gallery pick error: $e");
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
        _uploadedFileMetadata[file.path] = {
          'id': attachment.id,
          'name': attachment.name,
        };

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

  /// Delete an attachment with confirmation
  Future<void> _handleDeleteAttachment(
    String attachmentId,
    String attachmentName,
  ) async {
    if (widget.onAttachmentDeleted == null) return;

    // Show confirmation dialog
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Attachment'),
        content: Text('Are you sure you want to delete "$attachmentName"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(foregroundColor: ColorPalette.error),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    setState(() => _deletingAttachmentId = attachmentId);

    try {
      final attachmentService = AttachmentService();
      await attachmentService.deleteAttachment(attachmentId);

      setState(() {
        // Remove from restored attachments
        _restoredAttachments.removeWhere((a) => a['id'] == attachmentId);

        // Track deletion of existing attachments
        _deletedAttachmentIds.add(attachmentId);

        // Find file path BEFORE removing from metadata
        final pathToRemove = _uploadedFileMetadata.entries
            .where((e) => e.value['id'] == attachmentId)
            .map((e) => e.key)
            .firstOrNull;

        // Remove from newly uploaded files metadata
        _uploadedFileMetadata.removeWhere(
          (path, data) => data['id'] == attachmentId,
        );

        // Remove file path if it was newly uploaded in this session
        if (pathToRemove != null) {
          _uploadedPaths.remove(pathToRemove);
          _mediaFiles.removeWhere((f) => f.path == pathToRemove);
        }
      });

      // Notify parent to update state
      widget.onAttachmentDeleted!(widget.question.id, attachmentId);

      if (mounted) {
        ToastService.show('Attachment deleted successfully');
      }
    } catch (e) {
      ToastService.show('Failed to delete attachment: $e');
    } finally {
      setState(() => _deletingAttachmentId = null);
    }
  }

  @override
  void initState() {
    super.initState();
    _noteController = TextEditingController(
      text: widget.initialNote ?? widget.question.helpText ?? '',
    );
    _selectedValue = widget.initialValue ?? widget.question.question;
    _isExpanded = widget.initiallyExpanded;

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
        backgroundColor: ColorPalette.black,
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
                          Icon(
                            Icons.error,
                            color: ColorPalette.textInverse,
                            size: 48,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Failed to load image',
                            style: TextStyle(color: ColorPalette.textInverse),
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
                icon: Icon(
                  Icons.close,
                  color: ColorPalette.textInverse,
                  size: 30,
                ),
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

  bool _isPdfUrl(String url) {
    return url.toLowerCase().contains('.pdf');
  }

  bool _isTxtUrl(String url) {
    return url.toLowerCase().contains('.txt');
  }

  Future<void> _openPdf(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
  }

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      ToastService.show('Could not open link');
    }
  }

  IconData _attachmentIcon({
    required bool isImage,
    required bool isPdf,
    required bool isTxt,
  }) {
    if (isImage) return Icons.image_outlined;
    if (isPdf) return Icons.picture_as_pdf_outlined;
    if (isTxt) return Icons.description_outlined;
    return Icons.attach_file_rounded;
  }

  Widget _buildResponseOption(ResponseValue option) {
    final isSelected = _selectedValue == option.apiValue;
    final scheduleTheme = context.scheduleTheme;
    final width = widget.question.responseType == ResponseType.yesNo
        ? 130.w
        : 61.w;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10.r),
        onTap: widget.readOnly ? null : () => _onValueSelected(option.apiValue),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          width: width,
          height: 40.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected
                ? scheduleTheme.chipSelectedBackground
                : scheduleTheme.chipBackground,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: isSelected
                  ? scheduleTheme.chipSelectedBackground
                  : scheduleTheme.chipBorder,
            ),
          ),
          child: Text(
            option.displayName,
            style: ScheduleTextStyles.caption(
              context,
              color: isSelected
                  ? scheduleTheme.chipSelectedText
                  : scheduleTheme.primaryText,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAttachmentBlock({
    required String title,
    required List<Widget> children,
  }) {
    final scheduleTheme = context.scheduleTheme;

    if (children.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ScheduleTextStyles.caption(
              context,
              color: scheduleTheme.secondaryText,
            ),
          ),
          SizedBox(height: 6.h),
          ...children,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;
    final uploadedAttachments = _mediaFiles
        .where((file) => _uploadedPaths.contains(file.path))
        .map((file) {
          final fileName = file.path.split('/').last;
          final metadata = _uploadedFileMetadata[file.path];
          final attachmentId = metadata?['id'] ?? '';
          final isDeleting = _deletingAttachmentId == attachmentId;
          final isImage = _isImageUrl(fileName);
          final isPdf = _isPdfUrl(fileName);
          final isTxt = _isTxtUrl(fileName);

          return AttachmentRow(
            icon: _attachmentIcon(isImage: isImage, isPdf: isPdf, isTxt: isTxt),
            fileName: fileName,
            id: attachmentId,
            isViewable: isImage || isPdf || isTxt,
            isDeleting: isDeleting,
            showDelete:
                !widget.readOnly &&
                widget.onAttachmentDeleted != null &&
                attachmentId.isNotEmpty,
            onDelete: (id, name) => _handleDeleteAttachment(id, name),
          );
        })
        .toList();

    final existingAttachments =
        widget.existingAttachments
            ?.where(
              (attachment) => !_deletedAttachmentIds.contains(attachment.id),
            )
            .toList() ??
        [];
    final existingIds = existingAttachments
        .map((attachment) => attachment.id)
        .toSet();
    final restoredAttachments = _restoredAttachments.where((attachment) {
      final id = attachment['id'] ?? '';
      return !_deletedAttachmentIds.contains(id) && !existingIds.contains(id);
    }).toList();

    final persistedAttachments = [
      ...restoredAttachments.map((attachment) {
        final fileName = attachment['name'] ?? 'Unknown';
        final attachmentId = attachment['id'] ?? '';
        final isDeleting = _deletingAttachmentId == attachmentId;
        final isImage = _isImageUrl(fileName);
        final isPdf = _isPdfUrl(fileName);
        final isTxt = _isTxtUrl(fileName);

        return AttachmentRow(
          icon: _attachmentIcon(isImage: isImage, isPdf: isPdf, isTxt: isTxt),
          fileName: fileName,
          id: attachmentId,
          isViewable: isImage || isPdf || isTxt,
          isDeleting: isDeleting,
          showDelete: !widget.readOnly && widget.onAttachmentDeleted != null,
          onDelete: (id, name) => _handleDeleteAttachment(id, name),
        );
      }),
      ...existingAttachments.map((attachment) {
        final isImage = _isImageUrl(attachment.url);
        final isPdf = _isPdfUrl(attachment.url);
        final isTxt = _isTxtUrl(attachment.url);
        final isDeleting = _deletingAttachmentId == attachment.id;

        return AttachmentRow(
          icon: _attachmentIcon(isImage: isImage, isPdf: isPdf, isTxt: isTxt),
          fileName: attachment.name,
          id: attachment.id,
          isViewable: isImage || isPdf || isTxt,
          isDeleting: isDeleting,
          showDelete: !widget.readOnly && widget.onAttachmentDeleted != null,
          onTap: () {
            if (isImage) {
              _showImageViewer(attachment.url);
            } else if (isPdf) {
              _openPdf(attachment.url);
            } else {
              _openUrl(attachment.url);
            }
          },
          onDelete: (id, name) => _handleDeleteAttachment(id, name),
        );
      }),
    ];

    return ScheduleSurfaceCard(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      padding: EdgeInsets.zero,
      boxShadow: const [],
      radius: 14,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: _isExpanded,
          tilePadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          childrenPadding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
          iconColor: scheduleTheme.icon,
          collapsedIconColor: scheduleTheme.icon,
          shape: const Border(),
          collapsedShape: const Border(),
          onExpansionChanged: (expanded) {
            setState(() {
              _isExpanded = expanded;
            });
          },
          title: Text(
            widget.question.question,
            style: ScheduleTextStyles.label(
              context,
              size: AppFontSizes.caption,
            ),
          ),
          children: [
            if ((widget.question.helpText ?? '').isNotEmpty)
              Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: Text(
                  widget.question.helpText ?? '',
                  style: ScheduleTextStyles.caption(
                    context,
                    color: scheduleTheme.secondaryText,
                  ),
                ),
              ),

            Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: _getResponseOptions()
                    .map(_buildResponseOption)
                    .toList(),
              ),
            ),

            TextField(
              controller: _noteController,
              onChanged: widget.readOnly ? null : (_) => _onNoteChanged(),
              enabled: !widget.readOnly,
              decoration: ScheduleFormDecorations.input(
                context,
                hintText: widget.readOnly ? '' : 'Note',
                enabled: !widget.readOnly,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
              ),
              maxLines: 3,
              style: ScheduleTextStyles.value(
                context,
                size: AppFontSizes.caption,
                color: widget.readOnly
                    ? scheduleTheme.secondaryText
                    : scheduleTheme.primaryText,
              ),
            ),

            SizedBox(height: 12.h),

            if (!widget.readOnly)
              Center(
                child: MediaLabel(onTap: _isUploading ? null : _showMediaMenu),
              ),

            if (_isUploading)
              Padding(
                padding: EdgeInsets.only(top: 12.h),
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
                      style: ScheduleTextStyles.caption(
                        context,
                        color: scheduleTheme.secondaryText,
                      ),
                    ),
                  ],
                ),
              ),

            _buildAttachmentBlock(
              title: 'Uploaded (${uploadedAttachments.length})',
              children: uploadedAttachments,
            ),
            _buildAttachmentBlock(
              title: 'Attachments (${persistedAttachments.length})',
              children: persistedAttachments,
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:async';
import 'dart:developer';
import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/core/utility/storage_service.dart';
import 'package:asset_shield/core/utility/toast_service.dart';
import 'package:asset_shield/features/home/data/models/record_draft_model.dart';
import 'package:asset_shield/features/home/data/models/record_create_request.dart';
import 'package:asset_shield/features/home/data/models/record_response.dart';
import 'package:asset_shield/features/home/data/providers/record_with_checklist_provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/common/widgets/form_date_field.dart';
import 'package:asset_shield/features/common/widgets/form_multi_select_field.dart';
import 'package:asset_shield/features/common/widgets/form_text_field.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/checklist/checklist_section.dart';
import 'package:asset_shield/features/home/data/models/checklist_answer_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddRecordScreen extends ConsumerStatefulWidget {
  final ScheduleV2Response schedule;
  const AddRecordScreen({super.key, required this.schedule});

  @override
  ConsumerState<AddRecordScreen> createState() => _AddRecordScreenState();
}

class _AddRecordScreenState extends ConsumerState<AddRecordScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _prefilled = false;

  // Debounce timer to reduce frequency of draft saves
  Timer? _debounceTimer;
  final Duration _debounceDuration = const Duration(milliseconds: 800);

  // Controllers
  final _equipmentController = TextEditingController();
  final _scheduleItemController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _actionCreatedController = TextEditingController();
  final _commentsController = TextEditingController();
  final _scheduleTypeController = TextEditingController();

  // Form values
  DateTime? _recordCreatedDate;
  List<String> _selectedInspectedComponents = [];
  // RecordStatus? _selectedStatus;
  DateTime? _inspectionDate;
  // final List<File> _selectedFiles = [];
  final Map<String, ChecklistAnswerData> _checklistAnswers = {};
  final Map<String, List<String>> _questionAttachmentIds = {};
  final Map<String, List<Map<String, String>>> _questionAttachmentMetadata = {};

  List<MultiSelectItem<String>> get _componentItems => widget
      .schedule
      .components
      .where((sc) => sc.component.name.isNotEmpty)
      .map(
        (sc) => MultiSelectItem<String>(
          value: sc.componentId,
          label: sc.component.name,
        ),
      )
      .toList();

  @override
  void initState() {
    super.initState();
    _recordCreatedDate = DateTime.now();
    _inspectionDate = DateTime.now();
    // Prefill schedule defaults (equipment, schedule item, schedule type)
    // even when there is no existing record attached to the schedule.
    _initialiseFields(null);
    // Load draft data if exists
    _loadDraftData();

    // Add listeners to text fields to auto-save (debounced)
    _descriptionController.addListener(_scheduleSaveDraft);
    _actionCreatedController.addListener(_scheduleSaveDraft);
    _commentsController.addListener(_scheduleSaveDraft);
  }

  final _storage = StorageService();

  Future<void> _loadDraftData() async {
    try {
      // Wait a bit for the provider to load
      await Future.delayed(const Duration(milliseconds: 100));

      // Don't load draft if there's already data from the backend
      final recordWithChecklistAsync = ref.read(
        recordWithChecklistProvider(widget.schedule.id),
      );

      // Skip loading draft if record already exists
      if (recordWithChecklistAsync.hasValue &&
          recordWithChecklistAsync.value?.hasSubmittedAnswers == true) {
        await _clearDraftData();
        return;
      }

      final draft = await _storage.getDraftRecordModel(widget.schedule.id);

      if (draft != null) {
        setState(() {
          // Load form fields
          _descriptionController.text = draft.description ?? '';
          _actionCreatedController.text = draft.actionCreated ?? '';
          _commentsController.text = draft.comments ?? '';

          // Load dates
          _recordCreatedDate = draft.recordCreatedDate ?? _recordCreatedDate;
          _inspectionDate = draft.inspectionDate ?? _inspectionDate;

          // Load selected components
          _selectedInspectedComponents = draft.selectedInspectedComponents;

          // Load checklist answers
          _checklistAnswers.clear();
          draft.checklistAnswers.forEach((key, value) {
            _checklistAnswers[key] = ChecklistAnswerData(
              value: value.value,
              note: value.note,
            );
          });

          // Load attachment metadata
          _questionAttachmentIds.clear();
          _questionAttachmentMetadata.clear();

          draft.questionAttachments.forEach((questionId, attachments) {
            _questionAttachmentIds[questionId] = attachments
                .map((att) => att.id)
                .toList();
            _questionAttachmentMetadata[questionId] = attachments
                .map((att) => {'id': att.id, 'name': att.name})
                .toList();
          });
        });

        log('Draft data loaded for schedule ${widget.schedule.id}');
      }
    } catch (e) {
      log('Failed to load draft data: $e');
    }
  }

  Future<void> _saveDraftData() async {
    try {
      // Convert checklist answers to draft format
      final checklistAnswers = _checklistAnswers.map(
        (key, value) => MapEntry(
          key,
          ChecklistAnswerDraft(value: value.value, note: value.note),
        ),
      );

      // Convert attachment metadata to draft format
      final questionAttachments = <String, List<AttachmentDraft>>{};
      _questionAttachmentMetadata.forEach((questionId, metadata) {
        questionAttachments[questionId] = metadata
            .map(
              (m) => AttachmentDraft(id: m['id'] ?? '', name: m['name'] ?? ''),
            )
            .toList();
      });

      final draft = RecordDraftModel(
        description: _descriptionController.text.trim(),
        actionCreated: _actionCreatedController.text.trim(),
        comments: _commentsController.text.trim(),
        recordCreatedDate: _recordCreatedDate,
        inspectionDate: _inspectionDate,
        selectedInspectedComponents: _selectedInspectedComponents,
        checklistAnswers: checklistAnswers,
        questionAttachments: questionAttachments,
      );

      await _storage.saveDraftRecordModel(widget.schedule.id, draft);
    } catch (e) {
      log('Failed to save draft data: $e');
    }
  }

  /// Schedule a debounced save to reduce excessive writes.
  void _scheduleSaveDraft() {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(_debounceDuration, () {
      _saveDraftData();
    });
  }

  Future<void> _clearDraftData() async {
    try {
      await _storage.deleteDraftRecordModel(widget.schedule.id);
      log('Draft data cleared for schedule ${widget.schedule.id}');
    } catch (e) {
      log('Failed to clear draft data: $e');
    }
  }

  void _initialiseFields(RecordResponse? existingRecord) {
    // Always fill schedule defaults
    _equipmentController.text = widget.schedule.equipment?.name ?? '';
    _scheduleItemController.text = widget.schedule.scheduleName;
    _scheduleTypeController.text = widget.schedule.scheduleType?.value ?? '';

    if (existingRecord != null) {
      _descriptionController.text = existingRecord.description ?? "";
      _actionCreatedController.text = existingRecord.actionCreated ?? '';
      _commentsController.text = existingRecord.comments ?? '';

      _recordCreatedDate = existingRecord.recordCreatedDate ?? DateTime.now();
      _inspectionDate = existingRecord.inspectionDate ?? DateTime.now();

      _selectedInspectedComponents =
          existingRecord.inspectedComponents
              ?.map((e) => e.componentId ?? '')
              .where((id) => id.isNotEmpty)
              .toList() ??
          [];

      // _selectedStatus = switch (existingRecord.status) {
      //   'PendingApproval' => RecordStatus.pendingApproval,
      //   'Approved' => RecordStatus.approved,
      //   'Draft' => RecordStatus.draft,
      //   _ => null,
      // };
    }
  }

  @override
  void dispose() {
    // Cancel any pending debounced save and perform a final save.
    _debounceTimer?.cancel();
    _saveDraftData();
    _descriptionController.dispose();
    _actionCreatedController.dispose();
    _commentsController.dispose();
    super.dispose();
  }

  // Future<void> _handleSelectFiles() async {
  //   // Request storage permissions
  //   final hasPermission = await Helpers.requestStoragePermissions(context);
  //   if (!hasPermission) return;

  //   // Pick files using helper
  //   final files = await Helpers.pickFiles(allowMultiple: true);

  //   if (files != null && files.isNotEmpty) {
  //     setState(() {
  //       // Append new files and avoid duplicates by path
  //       for (final file in files) {
  //         final exists = _selectedFiles.any(
  //           (existing) => existing.path == file.path,
  //         );
  //         if (!exists) _selectedFiles.add(file);
  //       }
  //     });
  //   }
  // }

  void _handleClose() {
    router.pop();
  }

  void _handleChecklistAnswerChanged(
    String questionId,
    String value,
    String note,
  ) {
    setState(() {
      _checklistAnswers[questionId] = ChecklistAnswerData(
        value: value,
        note: note,
      );
    });
    _scheduleSaveDraft();
  }

  void _handleAttachmentUploaded(
    String questionId,
    String attachmentId,
    String attachmentName,
  ) {
    setState(() {
      // Add attachment ID if not already present
      _questionAttachmentIds.putIfAbsent(questionId, () => []);
      if (!_questionAttachmentIds[questionId]!.contains(attachmentId)) {
        _questionAttachmentIds[questionId]!.add(attachmentId);
      }

      // Add attachment metadata if not already present
      _questionAttachmentMetadata.putIfAbsent(questionId, () => []);
      if (!_questionAttachmentMetadata[questionId]!.any(
        (m) => m['id'] == attachmentId,
      )) {
        _questionAttachmentMetadata[questionId]!.add({
          'id': attachmentId,
          'name': attachmentName,
        });
      }
    });
    _scheduleSaveDraft();
  }

  /// Handle attachment deletion
  void _handleAttachmentDeleted(String questionId, String attachmentId) {
    setState(() {
      // Remove from attachment IDs
      _questionAttachmentIds[questionId]?.remove(attachmentId);
      if (_questionAttachmentIds[questionId]?.isEmpty ?? false) {
        _questionAttachmentIds.remove(questionId);
      }

      // Remove from attachment metadata
      _questionAttachmentMetadata[questionId]?.removeWhere(
        (m) => m['id'] == attachmentId,
      );
      if (_questionAttachmentMetadata[questionId]?.isEmpty ?? false) {
        _questionAttachmentMetadata.remove(questionId);
      }
    });
    _scheduleSaveDraft();
  }

  bool _validateChecklist() {
    if (widget.schedule.checklistQuestionTemplates.isEmpty) {
      return true;
    }

    final totalQuestions = widget.schedule.checklistQuestionTemplates.length;

    if (_checklistAnswers.length < totalQuestions) {
      final answeredQuestions = _checklistAnswers.length;
      ToastService.show(
        'Please answer all $totalQuestions checklist questions. '
        'You have answered $answeredQuestions.',
      );
      return false;
    }

    // Validate all answers have values
    for (final entry in _checklistAnswers.entries) {
      if (entry.value.value.isEmpty) {
        ToastService.show('Please select a response for all questions');
        return false;
      }
    }

    return true;
  }

  Future<void> _handleCreate() async {
    if (!(_formKey.currentState?.validate() ?? false)) {
      ToastService.show('Please fill all required fields');
      return;
    }

    EasyLoading.show();

    try {
      // Validate checklist
      if (!_validateChecklist()) {
        EasyLoading.dismiss();
        return;
      }

      // Prepare checklist answers for the combined API
      final checklistAnswers = _checklistAnswers.entries
          .map(
            (entry) => ChecklistAnswerItem(
              questionId: entry.key,
              value: entry.value.value,
              note: entry.value.note,
              attachmentIds: _questionAttachmentIds[entry.key] ?? [],
            ),
          )
          .toList();

      final user = await _storage.getUserObject();

      // Create the record with checklist answers in one API call
      final payload = RecordCreateRequest(
        description: _descriptionController.text.trim(),
        recordCreatedDate: _recordCreatedDate!,
        inspectionDate: _inspectionDate!,
        actionCreated: _actionCreatedController.text.trim(),
        comments: _commentsController.text.trim().isEmpty
            ? null
            : _commentsController.text.trim(),
        equipmentID: widget.schedule.equipmentId,
        inspectedComponentIDs: _selectedInspectedComponents,
        scheduleTypeID: widget.schedule.scheduleTypeId,
        attachmentIDs: [],
        checklistAnswers: checklistAnswers,
        submittedBy: user?.id ?? '',
      );

      final notifier = ref.read(
        recordWithChecklistProvider(widget.schedule.id).notifier,
      );
      final response = await notifier.createRecordWithChecklist(payload);

      log(
        'Record created with ${response.data.answeredQuestions.length} checklist answers',
      );

      // Clear draft data after successful submission
      await _clearDraftData();

      router.pop();
      ToastService.show(response.message ?? 'Record submitted successfully');
    } catch (e) {
      ToastService.show('Failed to create record: $e');
    } finally {
      EasyLoading.dismiss();
    }
  }

  @override
  Widget build(BuildContext context) {
    final recordWithChecklistAsync = ref.watch(
      recordWithChecklistProvider(widget.schedule.id),
    );
    final state = recordWithChecklistAsync.value;
    final existingRecord = state?.record;
    final hasSubmittedAnswers = state?.hasSubmittedAnswers ?? false;
    final isRejected = state?.record?.status == RecordStatus.rejected;
    final isReadOnly = hasSubmittedAnswers && !isRejected;

    if (!_prefilled && existingRecord != null) {
      _initialiseFields(existingRecord);
      _prefilled = true;
      // Clear draft data if viewing/editing existing record
      _clearDraftData();
    }

    // Initialize checklist answers from fetched data if not already done
    if (hasSubmittedAnswers && _checklistAnswers.isEmpty) {
      for (final question in state?.answeredQuestions ?? []) {
        if (question.value != null && question.value!.isNotEmpty) {
          _checklistAnswers[question.id] = ChecklistAnswerData(
            value: question.value!,
            note: question.note ?? '',
          );
        }
      }
    }

    // Convert local state to initialValues format
    final initialValues = <String, Map<String, String>>{};
    _checklistAnswers.forEach((key, value) {
      initialValues[key] = {'value': value.value, 'note': value.note};
    });

    // Build attachment map for viewing
    final questionAttachments = <String, List<AttachmentV2>>{};
    if (hasSubmittedAnswers) {
      for (final question in state?.answeredQuestions ?? []) {
        if (question.attachments != null && question.attachments!.isNotEmpty) {
          questionAttachments[question.id] = question.attachments!;
        }
      }
    }

    return AppScaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        backgroundColor: ColorPalette.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: ColorPalette.black),
          onPressed: _handleClose,
        ),
        title: Text(
          isRejected
              ? 'Edit Record'
              : (hasSubmittedAnswers ? 'View Record' : 'Add Record'),
          style: AppTextStyles.h2(
            context,
          ).copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Equipment Dropdown
                      FormTextField(
                        label: 'Equipment',
                        hint: 'Enter equipment',
                        controller: _equipmentController,
                        enabled: false,
                      ),
                      SizedBox(height: 20.h),

                      // Description Field
                      FormTextField(
                        label: 'Description',
                        hint: 'Enter description',
                        controller: _descriptionController,
                        isRequired: isReadOnly ? false : true,
                        enabled: !isReadOnly,
                        maxLines: 4,
                        minLines: 3,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter description';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.h),

                      // Credited Items Dropdown
                      FormTextField(
                        label: 'Schedule Item',
                        hint: ' ',
                        controller: _scheduleItemController,
                        enabled: false,
                      ),
                      SizedBox(height: 20.h),

                      // Record Created Date
                      FormDateField(
                        label: 'Record created date',
                        selectedDate: _recordCreatedDate,
                        isRequired: isReadOnly ? false : true,
                        readOnly: isReadOnly,
                        onDateSelected: (date) {
                          setState(() {
                            _recordCreatedDate = date;
                          });
                          _scheduleSaveDraft();
                        },
                      ),
                      SizedBox(height: 20.h),

                      // Inspected Components Multi-Select
                      FormMultiSelectField<String>(
                        label: 'Inspected components',
                        hint: 'Select components',
                        selectedValues: _selectedInspectedComponents,
                        isRequired: isReadOnly ? false : true,
                        items: _componentItems,
                        itemLabel: (componentId) {
                          // Find the component name by ID
                          final component = widget.schedule.components
                              .firstWhere((sc) => sc.componentId == componentId)
                              .component;
                          return component.name;
                        },
                        onChanged: (values) {
                          if (!isReadOnly) {
                            setState(() {
                              _selectedInspectedComponents = values;
                            });
                            _scheduleSaveDraft();
                          }
                        },
                        validator: isReadOnly
                            ? (_) => null
                            : (values) {
                                if (values == null || values.isEmpty) {
                                  return 'Please select at least one component';
                                }
                                return null;
                              },
                        readOnly: isReadOnly,
                      ),
                      SizedBox(height: 20.h),

                      // Schedule Type Dropdown
                      FormTextField(
                        label: 'Schedule Type',
                        hint: ' ',
                        controller: _scheduleTypeController,
                        enabled: false,
                      ),
                      SizedBox(height: 20.h),

                      // Inspection Date
                      FormDateField(
                        label: 'Inspection Date',
                        selectedDate: _inspectionDate,
                        isRequired: isReadOnly ? false : true,
                        readOnly: isReadOnly,
                        onDateSelected: (date) {
                          setState(() {
                            _inspectionDate = date;
                          });
                          _scheduleSaveDraft();
                        },
                      ),
                      SizedBox(height: 20.h),

                      // Action Created Field
                      FormTextField(
                        label: 'Action Created',
                        hint: 'Enter action created',
                        controller: _actionCreatedController,
                        isRequired: isReadOnly ? false : true,
                        enabled: !isReadOnly,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter action created';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.h),

                      // Attachment File Picker
                      // FormFilePickerField(
                      //   label: 'Attachment',
                      //   selectedFiles: _selectedFiles,
                      //   onSelectFiles: _handleSelectFiles,
                      // ),
                      // SizedBox(height: 20.h),

                      // Comments Field
                      FormTextField(
                        label: 'Comments',
                        hint: 'Enter comments',
                        controller: _commentsController,
                        maxLines: 4,
                        enabled: !isReadOnly,
                        minLines: 3,
                      ),
                      SizedBox(height: 12.h),

                      // Checklist Sections (Internal / External)
                      if (widget
                          .schedule
                          .checklistQuestionTemplates
                          .isNotEmpty) ...[
                        Text(
                          'Checklist',
                          style: AppTextStyles.h2(
                            context,
                          ).copyWith(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 8.h),
                        recordWithChecklistAsync.isLoading
                            ? Center(
                                child: Padding(
                                  padding: EdgeInsets.all(24.h),
                                  child: CircularProgressIndicator(),
                                ),
                              )
                            : ChecklistSections(
                                questions:
                                    widget.schedule.checklistQuestionTemplates,
                                onAnswerChanged: isReadOnly
                                    ? null
                                    : _handleChecklistAnswerChanged,
                                onAttachmentUploaded: isReadOnly
                                    ? null
                                    : _handleAttachmentUploaded,
                                onAttachmentDeleted: isReadOnly
                                    ? null
                                    : _handleAttachmentDeleted,
                                readOnly: isReadOnly,
                                initialValues: initialValues,
                                questionAttachments: questionAttachments,
                                uploadedAttachmentMetadata:
                                    _questionAttachmentMetadata,
                                scheduleV2Id: widget.schedule.id,
                                equipmentId: widget.schedule.equipmentId,
                              ),
                        SizedBox(height: 24.h),
                      ],
                    ],
                  ),
                ),
              ),

              // Bottom Action Buttons
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: ColorPalette.white,
                  boxShadow: [
                    BoxShadow(
                      color: ColorPalette.black.withValues(alpha: 0.1),
                      blurRadius: 4,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableButton(
                        text: 'Close',
                        onPressed: _handleClose,
                        backgroundColor: ColorPalette.white,
                        textStyle: TextStyle(
                          color: ColorPalette.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        height: 48.h,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: ReusableButton(
                        text: isRejected ? 'Resubmit' : 'Submit',
                        onPressed: (hasSubmittedAnswers && !isRejected)
                            ? null
                            : _handleCreate,
                        backgroundColor: (hasSubmittedAnswers && !isRejected)
                            ? ColorPalette.black.withValues(alpha: 0.3)
                            : ColorPalette.black,
                        height: 48.h,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

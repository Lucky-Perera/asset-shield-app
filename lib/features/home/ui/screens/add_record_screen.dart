import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/core/utility/storage_service.dart';
import 'package:asset_shield/core/utility/toast_service.dart';
import 'package:asset_shield/features/home/data/models/record_create_request.dart';
import 'package:asset_shield/features/home/data/models/record_response.dart';
import 'package:asset_shield/features/home/data/providers/record_with_checklist_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/common/widgets/form_date_field.dart';
import 'package:asset_shield/features/common/widgets/form_file_picker_field.dart';
import 'package:asset_shield/features/common/widgets/form_multi_select_field.dart';
import 'package:asset_shield/features/common/widgets/form_text_field.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/checklist/checklist_section.dart';
import 'package:asset_shield/features/home/data/models/checklist_state.dart';
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
  final List<File> _selectedFiles = [];
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

    // Add listeners to text fields to auto-save
    _descriptionController.addListener(_saveDraftData);
    _actionCreatedController.addListener(_saveDraftData);
    _commentsController.addListener(_saveDraftData);
  }

  String get _draftStorageKey => 'draft_record_${widget.schedule.id}';

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

      final storage = StorageService();
      final draftJson = await storage.getDraftRecord(_draftStorageKey);

      if (draftJson != null) {
        final draft = jsonDecode(draftJson) as Map<String, dynamic>;

        setState(() {
          // Load form fields
          if (draft['description'] != null) {
            _descriptionController.text = draft['description'];
          }
          if (draft['actionCreated'] != null) {
            _actionCreatedController.text = draft['actionCreated'];
          }
          if (draft['comments'] != null) {
            _commentsController.text = draft['comments'];
          }

          // Load dates
          if (draft['recordCreatedDate'] != null) {
            _recordCreatedDate = DateTime.parse(draft['recordCreatedDate']);
          }
          if (draft['inspectionDate'] != null) {
            _inspectionDate = DateTime.parse(draft['inspectionDate']);
          }

          // Load selected components
          if (draft['selectedInspectedComponents'] != null) {
            _selectedInspectedComponents = List<String>.from(
              draft['selectedInspectedComponents'],
            );
          }

          // Load checklist answers
          if (draft['checklistAnswers'] != null) {
            final answersMap =
                draft['checklistAnswers'] as Map<String, dynamic>;
            _checklistAnswers.clear();
            answersMap.forEach((key, value) {
              _checklistAnswers[key] = ChecklistAnswerData(
                value: value['value'],
                note: value['note'],
              );
            });
          }

          // Load attachment IDs
          if (draft['questionAttachmentIds'] != null) {
            final attachmentsMap =
                draft['questionAttachmentIds'] as Map<String, dynamic>;
            _questionAttachmentIds.clear();
            attachmentsMap.forEach((key, value) {
              _questionAttachmentIds[key] = List<String>.from(value);
            });
          }
          
          // Load attachment metadata
          if (draft['questionAttachmentMetadata'] != null) {
            final metadataMap =
                draft['questionAttachmentMetadata'] as Map<String, dynamic>;
            _questionAttachmentMetadata.clear();
            metadataMap.forEach((key, value) {
              _questionAttachmentMetadata[key] = (value as List)
                  .map((e) => Map<String, String>.from(e))
                  .toList();
            });
          }
        });

        log('Draft data loaded for schedule ${widget.schedule.id}');
      }
    } catch (e) {
      log('Failed to load draft data: $e');
    }
  }

  Future<void> _saveDraftData() async {
    try {
      final draft = {
        'description': _descriptionController.text.trim(),
        'actionCreated': _actionCreatedController.text.trim(),
        'comments': _commentsController.text.trim(),
        'recordCreatedDate': _recordCreatedDate?.toIso8601String(),
        'inspectionDate': _inspectionDate?.toIso8601String(),
        'selectedInspectedComponents': _selectedInspectedComponents,
        'checklistAnswers': _checklistAnswers.map(
          (key, value) =>
              MapEntry(key, {'value': value.value, 'note': value.note}),
        ),
        'questionAttachmentIds': _questionAttachmentIds,
        'questionAttachmentMetadata': _questionAttachmentMetadata,
      };

      final storage = StorageService();
      await storage.saveDraftRecord(_draftStorageKey, jsonEncode(draft));
    } catch (e) {
      log('Failed to save draft data: $e');
    }
  }

  Future<void> _clearDraftData() async {
    try {
      final storage = StorageService();
      await storage.deleteDraftRecord(_draftStorageKey);
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
    _descriptionController.dispose();
    _actionCreatedController.dispose();
    _commentsController.dispose();
    super.dispose();
  }

  Future<void> _handleSelectFiles() async {
    // Request appropriate permissions on Android before picking files.
    if (Platform.isAndroid) {
      // Request both storage and manage external storage where available.
      final statuses = await [
        Permission.storage,
        Permission.manageExternalStorage,
      ].request();

      final storageGranted =
          (statuses[Permission.storage]?.isGranted ?? false) ||
          (statuses[Permission.manageExternalStorage]?.isGranted ?? false);

      if (!storageGranted) {
        if (!mounted) return;
        // If permanently denied, prompt to open app settings.
        final permanentlyDenied =
            (statuses[Permission.storage]?.isPermanentlyDenied ?? false) ||
            (statuses[Permission.manageExternalStorage]?.isPermanentlyDenied ??
                false);
        if (permanentlyDenied) {
          showDialog<void>(
            context: context,
            builder: (ctx) => AlertDialog(
              title: const Text('Permission required'),
              content: const Text(
                'Storage permission is permanently denied. Please enable it in app settings to pick files.',
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(ctx).pop(),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    openAppSettings();
                    router.pop();
                  },
                  child: const Text('Open Settings'),
                ),
              ],
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Storage permission denied')),
          );
        }
        return;
      }
    }

    try {
      // Explicitly allow any file type and multiple selection.
      final result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.any,
      );
      if (result != null && result.files.isNotEmpty) {
        final picked = result.files
            .where((f) => f.path != null)
            .map((f) => File(f.path!))
            .toList();
        setState(() {
          // Append new files and avoid duplicates by path.
          for (final file in picked) {
            final exists = _selectedFiles.any(
              (existing) => existing.path == file.path,
            );
            if (!exists) _selectedFiles.add(file);
          }
        });
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to pick files: $e')));
    }
  }

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
    _saveDraftData();
  }

  void _handleAttachmentUploaded(String questionId, String attachmentId, String attachmentName) {
    setState(() {
      _questionAttachmentIds.putIfAbsent(questionId, () => []);
      if (!_questionAttachmentIds[questionId]!.contains(attachmentId)) {
        _questionAttachmentIds[questionId]!.add(attachmentId);
      }
      
      _questionAttachmentMetadata.putIfAbsent(questionId, () => []);
      if (!_questionAttachmentMetadata[questionId]!.any((m) => m['id'] == attachmentId)) {
        _questionAttachmentMetadata[questionId]!.add({
          'id': attachmentId,
          'name': attachmentName,
        });
      }
    });
    _saveDraftData();
  }

  void _handleCreate() async {
    EasyLoading.show();

    if (_formKey.currentState?.validate() ?? false) {
      // Validate that all checklist questions are answered
      if (widget.schedule.checklistQuestionTemplates.isNotEmpty) {
        final totalQuestions =
            widget.schedule.checklistQuestionTemplates.length;

        if (_checklistAnswers.length < totalQuestions) {
          final answeredQuestions = _checklistAnswers.length;
          EasyLoading.dismiss();
          ToastService.show(
            'Please answer all $totalQuestions checklist questions. '
            'You have answered $answeredQuestions.',
          );
          return;
        }

        // Validate all answers
        for (final entry in _checklistAnswers.entries) {
          if (entry.value.value.isEmpty) {
            EasyLoading.dismiss();
            ToastService.show('Please select a response for all questions');
            return;
          }
        }
      }

      try {
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

        final user = await StorageService().getUserObject();

        // Create the record with checklist answers in one API call
        final RecordCreateRequest payload = RecordCreateRequest(
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
          attachmentIDs: [], // send empty array when no attachments yet
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

        // ref.invalidate(schedulesProvider);
        router.pop();
        ToastService.show(response.message ?? 'Record submitted successfully');
      } catch (e) {
        ToastService.show('Failed to create record: $e');
      } finally {
        EasyLoading.dismiss();
      }
    } else {
      EasyLoading.dismiss();
      ToastService.show('Please fill all required fields');
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
                          _saveDraftData();
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
                            _saveDraftData();
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
                          _saveDraftData();
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
                      FormFilePickerField(
                        label: 'Attachment',
                        selectedFiles: _selectedFiles,
                        onSelectFiles: _handleSelectFiles,
                      ),
                      SizedBox(height: 20.h),

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
                                readOnly: isReadOnly,
                                initialValues: initialValues,
                                questionAttachments: questionAttachments,
                                uploadedAttachmentMetadata: _questionAttachmentMetadata,
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

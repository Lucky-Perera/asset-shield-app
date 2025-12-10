import 'dart:developer';
import 'dart:io';
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
    final isReadOnly = hasSubmittedAnswers;

    if (!_prefilled && existingRecord != null) {
      _initialiseFields(existingRecord);
      _prefilled = true;
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
          hasSubmittedAnswers ? 'View Record' : 'Add Record',
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

                      // Status Dropdown (uses Status enum)
                      // FormDropdownField<RecordStatus>(
                      //   label: 'Status',
                      //   hint: 'Select status',
                      //   value: _selectedStatus,
                      //   readOnly: isReadOnly,
                      //   items: [
                      //     DropdownMenuItem(
                      //       value: RecordStatus.pendingApproval,
                      //       child: Text(
                      //         'Pending Approval',
                      //         style: TextStyle(fontSize: 14.sp),
                      //       ),
                      //     ),
                      //     DropdownMenuItem(
                      //       value: RecordStatus.approved,
                      //       child: Text(
                      //         'Approved',
                      //         style: TextStyle(fontSize: 14.sp),
                      //       ),
                      //     ),
                      //     DropdownMenuItem(
                      //       value: RecordStatus.draft,
                      //       child: Text(
                      //         'Draft',
                      //         style: TextStyle(fontSize: 14.sp),
                      //       ),
                      //     ),
                      //   ],
                      //   onChanged: (value) {
                      //     setState(() {
                      //       _selectedStatus = value;
                      //     });
                      //   },
                      //   validator: (value) {
                      //     if (value == null) {
                      //       return 'Please select status';
                      //     }
                      //     return null;
                      //   },
                      // ),
                      // SizedBox(height: 20.h),

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
                                onAnswerChanged: hasSubmittedAnswers
                                    ? null
                                    : _handleChecklistAnswerChanged,
                                readOnly: hasSubmittedAnswers,
                                initialValues: initialValues,
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
                        text: 'Submit',
                        onPressed: hasSubmittedAnswers ? null : _handleCreate,
                        backgroundColor: hasSubmittedAnswers
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

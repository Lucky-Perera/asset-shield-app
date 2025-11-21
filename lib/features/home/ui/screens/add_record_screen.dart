import 'dart:io';
import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/common/widgets/form_date_field.dart';
import 'package:asset_shield/features/common/widgets/form_dropdown_field.dart';
import 'package:asset_shield/features/common/widgets/form_file_picker_field.dart';
import 'package:asset_shield/features/common/widgets/form_multi_select_field.dart';
import 'package:asset_shield/features/common/widgets/form_text_field.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
import 'package:asset_shield/features/home/data/models/schedule_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddRecordScreen extends StatefulWidget {
  final Schedule schedule;
  const AddRecordScreen({super.key, required this.schedule});

  @override
  State<AddRecordScreen> createState() => _AddRecordScreenState();
}

class _AddRecordScreenState extends State<AddRecordScreen> {
  final _formKey = GlobalKey<FormState>();

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
  String? _selectedStatus;
  DateTime? _inspectionDate;
  List<File> _selectedFiles = [];

  List<MultiSelectItem<String>> get _componentItems => widget
      .schedule
      .components
      .where(
        (sc) => sc.component?.name != null && sc.component!.name!.isNotEmpty,
      )
      .map(
        (sc) => MultiSelectItem<String>(
          value: sc.componentId ?? '',
          label: sc.component!.name!,
        ),
      )
      .toList();

  @override
  void initState() {
    super.initState();
    // Set default dates to today
    _recordCreatedDate = DateTime.now();
    _inspectionDate = DateTime.now();
    _initialiseFields();
  }

  void _initialiseFields() {
    // Pre-fill equipment field based on schedule data
    _equipmentController.text = widget.schedule.equipment?.name ?? '';
    _scheduleItemController.text = widget.schedule.scheduleID;
    _scheduleTypeController.text = widget.schedule.scheduleTypeId;
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _actionCreatedController.dispose();
    _commentsController.dispose();
    super.dispose();
  }

  void _handleSelectFiles() {}

  void _handleUploadFiles() {}

  void _handleClose() {
    router.pop();
  }

  void _handleCreate() {
    if (_formKey.currentState?.validate() ?? false) {
      // Show success message or navigate back
      router.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: ColorPalette.grey50,
      appBar: AppBar(
        backgroundColor: ColorPalette.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: ColorPalette.black),
          onPressed: _handleClose,
        ),
        title: Text(
          'Add Record',
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
                        isRequired: true,
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
                        isRequired: true,
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
                        isRequired: true,
                        items: _componentItems,
                        itemLabel: (componentId) {
                          // Find the component name by ID
                          final component = widget.schedule.components
                              .firstWhere(
                                (sc) => sc.componentId == componentId,
                                orElse: () => const ScheduleComponent(),
                              )
                              .component;
                          return component?.name ?? '';
                        },
                        onChanged: (values) {
                          setState(() {
                            _selectedInspectedComponents = values;
                          });
                        },
                        validator: (values) {
                          if (values == null || values.isEmpty) {
                            return 'Please select at least one component';
                          }
                          return null;
                        },
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

                      // Status Dropdown
                      FormDropdownField<String>(
                        label: 'Status',
                        hint: 'Select status',
                        value: _selectedStatus,
                        items: [
                          DropdownMenuItem(
                            value: 'pending',
                            child: Text(
                              'Pending',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'completed',
                            child: Text(
                              'Completed',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'in_progress',
                            child: Text(
                              'In Progress',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedStatus = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select status';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.h),

                      // Inspection Date
                      FormDateField(
                        label: 'Inspection Date',
                        selectedDate: _inspectionDate,
                        isRequired: true,
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
                        isRequired: true,
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
                        onUpload: _handleUploadFiles,
                      ),
                      SizedBox(height: 20.h),

                      // Comments Field
                      FormTextField(
                        label: 'Comments',
                        hint: 'Enter comments',
                        controller: _commentsController,
                        maxLines: 4,
                        minLines: 3,
                      ),
                      SizedBox(height: 24.h),
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
                      flex: 2,
                      child: ReusableButton(
                        text: 'Create',
                        onPressed: _handleCreate,
                        backgroundColor: Colors.blue,
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

import 'dart:io';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/common/widgets/form_date_field.dart';
import 'package:asset_shield/features/common/widgets/form_dropdown_field.dart';
import 'package:asset_shield/features/common/widgets/form_file_picker_field.dart';
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
  final _descriptionController = TextEditingController();
  final _actionCreatedController = TextEditingController();
  final _commentsController = TextEditingController();

  // Form values
  String? _selectedEquipment;
  String? _selectedCreditedItems;
  DateTime? _recordCreatedDate;
  String? _selectedInspectedComponents;
  String? _selectedScheduleType;
  String? _selectedStatus;
  DateTime? _inspectionDate;
  List<File> _selectedFiles = [];

  @override
  void initState() {
    super.initState();
    // Set default dates to today
    _recordCreatedDate = DateTime.now();
    _inspectionDate = DateTime.now();
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
    Navigator.of(context).pop();
  }

  void _handleCreate() {
    if (_formKey.currentState?.validate() ?? false) {
      // Show success message or navigate back
      Navigator.of(context).pop();
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
                      FormDropdownField<String>(
                        label: 'Equipment',
                        hint: 'Select equipment',
                        value: _selectedEquipment,
                        isRequired: true,
                        items: const [
                          DropdownMenuItem(
                            value: 'equipment1',
                            child: Text('Equipment 1'),
                          ),
                          DropdownMenuItem(
                            value: 'equipment2',
                            child: Text('Equipment 2'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedEquipment = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select equipment';
                          }
                          return null;
                        },
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
                      FormDropdownField<String>(
                        label: 'Credited Items',
                        hint: 'Select credited items',
                        value: _selectedCreditedItems,
                        items: const [
                          DropdownMenuItem(
                            value: 'item1',
                            child: Text('Item 1'),
                          ),
                          DropdownMenuItem(
                            value: 'item2',
                            child: Text('Item 2'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedCreditedItems = value;
                          });
                        },
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

                      // Inspected Components Dropdown
                      FormDropdownField<String>(
                        label: 'Inspected components',
                        hint: 'Select components',
                        value: _selectedInspectedComponents,
                        isRequired: true,
                        items: const [
                          DropdownMenuItem(
                            value: 'component1',
                            child: Text('Component 1'),
                          ),
                          DropdownMenuItem(
                            value: 'component2',
                            child: Text('Component 2'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedInspectedComponents = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select components';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.h),

                      // Schedule Type Dropdown
                      FormDropdownField<String>(
                        label: 'Schedule Type',
                        hint: 'Select a schedule type',
                        value: _selectedScheduleType,
                        isRequired: true,
                        items: const [
                          DropdownMenuItem(
                            value: 'type1',
                            child: Text('Type 1'),
                          ),
                          DropdownMenuItem(
                            value: 'type2',
                            child: Text('Type 2'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedScheduleType = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select schedule type';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.h),

                      // Status Dropdown
                      FormDropdownField<String>(
                        label: 'Status',
                        hint: 'Select status',
                        value: _selectedStatus,
                        isRequired: true,
                        items: const [
                          DropdownMenuItem(
                            value: 'pending',
                            child: Text('Pending'),
                          ),
                          DropdownMenuItem(
                            value: 'completed',
                            child: Text('Completed'),
                          ),
                          DropdownMenuItem(
                            value: 'in_progress',
                            child: Text('In Progress'),
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

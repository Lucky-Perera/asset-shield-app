import 'package:freezed_annotation/freezed_annotation.dart';
import 'equipment_model.dart';
import 'schedule_component_model.dart';
import 'ref_data_model.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
abstract class ScheduleModel with _$ScheduleModel {
  const factory ScheduleModel({
    required String id,
    required String createdAt,
    required String updatedAt,
    required String scheduleID,
    required String equipmentId,
    required String description,
    required String scheduleTypeId,
    required String status,
    required String dueDate,
    required String operationId,
    required bool isRBISchedule,
    required bool isRecurring,
    required int inspectionInterval,
    required bool isScopeAttached,
    required String comments,
    String? aiSummary,
    required bool isDeleted,
    EquipmentModel? equipment,
    required List<ScheduleComponentModel> components,
    RefDataModel? scheduleType,
    RefDataModel? operation,
    required List<dynamic> attachments,
    required List<dynamic> linkedItems,
  }) = _ScheduleModel;

  factory ScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleModelFromJson(json);
}

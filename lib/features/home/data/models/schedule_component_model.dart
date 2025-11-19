import 'package:freezed_annotation/freezed_annotation.dart';
import 'component_model.dart';

part 'schedule_component_model.freezed.dart';
part 'schedule_component_model.g.dart';

@freezed
abstract class ScheduleComponentModel with _$ScheduleComponentModel {
  const factory ScheduleComponentModel({
    required String id,
    required String createdAt,
    required String updatedAt,
    required String scheduleId,
    required String componentId,
    ComponentModel? component,
  }) = _ScheduleComponentModel;

  factory ScheduleComponentModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleComponentModelFromJson(json);
}

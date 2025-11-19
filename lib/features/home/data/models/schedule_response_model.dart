import 'package:freezed_annotation/freezed_annotation.dart';
import 'schedule_model.dart';

part 'schedule_response_model.freezed.dart';
part 'schedule_response_model.g.dart';

@freezed
abstract class ScheduleResponseModel with _$ScheduleResponseModel {
  const factory ScheduleResponseModel({
    required bool success,
    required List<ScheduleModel> data,
  }) = _ScheduleResponseModel;

  factory ScheduleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseModelFromJson(json);
}

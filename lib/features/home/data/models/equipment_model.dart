import 'package:freezed_annotation/freezed_annotation.dart';
import 'corrosion_loop_model.dart';

part 'equipment_model.freezed.dart';
part 'equipment_model.g.dart';

@freezed
abstract class EquipmentModel with _$EquipmentModel {
  const factory EquipmentModel({
    required String id,
    required String createdAt,
    required String updatedAt,
    required String equipmentId,
    required String name,
    required String cmmsSystem,
    required bool isCorrosionLoopAvailable,
    String? corrosionLoopId,
    required bool isDeleted,
    CorrosionLoopModel? corrosionLoop,
  }) = _EquipmentModel;

  factory EquipmentModel.fromJson(Map<String, dynamic> json) =>
      _$EquipmentModelFromJson(json);
}

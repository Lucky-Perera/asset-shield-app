import 'package:freezed_annotation/freezed_annotation.dart';

part 'corrosion_loop_model.freezed.dart';
part 'corrosion_loop_model.g.dart';

@freezed
abstract class CorrosionLoopModel with _$CorrosionLoopModel {
  const factory CorrosionLoopModel({
    required String id,
    required String loopId,
  }) = _CorrosionLoopModel;

  factory CorrosionLoopModel.fromJson(Map<String, dynamic> json) =>
      _$CorrosionLoopModelFromJson(json);
}

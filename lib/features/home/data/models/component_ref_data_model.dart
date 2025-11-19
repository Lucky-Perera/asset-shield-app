import 'package:freezed_annotation/freezed_annotation.dart';

part 'component_ref_data_model.freezed.dart';
part 'component_ref_data_model.g.dart';

@freezed
abstract class ComponentRefDataModel with _$ComponentRefDataModel {
  const factory ComponentRefDataModel({
    required String id,
    required String createdAt,
    required String updatedAt,
    required String category,
    required String value,
    String? displayValue,
  }) = _ComponentRefDataModel;

  factory ComponentRefDataModel.fromJson(Map<String, dynamic> json) =>
      _$ComponentRefDataModelFromJson(json);
}

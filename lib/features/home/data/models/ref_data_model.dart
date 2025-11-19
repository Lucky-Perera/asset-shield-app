import 'package:freezed_annotation/freezed_annotation.dart';

part 'ref_data_model.freezed.dart';
part 'ref_data_model.g.dart';

@freezed
abstract class RefDataModel with _$RefDataModel {
  const factory RefDataModel({
    required String id,
    required String value,
    String? displayValue,
  }) = _RefDataModel;

  factory RefDataModel.fromJson(Map<String, dynamic> json) =>
      _$RefDataModelFromJson(json);
}

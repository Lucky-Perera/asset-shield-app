import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_answer_data.freezed.dart';

@freezed
abstract class ChecklistAnswerData with _$ChecklistAnswerData {
  const factory ChecklistAnswerData({
    required String value,
    @Default('') String note,
  }) = _ChecklistAnswerData;
}

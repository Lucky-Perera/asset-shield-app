import 'package:asset_shield/features/home/data/models/record_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_state.freezed.dart';

@freezed
abstract class RecordState with _$RecordState {
  const factory RecordState({
    @Default(false) bool isLoading,
    String? error,
    final RecordResponse? record,
  }) = _RecordState;
}

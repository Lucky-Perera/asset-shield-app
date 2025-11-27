import 'package:freezed_annotation/freezed_annotation.dart';

enum ScheduleStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('OVERDUE')
  overdue,
  @JsonValue('CANCELLED')
  cancelled,
}

enum RecordStatus { draft, pendingApproval, approved }

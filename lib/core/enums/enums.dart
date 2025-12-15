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

enum RecordStatus {
  @JsonValue('Rejected')
  rejected,
  @JsonValue('PendingApproval')
  pendingApproval,
  @JsonValue('Approved')
  approved,
}

// ignore: constant_identifier_names
enum ResponseType {
  @JsonValue('GoodFairPoorNA')
  goodFairPoorNA,
  @JsonValue('YesNo')
  yesNo,
}

enum ResponseValue {
  @JsonValue('Good')
  good,
  @JsonValue('Fair')
  fair,
  @JsonValue('Poor')
  poor,
  @JsonValue('NA')
  na,
  @JsonValue('Yes')
  yes,
  @JsonValue('No')
  no,
}

extension ResponseValueExtension on ResponseValue {
  String get displayName {
    switch (this) {
      case ResponseValue.good:
        return 'Good';
      case ResponseValue.fair:
        return 'Fair';
      case ResponseValue.poor:
        return 'Poor';
      case ResponseValue.na:
        return 'N/A';
      case ResponseValue.yes:
        return 'Yes';
      case ResponseValue.no:
        return 'No';
    }
  }

  String get apiValue {
    switch (this) {
      case ResponseValue.good:
        return 'Good';
      case ResponseValue.fair:
        return 'Fair';
      case ResponseValue.poor:
        return 'Poor';
      case ResponseValue.na:
        return 'NA';
      case ResponseValue.yes:
        return 'Yes';
      case ResponseValue.no:
        return 'No';
    }
  }
}

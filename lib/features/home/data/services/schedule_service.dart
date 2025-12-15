import 'package:asset_shield/core/utility/client.dart';
import 'package:asset_shield/core/utility/helpers.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/data/models/record_create_request.dart';
import 'package:asset_shield/features/home/data/models/record_with_checklist_response.dart';
import 'package:dio/dio.dart';

class ScheduleService {
  final Dio _dio = Client.dio;

  Future<ScheduleListResponse> fetchSchedules({
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final response = await _dio.get(
        '/schedules',
        queryParameters: {'page': page, 'limit': limit},
      );
      return ScheduleListResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }

  /// Create a record with checklist answers (combined mobile API)
  Future<RecordWithChecklistResponse> createRecordWithChecklist({
    required String scheduleId,
    required RecordCreateRequest payload,
  }) async {
    try {
      final requestData = payload.toJson();
      final response = await _dio.post(
        '/schedules/$scheduleId/record-with-checklist',
        data: requestData,
      );

      return RecordWithChecklistResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }

  Future<RecordWithChecklistResponse> getRecordWithChecklistAnswers(
    String scheduleId,
  ) async {
    try {
      final response = await _dio.get(
        '/schedules/$scheduleId/record-with-checklist',
      );

      return RecordWithChecklistResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }
}

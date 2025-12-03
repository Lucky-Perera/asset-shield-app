import 'package:asset_shield/core/utility/client.dart';
import 'package:asset_shield/core/utility/helpers.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/data/models/record_create_request.dart';
import 'package:asset_shield/features/home/data/models/record_response.dart';
import 'package:asset_shield/features/home/data/models/scope_model.dart';
import 'package:asset_shield/features/home/data/models/checklist_answer_request.dart';
import 'package:asset_shield/features/home/data/models/checklist_answer_response.dart';
import 'package:dio/dio.dart';

class ScheduleService {
  final Dio _dio = Client.dio;

  Future<ScheduleV2Response> fetchSchedules({
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final response = await _dio.get(
        '/schedules',
        queryParameters: {'page': page, 'limit': limit},
      );
      return ScheduleV2Response.fromJson(response.data);
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }

  Future<ScopeResponse?> fetchScopeDetailsByScheduleId(
    String scheduleId,
  ) async {
    try {
      final response = await _dio.get('/scopes/schedule/$scheduleId');
      return ScopeResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }

  /// Create a record for a schedule (mobile API)
  Future<RecordResponse> createRecord({
    required String scheduleId,
    required RecordCreateRequest payload,
  }) async {
    try {
      final requestData = payload.toJson();
      final response = await _dio.post(
        '/schedules/$scheduleId/record',
        data: requestData,
      );

      final respData = response.data;

      // API typically returns { success: true, data: { ... } }
      if (respData is Map<String, dynamic>) {
        if (respData['success'] == true && respData['data'] != null) {
          return RecordResponse.fromJson(
            respData['data'] as Map<String, dynamic>,
          );
        }

        // Sometimes API returns the created object directly
        if (respData['id'] != null || respData['recordID'] != null) {
          return RecordResponse.fromJson(respData);
        }
      }

      throw Exception('Unexpected API response when creating record');
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }

  /// Fetch record by schedule ID (mobile API)
  Future<RecordResponse> fetchRecordByScheduleId(String scheduleId) async {
    try {
      final response = await _dio.get('/schedules/$scheduleId/record');
      final api = RecordApiResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
      if (api.success && api.data != null) {
        return api.data!;
      }
      throw Exception(api.error ?? 'Empty record data');
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }

  /// Submit checklist answers for a schedule (mobile API)
  Future<ChecklistAnswerResponse> submitChecklistAnswers({
    required String scheduleId,
    required ChecklistAnswerRequest payload,
  }) async {
    try {
      final response = await _dio.post(
        '/schedules/$scheduleId/checklist/answers',
        data: payload.toJson(),
      );
      return ChecklistAnswerResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }

  /// Fetch checklist answers for a schedule (mobile API)
  Future<ChecklistAnswerResponse> fetchChecklistAnswers({
    required String scheduleId,
  }) async {
    try {
      final response = await _dio.get(
        '/schedules/$scheduleId/checklist/answers',
      );
      return ChecklistAnswerResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }
}

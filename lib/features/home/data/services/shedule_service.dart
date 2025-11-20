import 'package:asset_shield/core/utility/client.dart';
import 'package:asset_shield/core/utility/helpers.dart';
import 'package:asset_shield/features/home/data/models/schedule_response.dart';
import 'package:dio/dio.dart';

class SheduleService {
  final Dio _dio = Client.dio;

  Future<ScheduleResponse> fetchSchedules() async {
    try {
      final response = await _dio.get('/schedules');
      return ScheduleResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }
}

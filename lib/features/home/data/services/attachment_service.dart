import 'dart:io';
import 'package:asset_shield/core/utility/client.dart';
import 'package:asset_shield/core/utility/helpers.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:dio/dio.dart';

class AttachmentService {
  final Dio _dio = Client.dio;

  /// Upload a file and return the AttachmentV2 object
  Future<AttachmentV2> uploadAttachment({
    required File file,
    required String name,
    required String scheduleV2Id,
    required String equipmentId,
  }) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(file.path, filename: name),
        'name': name,
        'scheduleV2Id': scheduleV2Id,
        'equipmentId': equipmentId,
      });

      final response = await _dio.post('/attachments/upload', data: formData);

      return AttachmentV2.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw Helpers.handleError(e);
    }
  }
}

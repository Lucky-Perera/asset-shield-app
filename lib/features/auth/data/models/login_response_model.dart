import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required bool success,
    required LoginDataModel data,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
abstract class LoginDataModel with _$LoginDataModel {
  const factory LoginDataModel({
    required String accessToken,
    required UserModel user,
    int? expiresIn, // Optional: seconds until token expires
  }) = _LoginDataModel;

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}

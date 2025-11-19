import 'package:asset_shield/core/config/configs.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Client {
  static late Dio dio;

  static void init() {
    dio = createDio(Configs.host, interceptors: [TokenInterceptor()]);
  }

  static Dio createDio(
    String host, {
    List<Interceptor> interceptors = const [],
  }) {
    final baseOptions = BaseOptions(
      baseUrl: host,
      contentType: Headers.jsonContentType,
      persistentConnection: false,
    );

    final dio = Dio(baseOptions);

    dio.interceptors.addAll([
      ...interceptors,
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    ]);
    return dio;
  }
}

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // final token = await StorageService().getToken();
    // if (token != null) {
    //   // log("Token: $token");
    //   options.headers['Authorization'] = "Bearer $token";
    // }
    // return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final status = err.response?.statusCode;
    if (status == 401 || status == 402) {
      // await AuthService().logout();
      // Routes().login();
      // await AuthService().logout();
      // If a 401 response is received, refresh the access token
      // final token = await StorageService().getLoginObject();
      // final newToken =
      //     await AuthService().getAccessToken(token!.email, token.accessToken);
      // String newAccessToken = newToken.accessToken;

      // // Update the request header with the new access token
      // err.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';

      // // Repeat the request with the updated header
      // return handler.resolve(await Client.dio.fetch(err.requestOptions));
    }

    return handler.next(err);
  }
}

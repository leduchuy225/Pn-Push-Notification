import 'package:dio/dio.dart';

import '../error_handler.dart';

class MyInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // final accessToken =
    //     LocalStorageService.box.read<String>(LocalStorageService.ACCESS_TOKEN);
    // if (accessToken == null || options.path.contains('/account/login')) {
    //   handler.next(options);
    //   return;
    // }
    // options.headers.addAll({'Host': 'api-vnface.vnpt.vn'});
    // options.headers.addAll({'User-Agent': 'okhttp/4.10.0'});
    // options.headers.addAll({'Authorization': 'Bearer $accessToken'});
    handler.next(options);
    return;
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (ErrorHandler.isError(response)) {
      handler.reject(DioException(
        response: response,
        type: DioExceptionType.badResponse,
        requestOptions: response.requestOptions,
      ));
      return;
    }
    handler.next(response);
  }
}

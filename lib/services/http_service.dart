import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../core/interceptors/interceptor.dart';

class HttpService {
  factory HttpService() {
    return _singleton;
  }

  HttpService._() {
    configureDio();
  }

  static final HttpService _singleton = HttpService._();

  final _dio = Dio();

  Dio get dio => _dio;

  Dio get dioInstance {
    return Dio(baseOptions);
  }

  BaseOptions get baseOptions {
    return BaseOptions(
      baseUrl: 'https://api-vnface.vnpt.vn',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );
  }

  void configureDio() {
    _dio.options = baseOptions;
    _dio.interceptors.addAll([PrettyDioLogger(), MyInterceptor()]);
  }
}

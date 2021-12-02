import 'package:dio/dio.dart';
import 'package:ftips_bloc_fetch_api/Api%20Calling%20Using%20Bloc%20&%20rx%20Dart%20&%20cheking%20State/RestClient/rest_const.dart';


class RestClient{


  static final _instance = RestClient._internal();

  Dio _dio;

  RestClient._internal() {
    _dio = Dio(BaseOptions(
      connectTimeout: 20000,
      receiveTimeout: 20000,
      sendTimeout: 20000,
      baseUrl: RestConsts.BASE_URL,
    ));

    _dio.options.contentType = Headers.formUrlEncodedContentType;

    _dio.interceptors.addAll([
      LogInterceptor(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
      ),



    ]);
  }
  factory RestClient() {
    return _instance;
  }

  Dio dio() => _dio..options.contentType = Headers.formUrlEncodedContentType;

  Dio dioByContentType(String contentType) => _dio..options.contentType = contentType;

}

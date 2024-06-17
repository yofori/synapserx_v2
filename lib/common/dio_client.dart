import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:synapserx_v2/common/cache_interceptor.dart';
import 'package:synapserx_v2/common/dio_tokens.dart';
import 'package:synapserx_v2/common/service.dart';

var cacheStore = HiveCacheStore(
  GlobalData.temporaryDirectory,
  hiveBoxName: "synapserx_prescriber",
);

var cacheOptions = CacheOptions(
  store: cacheStore,
  policy: CachePolicy.refreshForceCache,
  hitCacheOnErrorExcept: [], // for offline behaviour
);

class DioClient {
  DioClient._();
  static final instance = DioClient._();
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "${GlobalData.baseUrl}/api",
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      //responseType: ResponseType.json
    ),
  )..interceptors.addAll([CacheInterceptor(options: cacheOptions), Tokens()]);

  ///Get Method
  Future<dynamic> get(String path,
      {Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode == 200) {
        return response.data;
      }
    } on DioException catch (e) {
      String errorMessage = _handleDioExceptionError(e);
      throw errorMessage;
    }
  }

  ///Post Method
  Future<dynamic> post(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode == 201) {
        return response.data;
      }
    } on DioException catch (e) {
      String errorMessage = _handleDioExceptionError(e);
      throw errorMessage;
    }
  }

  ///Put Method
  Future<dynamic> put(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      }
    } on DioException catch (e) {
      String errorMessage = _handleDioExceptionError(e);
      throw errorMessage;
    }
  }

  ///Delete Method
  Future<dynamic> delete(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      if (response.statusCode == 204) {
        return response.data;
      }
      throw "something went wrong";
    } catch (e) {
      rethrow;
    }
  }

  //Method to handle Dio Exceptions
  String _handleDioExceptionError(DioException dioError) {
    late String errorMessage;
    switch (dioError.type) {
      case DioExceptionType.cancel:
        errorMessage = "Request to the server was cancelled.";
        break;
      case DioExceptionType.connectionTimeout:
        errorMessage = "Connection timed out.";
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = "Receiving timeout occurred.";
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = "Request send timeout.";
        break;
      case DioExceptionType.badResponse:
        errorMessage = dioError.response!.data['message'];
        break;
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          errorMessage = 'No Internet.';
          break;
        }
        errorMessage = 'Unexpected error occurred.';
        break;
      default:
        errorMessage = 'Something went wrong';
        break;
    }

    return errorMessage;
  }
}

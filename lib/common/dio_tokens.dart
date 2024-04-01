import 'package:dio/dio.dart';
import 'package:synapserx_v2/common/auth_service.dart';

class Tokens extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      options.headers['Authorization'] =
          'Bearer ${await Authentication().getFirebaseIdToken()}';
      return handler.next(options);
    } on DioException catch (e) {
      handler.reject(e);
    } catch (e) {
      handler.reject(
        DioException(
            requestOptions: options,
            type: DioExceptionType.connectionError,
            error: e),
      );
    }
  }
}

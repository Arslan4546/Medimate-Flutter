import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:path_provider/path_provider.dart';

class DioClient {
  static Dio? _dio;

  static Future<Dio> getInstance() async {
    if (_dio != null) return _dio!;
    
    final cacheOptions = CacheOptions(
      store: MemCacheStore(),
      policy: CachePolicy.forceCache,
      maxStale: const Duration(days: 7),
      priority: CachePriority.normal,
    );

    _dio = Dio()
      ..interceptors.add(DioCacheInterceptor(options: cacheOptions))
      ..interceptors.add(LogInterceptor(
        responseBody: true,
        requestBody: true,
      ));

    return _dio!;
  }
}

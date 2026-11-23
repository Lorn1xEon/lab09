import 'package:dio/dio.dart';

const String requestCatcherUrl = 'https://lab13cpp.requestcatcher.com';

class RequestService {
  static final Dio _dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      contentType: Headers.jsonContentType,
    ),
  );

  static Future<void> send(String path, Map<String, dynamic> data) async {
    await _dio.post('$requestCatcherUrl/$path', data: data);
  }
}

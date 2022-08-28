import 'package:dio/dio.dart';

import 'dio/configured_dio_cache.dart';
import 'domains.dart';

class DioHttpAdapter implements HttpAdapter {
  DioHttpAdapter({
    required this.baseUrl,
  }) : super() {
    _dioHttpClient = Dio(
      BaseOptions(
        baseUrl: baseUrl + (basePath ?? ''),
        contentType: baseContentType,
      ),
    )..interceptors.add(ConfiguredDioCache());
  }

  String baseUrl;
  String? baseContentType;
  late Dio _dioHttpClient;

  @override
  Future<T> get<T>(HttpRequestConfig<T> request) => _handleRequest<T>(
        () async {
          final response = await _get(request);
          return request.parse(response.data!);
        },
      );

  @override
  Future<List<T>> getListData<T>(HttpRequestConfig<T> request) =>
      _handleRequest<List<T>>(
        () async {
          final response = await _get(request);
          if (response.data == null) {
            return [];
          }
          if (response.data is List) {
            return (response.data as List)
                .map((e) => request.parse(e))
                .toList();
          }

          throw 'Response cannot parse expected reponse: List got ${response.runtimeType}';
        },
      );

  Future<Response> _get(HttpRequestConfig request) => _dioHttpClient.get(
        request.path,
        queryParameters: request.query,
        options: Options(
          headers: request.headers,
          contentType: request.contentType,
        ),
      );

  @override
  Future<T> post<T>(HttpRequestConfig<T> request) => _handleRequest<T>(
        () async {
          final response = await _dioHttpClient.post(
            request.path,
            queryParameters: request.query,
            data: request.body,
            options: Options(
              headers: request.headers,
              contentType: request.contentType,
            ),
          );
          return request.parse(response.data!);
        },
      );

  @override
  Future<T> put<T>(HttpRequestConfig<T> request) => _handleRequest<T>(
        () async {
          final response = await _dioHttpClient.put(
            request.path,
            queryParameters: request.query,
            options: Options(
              headers: request.headers,
              contentType: request.contentType,
            ),
          );
          return request.parse(response.data!);
        },
      );

  @override
  Future<T> delete<T>(HttpRequestConfig<T> request) => _handleRequest<T>(
        () async {
          final response = await _dioHttpClient.delete(
            request.path,
            queryParameters: request.query,
            options: Options(
              headers: request.headers,
              contentType: request.contentType,
            ),
          );
          return request.parse(response.data!);
        },
      );

  Future<T> _handleRequest<T>(
    Future<T> Function() request,
  ) async {
    try {
      return request.call();
    } on DioError catch (error) {
      throw HttpRequestError(
          status: error.response!.statusCode!,
          errorContent: error.response?.data,
          request: HttpRequestConfig<T>(
            path: error.requestOptions.path,
            query: error.requestOptions.queryParameters,
            body: error.requestOptions.data,
            contentType: error.requestOptions.contentType,
            headers: error.requestOptions.headers,
          ));
    } catch (e) {
      rethrow;
    }
  }

  @override
  String? get contentType => null;

  @override
  String? get basePath => null;
}

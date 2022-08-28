abstract class HttpAdapter {
  Future<T> get<T>(HttpRequestConfig<T> request);
  Future<List<T>> getListData<T>(HttpRequestConfig<T> request);
  Future<T?> post<T>(HttpRequestConfig<T> request);
  Future<T?> put<T>(HttpRequestConfig<T> request);
  Future<T?> delete<T>(HttpRequestConfig<T> request);

  String? get contentType;
  String? get basePath;
}

class HttpRequestConfig<T> {
  const HttpRequestConfig({
    required this.path,
    this.query,
    this.body,
    this.headers,
    this.contentType,
    this.responseParser,
  });

  final String path;
  final Map<String, dynamic>? query;
  final Map<String, dynamic>? body;
  final Map<String, dynamic>? headers;
  final String? contentType;

  // TODO: find a way to parse the array
  final T Function(Map<String, dynamic> data)? responseParser;

  T parse(dynamic data) {
    if (responseParser != null) {
      return responseParser!.call(data);
    }
    return data as T;
  }
}

class HttpRequestError {
  const HttpRequestError({
    required this.status,
    required this.errorContent,
    required this.request,
  });

  final int status;
  final dynamic errorContent;
  final HttpRequestConfig request;
}

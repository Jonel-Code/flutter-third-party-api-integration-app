export '../../http/index.dart' show HttpRequestConfig, HttpRequestError;

import '../../http/index.dart';

class JsonPlaceHolderHttp extends DioHttpAdapter implements HttpAdapter {
  JsonPlaceHolderHttp()
      : super(baseUrl: 'https://jsonplaceholder.typicode.com');
}

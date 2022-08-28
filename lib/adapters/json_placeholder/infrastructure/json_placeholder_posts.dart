import '../domains/index.dart';
import 'json_placeholder_api_http.dart';

class JsonPlaceholderPosts extends JsonPlaceHolderHttp {
  JsonPlaceholderPosts() : super();

  @override
  String? get basePath => '/posts';

  Future<List<PostData>> postListing() =>
      getListData<PostData>(const HttpRequestConfig(
        path: '',
        responseParser: PostData.fromJson,
      ));
}

import '../domains/index.dart';
import 'pokemon_api_http.dart';

class PokemonDataApi extends PokemonApiHttp {
  PokemonDataApi() : super();

  @override
  String? get basePath => '/pokemon';

  Future<PokemonData> search(String idOrName) =>
      get<PokemonData>(HttpRequestConfig(
        path: '/$idOrName',
        responseParser: PokemonData.fromJson,
      ));

  Future<PokemonListing> listingResult(int limit, int offset) =>
      get<PokemonListing>(
        HttpRequestConfig(
          path: '',
          query: {
            'limit': limit,
            'offset': offset,
          },
          responseParser: PokemonListing.fromJson,
        ),
      );
}

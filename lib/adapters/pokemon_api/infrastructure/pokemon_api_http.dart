export '../../http/index.dart' show HttpRequestConfig, HttpRequestError;

import '../../http/index.dart';

class PokemonApiHttp extends DioHttpAdapter implements HttpAdapter {
  PokemonApiHttp() : super(baseUrl: 'https://pokeapi.co/api/v2/');
}

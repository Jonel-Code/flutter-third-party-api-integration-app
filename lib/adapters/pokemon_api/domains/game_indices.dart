import 'abilities.dart';

class GameIndices {
  int? gameIndex;
  Ability? version;

  GameIndices({this.gameIndex, this.version});

  GameIndices.fromJson(Map<String, dynamic> json) {
    gameIndex = json['game_index'];
    version =
        json['version'] != null ? Ability.fromJson(json['version']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['game_index'] = gameIndex;
    if (version != null) {
      data['version'] = version!.toJson();
    }
    return data;
  }
}

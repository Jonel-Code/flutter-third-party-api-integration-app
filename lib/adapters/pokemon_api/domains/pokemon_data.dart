import 'abilities.dart';
import 'forms.dart';
import 'game_indices.dart';
import 'held_items.dart';
import 'moves.dart';
import 'sprites.dart';
import 'stats.dart';
import 'types_data.dart';

class PokemonData {
  int? id;
  String? name;
  int? baseExperience;
  int? height;
  bool? isDefault;
  int? order;
  int? weight;

  List<Abilities>? abilities;
  List<Forms>? forms;
  List<GameIndices>? gameIndices;
  List<HeldItems>? heldItems;
  String? locationAreaEncounters;
  List<Moves>? moves;
  Ability? species;
  Sprites? sprites;
  List<Stats>? stats;
  List<TypesData>? types;
  List<PastTypesData>? pastTypes;

  PokemonData({
    this.id,
    this.name,
    this.baseExperience,
    this.height,
    this.isDefault,
    this.order,
    this.weight,
    this.abilities,
    this.forms,
    this.gameIndices,
    this.heldItems,
    this.locationAreaEncounters,
    this.moves,
    this.species,
    this.sprites,
    this.stats,
    this.types,
    this.pastTypes,
  });

  PokemonData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    baseExperience = json['base_experience'];
    height = json['height'];
    isDefault = json['is_default'];
    order = json['order'];
    weight = json['weight'];
    if (json['abilities'] != null) {
      abilities = <Abilities>[];
      json['abilities'].forEach((v) {
        abilities!.add(Abilities.fromJson(v));
      });
    }
    if (json['forms'] != null) {
      forms = <Forms>[];
      json['forms'].forEach((v) {
        forms!.add(Forms.fromJson(v));
      });
    }
    if (json['game_indices'] != null) {
      gameIndices = <GameIndices>[];
      json['game_indices'].forEach((v) {
        gameIndices!.add(GameIndices.fromJson(v));
      });
    }
    if (json['held_items'] != null) {
      heldItems = <HeldItems>[];
      json['held_items'].forEach((v) {
        heldItems!.add(HeldItems.fromJson(v));
      });
    }
    locationAreaEncounters = json['location_area_encounters'];
    if (json['moves'] != null) {
      moves = <Moves>[];
      json['moves'].forEach((v) {
        moves!.add(Moves.fromJson(v));
      });
    }
    species =
        json['species'] != null ? Ability.fromJson(json['species']) : null;
    sprites =
        json['sprites'] != null ? Sprites.fromJson(json['sprites']) : null;
    if (json['stats'] != null) {
      stats = <Stats>[];
      json['stats'].forEach((v) {
        stats!.add(Stats.fromJson(v));
      });
    }
    if (json['types'] != null) {
      types = <TypesData>[];
      json['types'].forEach((v) {
        types!.add(TypesData.fromJson(v));
      });
    }
    if (json['past_types'] != null) {
      pastTypes = <PastTypesData>[];
      json['past_types'].forEach((v) {
        pastTypes!.add(PastTypesData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['base_experience'] = baseExperience;
    data['height'] = height;
    data['is_default'] = isDefault;
    data['order'] = order;
    data['weight'] = weight;
    if (abilities != null) {
      data['abilities'] = abilities!.map((v) => v.toJson()).toList();
    }
    if (forms != null) {
      data['forms'] = forms!.map((v) => v.toJson()).toList();
    }
    if (gameIndices != null) {
      data['game_indices'] = gameIndices!.map((v) => v.toJson()).toList();
    }
    if (heldItems != null) {
      data['held_items'] = heldItems!.map((v) => v.toJson()).toList();
    }
    data['location_area_encounters'] = locationAreaEncounters;
    if (moves != null) {
      data['moves'] = moves!.map((v) => v.toJson()).toList();
    }
    if (species != null) {
      data['species'] = species!.toJson();
    }
    if (sprites != null) {
      data['sprites'] = sprites!.toJson();
    }
    if (stats != null) {
      data['stats'] = stats!.map((v) => v.toJson()).toList();
    }
    if (types != null) {
      data['types'] = types!.map((v) => v.toJson()).toList();
    }
    if (pastTypes != null) {
      data['past_types'] = pastTypes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

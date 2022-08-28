import 'abilities.dart';

class TypesData {
  int? slot;
  Ability? type;

  TypesData({this.slot, this.type});

  TypesData.fromJson(Map<String, dynamic> json) {
    slot = json['slot'];
    type = json['type'] != null ? Ability.fromJson(json['type']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['slot'] = slot;
    if (type != null) {
      data['type'] = type!.toJson();
    }
    return data;
  }
}

class PastTypesData {
  Ability? generation;
  List<TypesData>? types;

  PastTypesData({this.generation, this.types});

  PastTypesData.fromJson(Map<String, dynamic> json) {
    generation = json['generation'] != null
        ? Ability.fromJson(json['generation'])
        : null;
    if (json['types'] != null) {
      types = <TypesData>[];
      json['types'].forEach((v) {
        types!.add(TypesData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (generation != null) {
      data['generation'] = generation!.toJson();
    }
    if (types != null) {
      data['types'] = types!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

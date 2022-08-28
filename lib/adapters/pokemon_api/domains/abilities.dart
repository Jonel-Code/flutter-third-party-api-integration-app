import 'helpers.dart';

class Abilities {
  bool? isHidden;
  int? slot;
  Ability? ability;

  Abilities({this.isHidden, this.slot, this.ability});

  Abilities.fromJson(Map<String, dynamic> json) {
    isHidden = json['is_hidden'];
    slot = json['slot'];
    ability =
        json['ability'] != null ? Ability.fromJson(json['ability']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_hidden'] = isHidden;
    data['slot'] = slot;
    if (ability != null) {
      data['ability'] = ability!.toJson();
    }
    return data;
  }
}

class Ability extends NameUrl {
  Ability.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }
}

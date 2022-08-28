class PokemonListing {
  int? count;
  String? next;
  String? previous;
  List<Results>? results;

  PokemonListing({this.count, this.next, this.previous, this.results});

  PokemonListing.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String name;
  String url;

  Results({required this.name, required this.url});

  factory Results.fromJson(Map<String, dynamic> json) => Results(
        name: json['name'],
        url: json['url'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

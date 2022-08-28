class NameUrl {
  String? name;
  String? url;

  NameUrl({this.name, this.url});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

import 'helpers.dart';

class Forms extends NameUrl {
  Forms.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }
}

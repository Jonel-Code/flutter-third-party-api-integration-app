import 'abilities.dart';
import 'version_details.dart';

class HeldItems {
  Ability? item;
  List<VersionDetails>? versionDetails;

  HeldItems({this.item, this.versionDetails});

  HeldItems.fromJson(Map<String, dynamic> json) {
    item = json['item'] != null ? Ability.fromJson(json['item']) : null;
    if (json['version_details'] != null) {
      versionDetails = <VersionDetails>[];
      json['version_details'].forEach((v) {
        versionDetails!.add(VersionDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (item != null) {
      data['item'] = item!.toJson();
    }
    if (versionDetails != null) {
      data['version_details'] = versionDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

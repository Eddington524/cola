import 'package:json_annotation/json_annotation.dart';

part 'play.g.dart';

@JsonSerializable()

class Play {
  int? id;
  // @JsonKey(name: 'media_Thumbnail')
  String? mediaThumbnail;
  String? userImg;
  String? mediaUrl;

  Play(this.id, this.mediaThumbnail, this.mediaUrl, this.userImg);

  factory Play.fromJson(Map<String, dynamic> json) => _$PlayFromJson(json);

  Map<String, dynamic> toJson() => _$PlayToJson(this);
  // Play.fromJson(Map<String, dynamic> json) {
  //   id = json["id"];
  //   mediaThumbnail =json["mediaThumbnail"];
  //   userImg =json["userImg"];
  //   mediaUrl =json["mediaUrl"];
  // }
}

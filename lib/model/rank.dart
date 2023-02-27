import 'package:json_annotation/json_annotation.dart';

part 'rank.g.dart';

@JsonSerializable()
class Rank {
  final String itemThumnail;
  final String itemTitle;
  final String userImg;
  final String userName;
  final int likeCount;
  final int commentCount;
  final String tag;
  final String content;
  final DateTime uploadDate;

  Rank(
      this.itemThumnail,
      this.itemTitle,
      this.userImg,
      this.userName,
      this.likeCount,
      this.commentCount,
      this.tag,
      this.uploadDate,
      this.content);

  factory Rank.fromJson(Map<String, dynamic> json) {
    return _$RankFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RankToJson(this);
}

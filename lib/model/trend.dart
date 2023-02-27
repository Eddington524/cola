import 'package:json_annotation/json_annotation.dart';

part 'trend.g.dart';

@JsonSerializable()
class Trend {
  final String itemThumnail;
  final String itemTitle;
  final String userImg;
  final String userName;
  final int likeCount;
  final int commentCount;

  Trend(this.itemThumnail, this.itemTitle, this.userImg, this.userName, this.likeCount, this.commentCount);

  factory Trend.fromJson(Map<String, dynamic> json) {
    return _$TrendFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TrendToJson(this);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trend _$TrendFromJson(Map<String, dynamic> json) => Trend(
      json['itemThumnail'] as String,
      json['itemTitle'] as String,
      json['userImg'] as String,
      json['userName'] as String,
      json['likeCount'] as int,
      json['commentCount'] as int,
    );

Map<String, dynamic> _$TrendToJson(Trend instance) => <String, dynamic>{
      'itemThumnail': instance.itemThumnail,
      'itemTitle': instance.itemTitle,
      'userImg': instance.userImg,
      'userName': instance.userName,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModel _$$_NewsModelFromJson(Map<String, dynamic> json) => _$_NewsModel(
      slug: json['slug'] as String?,
      img: json['img'] as String?,
      title: json['title'] as String?,
      excerpt: json['excerpt'] as String?,
      count: json['count'],
      postId: json['postId'] as String?,
      updatedAt: json['updatedAt'] as String?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'img': instance.img,
      'title': instance.title,
      'excerpt': instance.excerpt,
      'count': instance.count,
      'postId': instance.postId,
      'updatedAt': instance.updatedAt,
      'time': instance.time,
    };

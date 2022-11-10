import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'news_result_model.freezed.dart';
part 'news_result_model.g.dart';

List<NewsModel> newsModelFromJson(String str) =>
    List<NewsModel>.from(json.decode(str).map((x) => NewsModel.fromJson(x)));

String newsModelToJson(List<NewsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class NewsModel with _$NewsModel {
  const factory NewsModel({
    String? slug,
    String? img,
    String? title,
    String? excerpt,
    dynamic count,
    String? postId,
    String? updatedAt,
    String? time,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

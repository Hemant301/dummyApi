import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/news_result_model.dart';

part 'news_page_state.freezed.dart';

@freezed
abstract class NewsPageState with _$NewsPageState{
  const NewsPageState._();
  const factory NewsPageState.loading() = _Loading;
  const factory NewsPageState.loaded(List<NewsModel> newsModel) = _Loaded;
  const factory NewsPageState.error(String message) = _Error;
}
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';
import 'package:newapp/feature/presentation/state/news_page_state.dart';

import 'controllers/news_page_controller.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key? key}) : super(key: key);

  static Widget createProvider(BuildContext cxy) {
    return ChangeNotifierProvider(
      create: (cxy) => NewsPageController(),
      child: NewsPage(),
    );
  }

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> with AfterLayoutMixin<NewsPage> {
  NewsPageController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = Provider.of<NewsPageController>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Selector<NewsPageController, NewsPageState>(
              builder: (context, state, child) {
                return state.when(
                  loading: () =>
                      Center(child: CircularProgressIndicator.adaptive()),
                  loaded: (news) => ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(news[index].title ?? ''),
                      );
                    },
                    itemCount: news.length,
                  ),
                  error: (message) => Center(
                    child: Text(message),
                  ),
                );
              },
              selector: (_, NewsPageController c) => c.state)),
    );
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    await Provider.of<NewsPageController>(context, listen: false).loadNews();
  }
}

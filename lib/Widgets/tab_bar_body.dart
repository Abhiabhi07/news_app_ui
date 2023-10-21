import 'package:flutter/material.dart';
import 'package:news_app_ui/Widgets/tab_container.dart';
import 'package:news_app_ui/model/news_list.dart';

import '../model/news.dart';

class TabBarBody extends StatelessWidget {
  const TabBarBody({
    super.key,
    required this.newsList,
  });

  final List<News> newsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (ctx, i) {
          return TabContainer(
            news: newsList[i],
          );
        });
  }
}

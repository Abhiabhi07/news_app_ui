import 'package:flutter/material.dart';
import 'package:news_app_ui/Widgets/custom_tabbar.dart';
import 'package:news_app_ui/model/news_list.dart';

import '../Widgets/custom_search_bar.dart';

class NewsScreen extends StatelessWidget {
   NewsScreen({super.key});

  NewsList newsList = NewsList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                'Discover News',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            CustomSearchBar(),
            CustomTabBar(),
          ],
        ),
      ),
    );
  }
}

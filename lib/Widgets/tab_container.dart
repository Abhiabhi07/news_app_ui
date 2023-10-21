import 'package:flutter/material.dart';
import 'package:news_app_ui/screens/details_screen.dart';

import '../model/news.dart';
import 'custom_chips.dart';

class TabContainer extends StatelessWidget {
  const TabContainer({super.key, required this.news});

  final News news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => DetailsScreen(
                  news: news,
                )));
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(news.imgUrl), fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        news.title,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'By: ${news.by}',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            '${news.readTime} min read',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            news.postedOn,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),

                      CustomChips(
                        category1: news.category1,
                        category2: news.category2,
                        news: news,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

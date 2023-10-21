import 'package:flutter/material.dart';
import 'package:news_app_ui/Widgets/custom_chips.dart';

import '../model/news.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.news});

  final News news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(news.imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomChips(
                        category1: news.category1,
                        category2: news.category2,
                        news: news,
                      ),
                      Text(
                        news.title,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            news.by,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            news.readTime.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.teal),
                          ),
                          Text(
                            news.postedOn,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.teal),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        news.description,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white60,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white60,
                    child: IconButton(
                      icon: Icon(
                        Icons.menu_sharp,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

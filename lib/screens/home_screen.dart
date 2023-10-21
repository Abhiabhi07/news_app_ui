import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_ui/model/news_list.dart';

import '../Widgets/custom_search_bar.dart';
import '../Widgets/custom_tabbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> categories = ['All Category', 'Technology', 'Gaming', 'Health'];

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    titleRow(String title) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: theme.titleLarge!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 17),
            ),
            Text(
              'View all',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: scrollController,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                ListTile(
                  leading: CircleAvatar(
                      //  backgroundColor: Colors.green,
                      ),
                  title: Text(
                    'Welcome,',
                    style: theme.titleSmall!.copyWith(
                        fontSize: 12,
                        color: Colors.black45,
                        letterSpacing: -0.2),
                  ),
                  subtitle: Text(
                    'Username',
                    style: theme.titleLarge!.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.1),
                  ),
                  trailing: CircleAvatar(
                    child: Icon(
                      Icons.settings_outlined,
                      size: 20,
                    ),
                  ),
                ),
                CustomSearchBar(),
                titleRow('Breaking News!'),
                Container(
                  padding: EdgeInsets.all(15.0),
                  height: 220,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://www.hindustantimes.com/ht-img/img/2023/10/18/550x309/banana_thmb_1697627616260_1697627632165.jpg',
                        ),
                        fit: BoxFit.cover,
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          'Shardiya Navratri 2023 Day 5: Delicious banana bhog recipes for Maa Skandamata',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          'by Nolan Dokidis',
                          style: theme.titleMedium,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'Jun30 , 2022',
                            style: theme.titleMedium,
                          ),
                          Text(
                            '1 hour ago',
                            style: theme.titleMedium,
                          ),
                          Text(
                            'Natural Disaster',
                            style: theme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                titleRow('Trending Now'),

                CustomTabBar()

              ],
            ),
          ),
        ),
      ),
    );
  }
}

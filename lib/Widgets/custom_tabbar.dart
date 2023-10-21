import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_ui/Widgets/custom_chips.dart';
import 'package:news_app_ui/Widgets/tab_bar_body.dart';
import 'package:news_app_ui/Widgets/tab_container.dart';
import 'package:news_app_ui/model/news_list.dart';

import '../model/news.dart';

class CustomTabBar extends StatelessWidget {
  CustomTabBar({super.key});

  List<String> categories = [
    'All Category',
    'Technology',
    'Gaming',
    'Health',
  ];
  NewsList newsList = NewsList();

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: DefaultTabController(
            length: categories.length,
            child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  flexibleSpace: TabBar(
                    physics: BouncingScrollPhysics(),
                    isScrollable: true,
                    labelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelColor: Colors.black,
                    splashBorderRadius: BorderRadius.circular(50.0),
                    indicatorWeight: 0.1,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.black),
                    tabs: List.generate(
                      categories.length,
                      (index) => Tab(
                          child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(color: Colors.black)),
                        child: Align(
                          child: Text(
                            categories[index],
                            style: GoogleFonts.didactGothic(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      )),
                    ),
                  ),
                ),
                body: TabBarView(
                    children: <Widget>[
                  TabBarBody(
                    newsList: newsList.allNewsList,
                  ),
                  TabBarBody(
                    newsList: newsList.techNewsList,
                  ),
                  TabBarBody(
                    newsList: newsList.allNewsList,
                  ),
                  TabBarBody(
                    newsList: newsList.techNewsList,
                  ),
                ]))),
      ),
    );
  }
}

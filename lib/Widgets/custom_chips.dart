import 'package:flutter/material.dart';
import 'package:news_app_ui/model/news.dart';
import 'package:news_app_ui/model/news_list.dart';

class CustomChips extends StatefulWidget {
  const CustomChips({
    super.key,
    required this.category1,
    required this.category2,
    required this.news,
  });

  final String category1;
  final String category2;
  final News news;

  @override
  State<CustomChips> createState() => _CustomChipsState();
}

class _CustomChipsState extends State<CustomChips> {
  NewsList newsList = NewsList();

  var saved = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Chip(
          label: Text(widget.category1),
        ),
        SizedBox(
          width: 10,
        ),
        Chip(
          label: Text(widget.category2),
        ),
        Spacer(),
      Chip(
          avatar: Icon(Icons.bookmark_border),
          label: Text('Save'),
        ),
      ],
    );
  }
}

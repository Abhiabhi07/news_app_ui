import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      padding: const EdgeInsets.all(13.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Search for news',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.black45, letterSpacing: -0.1),
          ),
          Icon(Icons.search)
        ],
      ),
    );
  }
}

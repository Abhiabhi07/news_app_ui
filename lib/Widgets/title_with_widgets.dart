import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'round_container.dart';

class TitleWithWidgets extends StatelessWidget {
  const TitleWithWidgets(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: theme.titleLarge,
          ),
          Text(
            subTitle,
            style: theme.titleSmall,
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RoundContainer(iconData: Icons.facebook_rounded),
              RoundContainer(iconData: Icons.g_mobiledata),
              RoundContainer(iconData: Icons.apple)
            ],
          ),
        ],
      ),
    );
  }
}

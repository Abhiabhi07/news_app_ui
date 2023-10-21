import 'package:flutter/material.dart';

class RoundContainer extends StatelessWidget {
  const RoundContainer({super.key, required this.iconData});

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: Colors.black),
      alignment: Alignment.center,
      child: Icon(
        iconData,
        size: 25,
        color: Colors.white,
      ),
    );
  }
}

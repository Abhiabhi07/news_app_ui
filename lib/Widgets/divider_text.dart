import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  const DividerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: const Row(
        children: <Widget>[
          Expanded(
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'or',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ),
          Expanded(child: Divider())
        ],
      ),
    );
  }
}

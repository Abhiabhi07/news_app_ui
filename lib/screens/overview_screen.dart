import 'package:flutter/material.dart';

class OverViewScreen extends StatelessWidget {
  const OverViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.all(12.0),
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                child: Column(
                  children: [
                    Text(
                      'Read news with only one app, Newzy!',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text(
                        'Read the latest news smoothly and quickly at the same time')
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Text('Read Now'),
                        )),

                    Icon(Icons.more_horiz_rounded)
                  ],
                ),
              ),
            ],
          ),
        ))
      ],
    );
  }
}

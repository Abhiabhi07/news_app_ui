  import 'package:flutter/material.dart';

import 'screens/bottom_navigation_bar.dart';
import 'screens/details_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/news_screen.dart';
import 'screens/overview_screen.dart';
import 'screens/sing_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          chipTheme: ChipThemeData(
            labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black
            ),
            shape: StadiumBorder(),
            side: BorderSide.none,
            backgroundColor: Colors.black12,
          ),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            fontFamily: 'Catamaran',
            textTheme: TextTheme(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  letterSpacing: -1,
                  color: Colors.black),
              titleSmall: TextStyle(
                fontSize: 14,
                letterSpacing: -0.5,
                color: Colors.black87,
              ),
              titleMedium: TextStyle(
                fontSize: 14,
                letterSpacing: -0.5,
                color: Colors.white38,
              ),
            )),
        home: Scaffold(
          backgroundColor: Color(0xffF8F8F8),
          body: SafeArea(child: LoginScreen()),
        ));
  }
}

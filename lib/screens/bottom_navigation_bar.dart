import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:news_app_ui/screens/home_screen.dart';
import 'package:news_app_ui/screens/news_screen.dart';
import 'package:news_app_ui/screens/profile_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _index = 0;

  List<Widget> screens = [
    HomeScreen(),
    NewsScreen(),
    const SavedScreen(),
    const ProfiledScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index){
            setState(() {
              _index = index;
            });
          },
          backgroundColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.newspaper,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.newspaper,
                  color: Colors.black,
                ),
                label: 'More'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.bookmark,
                color: Colors.black,
              ),
              label: 'Save',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outlined,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                label: 'Profile'),
          ]),
    );
  }
}

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


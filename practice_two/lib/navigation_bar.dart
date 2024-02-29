import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_two/screen/favourites.dart';
import 'package:practice_two/screen/home.dart';

class Navigation_Bar extends ConsumerStatefulWidget {
  const Navigation_Bar({Key? key}) : super(key: key);

  @override
  _Navigation_BarState createState() => _Navigation_BarState();
}

class _Navigation_BarState extends ConsumerState<Navigation_Bar> {
  int currentindex = 0;
  List<Widget> selectscreen = [Home_Screen(), Favourite_Screen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectscreen[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}

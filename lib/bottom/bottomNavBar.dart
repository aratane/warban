import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warban/bottom/homeScreen.dart';
import 'package:warban/bottom/placeScreen.dart';
import 'package:warban/bottom/profileScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final List<Widget> body = [
    const HomeScreen(),
    const PlaceScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: tapIcon,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home_outlined,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place,
              color: Colors.black,
            ),
            label: 'Places',
            activeIcon: Icon(
              Icons.place_outlined,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            label: 'Profile',
            activeIcon: Icon(
              Icons.account_circle_outlined,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  void tapIcon(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

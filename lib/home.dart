import 'package:flutter/material.dart';
import 'package:gpay/history.dart';
import 'package:gpay/home_screen.dart';
import 'package:gpay/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  // List of screens for each tab
  final List<Widget> _screens = [
    const HomeScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];

  @override
 Widget build(BuildContext context) {
  return Scaffold(
    body: _screens[_currentIndex], // Display the selected screen
    bottomNavigationBar: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ), // Rounds the top corners of the BottomNavigationBar
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_rounded),
            label: 'Profile',
          ),
        ],
      ),
    ),
  );
}

}

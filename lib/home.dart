import 'package:cfminor/screens/analyse.dart';
import 'package:cfminor/screens/compare.dart';
import 'package:cfminor/screens/latest_contest.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;
  final List<Widget> _children = [ContestPage(), AnalysePage(), ComparePage()];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          items: [
            _bottomNavItem(Icons.access_time, "Upcoming Contests"),
            _bottomNavItem(Icons.search, "Analyse"),
            _bottomNavItem(Icons.group_outlined, "CompareUser"),
          ],
          onTap: onTabTapped,
        ),
      ),
    );
  }

  _bottomNavItem(IconData icon, String title) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: Colors.black12,
      ),
      activeIcon: Icon(
        icon,
        color: Colors.black,
      ),
      title: new Text(
        title,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    if (!mounted) return;
    setState(() {
      _currentIndex = index;
    });
  }
}

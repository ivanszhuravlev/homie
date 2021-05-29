import 'package:flutter/material.dart';
import 'package:homie/screens/calendar_screen.dart';
import 'package:homie/screens/home_screen.dart';
import 'package:homie/screens/settings_screen.dart';

class _Destination {
  const _Destination(this.title, this.icon, this.color);

  final String title;
  final IconData icon;
  final MaterialColor color;
}

class RootNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RootNavigatorState();
  }
}

class _RootNavigatorState extends State<RootNavigator> {
  int _currentIndex = 0;

  final List<_Destination> _destinations = <_Destination>[
    _Destination('Сегодня', Icons.home, Colors.teal),
    _Destination('Календарь', Icons.calendar_today, Colors.cyan),
    _Destination('Настройки', Icons.settings, Colors.orange),
  ];

  final List <Widget> _children = [
    HomeScreen(),
    CalendarScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // this will
        onTap: onTabTapped,
        items: _destinations.map((destination) {
          return BottomNavigationBarItem(
              icon: new Icon(destination.icon),
              label: destination.title,
              backgroundColor: destination.color
          );
        }).toList()
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
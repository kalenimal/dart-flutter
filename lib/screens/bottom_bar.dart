import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/search_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget>_widgetOptions = <Widget>[
  const HomeScreen(),
  const SearchScreen(),
  const Text("Ticket"),
  const Text("Profile"),
 ];

 void _onItemTap(int index) {
  setState(() {
    _selectedIndex = index;
  });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Center(
      child:  _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTap,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), label: "Home",
        activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), label: "Search",
        activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), label: "Ticket",
        activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), label: "Profile",
        activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled))
      ]),
    );
  }
}


import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/search/search_screen.dart';

import '../screens/home/home_screen.dart';
import '../screens/home/ticket/ticket_Screen.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // list is iterated using index
  final appScreens = [
    const HomeScreen(),
    const SearchScrean(),
     const TicketScreen(),
    //const Center(child: Text("Tickets")),
    const AllHotals(),
  ];
  //chang our index for BottomNavBar
  int _selectedIndex=0;

  void _onItemTapped(int index){
    setState(() {_selectedIndex=index;

    });

    print("Tapped index is$_selectedIndex");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: appScreens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor:const Color(0xFF526400),
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Tickets"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "profile"),
          ],
        ));
  }
}

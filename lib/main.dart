import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/home/ticket/ticket_Screen.dart';
import 'package:ticket_app/screens/hotal_detail.dart';

import 'base/bottom_new_bar.dart';

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


      routes: {
        "/":(context)=>const  BottomNavBar(),
        "/all_tickets":(context) => const AllTickets(),
        "/ticket_screen":(context)=> const TicketScreen(),
        "/all_hotals":(context)=> const AllHotals(),
        "/hotal_detail":(context)=> const HotalDetail()

      },


    );
  }
}

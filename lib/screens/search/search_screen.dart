import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';

import '../../base/widgets/app_double_text.dart';

class SearchScrean extends StatelessWidget {
  const SearchScrean({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'what are \n you looking for?',
            style: AppStyles.headLineStyle1.copyWith(fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: "All Tickets",
            secondTab: "Hotel",
          ),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          const SizedBox(height: 25),
          const AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: "Arriver",
          ),
          const SizedBox(height: 25),
           const FindTickets(),
          const SizedBox(height: 25),
           AppDoubleText(bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () =>Navigator.pushNamed(context,"/all_tickets"),
          ),
          const SizedBox(height: 15),
          TicketPromotion()

        ],
      ),
    );
  }
}

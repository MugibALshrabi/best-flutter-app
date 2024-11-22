import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key,required this.firstTab,required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFf4f6FD)),
      child: Row(
        children: [
          AppTabs(
            tabtext:firstTab,
          ),
          AppTabs(
            tabtext: secondTab,
            tabBorder: true,tabColor: true,
          ),
          /* Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width*.44,
            child: const Center(child: Text('Airline Tickets')),
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(50))
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width*.44,
            child: const Center(child: Text('Hotels')),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(right: Radius.circular(50))
            ),
          ),*/
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      this.tabtext = "",
      this.tabBorder = false,
      this.tabColor = false});
  final String tabtext;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      child: Center(child: Text(tabtext)),
      decoration: BoxDecoration(
        color: tabColor==false?Colors.white:Colors.transparent,
        borderRadius: tabBorder == false
            ? const BorderRadius.horizontal(left: Radius.circular(50))
            : const BorderRadius.horizontal(right: Radius.circular(50)),
      ),
    );
  }
}

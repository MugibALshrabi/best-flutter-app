import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/base/res/styles/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/home/ticket/widgets/ticket_positioned_circles.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

import '../../../base/widgets/app_column_text_layout.dart';

class TicketScreen extends StatefulWidget {

  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int tickeIndex=0;
@override
  void didChangeDependencies() {
  if(ModalRoute.of(context)!.settings.arguments!=null){

    var mugib=ModalRoute.of(context)!.settings.arguments  as Map;
    print("passed index ${mugib["index"]}");
    tickeIndex =mugib["index"];

    super.didChangeDependencies();
  }}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
     appBar: AppBar(
       title: Text("Tickets"),
       backgroundColor: AppStyles.bgColor,

     ),
      body: Stack(children: [ListView(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal:0 ),
          children: [
           //const SizedBox(height: 40,),
           //Text("Tickets",style: AppStyles.headLineStyle1,),
            const SizedBox(height: 20,),
            AppTicketTabs(
              firstTab: "UpComing",
              secondTab: "Previous",
            ),
            const SizedBox(height:20),
            Container(

                padding: const EdgeInsets.only(left: 16,),
                child: TicketView(ticket: ticketList[tickeIndex],isColor: true,)),
            const SizedBox(height: 1,),
            Container(
              margin: const EdgeInsets.only(right: 30,left: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),

              color: AppStyles.TicketColor,
              child: Container(
                child:  Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          alignment: CrossAxisAlignment.start,
                          topText: "Flutter DB",
                          isColor: true,
                          bottomText: "Password",

                        ),
                        AppColumnTextLayout(
                          topText: "5221 36869",
                          bottomText: "Password",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,

                        ),

                      ],
                    ),
                    const SizedBox(height: 20,),
                    const AppLayoutbuilderWidget(randomDivider: 15,width: 5,isColor: false),
                    const SizedBox(height: 20,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          alignment: CrossAxisAlignment.start,
                          topText: "2465 780451100",
                          isColor: true,
                          bottomText: "Number of E-Ticket",

                        ),
                        AppColumnTextLayout(
                          topText: "mjeeb",
                          bottomText: "Booking code",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,

                        ),

                      ],
                    ),
                    const SizedBox(height: 20,),
                    const AppLayoutbuilderWidget(randomDivider: 15,width: 5,isColor: false),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(

                              children: [
                                Image.asset("assets/images/visa_card.png",scale: 11,),
                                Text(" *** 2462",style: AppStyles.headLineStyle3,)
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Payment method",style: AppStyles.headLineStyle4,)

                          ],
                        ),
                        AppColumnTextLayout(
                          alignment: CrossAxisAlignment.start,
                          topText: "\$${249.99}",
                          isColor: true,
                          bottomText: "Price",

                        ),



                      ],
                    ),
                  ],
                ),
              ),
              //bottom of the tcket detail section
            ),
            SizedBox(height: 1,),
           Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: AppStyles.TicketColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(21),
                  bottomLeft: Radius.circular(21),
                ),

              ),
             child: Container(

               child: ClipRRect(
                 child: BarcodeWidget(
                   height: 70,
                   barcode: Barcode.code128(),
                   data: 'https://www.mojeeb.com',

                 ),
               ),
             ),
           ),

            SizedBox(height: 20,),
            //colorful ticket
            Container(
              padding: EdgeInsets.only(left: 16),
              child: TicketView(ticket: ticketList[tickeIndex],),

            )

          ],
          ),
        TicketPositionedCircles(
          pos: true,
        ),
        TicketPositionedCircles(
          pos: null,
        ),


        ],
      ),
    );
  }
}

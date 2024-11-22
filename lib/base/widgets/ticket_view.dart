import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/styles/big_dot.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/text_style_forth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView({super.key,required this.ticket,this.wholeScreen=false,this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(

        margin:  EdgeInsets.only(right: wholeScreen==true?0:16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isColor==null?AppStyles.ticketBlue:AppStyles.TicketColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                ),
                child: Column(
                  children: [
                    //show departure and destination with icons first line

                    Row(
                      children: [
                        TextStyleThird(text:ticket["from"]["code"],isColor: isColor,),
                        Expanded(child: Container()),
                         BigDot(isColor: isColor,),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                                height: 24,
                                child: AppLayoutbuilderWidget(
                                  randomDivider: 6,
                                )),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor==null?Colors.white:AppStyles.planeSecondColor,
                                  )),
                            )
                          ],
                        )),
                         BigDot(
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                         TextStyleThird(
                          text:ticket["to"]["code"],
                           isColor: isColor,
                        ),
                      ],
                    ),
                    //show departuer and destination name with time
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                         SizedBox(
                          width: 100,
                          child:  TextStyleForth(
                            text: ticket["from"]["name"],
                          isColor: isColor,),

                        ),
                        Expanded(child: Container()),
                         TextStyleForth(
                          text: ticket["flying_time"],
                         isColor: isColor,),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child:  TextStyleForth(
                            text:ticket["to"]["name"],
                            isColor: isColor,
                            align: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            //circle and date
            Container(
              margin: EdgeInsets.only(right: 16),
              height: 20,
              color: isColor==null?AppStyles.ticketOrange:AppStyles.TicketColor,
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                  Expanded(
                      child: AppLayoutbuilderWidget(
                    randomDivider: 16,
                    width: 6,
                        isColor: isColor,
                  )),
                  BigCircle(
                    isRight: true,
                    isColor: isColor,
                   ),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isColor==null?AppStyles.ticketOrange:AppStyles.TicketColor,
                  borderRadius:  BorderRadius.only(
                      bottomLeft: Radius.circular(isColor==null?21:0),
                      bottomRight: Radius.circular(isColor==null?21:0)),
                ),
                child: Column(
                  children: [
                    //show departure and destination with icons first line

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(

                          children: [
                           AppColumnTextLayout(
                             alignment: CrossAxisAlignment.start,
                             topText: ticket["date"],
                             isColor: isColor,
                             bottomText: "Date",

                           ),



                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AppColumnTextLayout(
                              alignment: CrossAxisAlignment.center,
                              topText: ticket["departure_time"],
                              isColor: isColor,
                              bottomText: "Deperture Time",

                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AppColumnTextLayout(
                              alignment: CrossAxisAlignment.end,
                              topText: ticket["number"].toString(),
                              bottomText: "Number",
                              isColor: isColor,

                            ),
                          ],
                        ),


                      ],
                    ),
                    //show departuer and destination name with timeSizedBox(



                  ],
                )),
          ],
        ),
      ),
    );
  }
}

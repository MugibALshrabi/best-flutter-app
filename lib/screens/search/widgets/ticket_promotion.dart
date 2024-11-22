import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          width: size.width*.42,
          height: 435,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 2,
                )
              ]
          ),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        fit:BoxFit.cover,
                        image: AssetImage(
                            "assets/images/plane_sit.jpg"
                        )
                    )
                ),
              ),
              const SizedBox(height: 12,),
              Text("20% dicount on the early booking of this flight . Don't miss",
                style: AppStyles.headLineStyle2,),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                  height: 210,
                  width: size.width*.44,
                  decoration: BoxDecoration(
                      color: Color(0xff3AB888),
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount \nfor servey",
                        style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,color: Colors.white),),
                      const SizedBox(height: 10,),
                      Text("Take the survey about our services and get discount",
                        style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,color: Colors.white,
                            fontSize: 18),),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -45,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 18,
                            color:AppStyles.circleColor)
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              width: size.width*0.44,
              height: 210,
              decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(18) ,
                  color: Color(0xffec6545)),
              child: Column(
                children: [
                  Text("Take Love",
                    style: AppStyles.headLineStyle2.copyWith(color: Colors.white),)
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

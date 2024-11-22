import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/styles/media.dart';

class Hotel extends StatelessWidget {
  final Map<String,dynamic>hotel;
  const Hotel ({super.key,required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "/hotal_detail");
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
       width: size.width*0.6,

        height: 350,
        margin:  EdgeInsets.only(right:16),
       decoration: BoxDecoration(
         color: AppStyles.primaryColor,
         borderRadius: BorderRadius.circular(24)


       ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
              // height: 180,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}")
                  )

                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(hotel['place'],
                style: AppStyles.headLineStyle3.copyWith(color: AppStyles.kakiColor),),
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(hotel['destination'],
                    style: AppStyles.headLineStyle4.copyWith(color:Colors.white ),),
                ),
                SizedBox(width: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("\$${hotel['price']}/night",
                     style: AppStyles.headLineStyle4.copyWith(color:AppStyles.kakiColor),),
                ),
              ],
            )

          ],

        ),

      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';

class AllHotals extends StatelessWidget {
  const AllHotals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text("All Hotels",textAlign: TextAlign.center,),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
          ),
              itemCount: hotelList.length,
              itemBuilder:(context,index) {
            var singleHotal= hotelList[index];
            return HotelGridview(hotel: singleHotal,index:index);


              }
              ),
        ),
      ),
      );
  }
}

class HotelGridview extends StatelessWidget {
  final Map<String,dynamic>hotel;
  final int index;
  const HotelGridview ({super.key,required this.hotel,required this.index});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){},

      child: Container(
        padding: EdgeInsets.all(8.0),
      //  width: size.width*0.6,

        height: 350,
        margin:  EdgeInsets.only(right:8),
        decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(18)


        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                  // height: 180,
                  decoration: BoxDecoration(
                      color: AppStyles.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/${hotel['image']}")
                      )

                  ),
                               ),


           const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(hotel['place'],
                style: AppStyles.headLineStyle3.copyWith(color: AppStyles.kakiColor),),
            ),
            Row(
              children: [

                SizedBox(width: 5,),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(hotel['destination'],
                    style: AppStyles.headLineStyle3.copyWith(color:Colors.white ),),
                ),

                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("\$${hotel['price']}/night",style: AppStyles.headLineStyle4.copyWith(color:AppStyles.kakiColor),),
                ),
              ],
            )

          ],

        ),


      ),
    );
  }
}

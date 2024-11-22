import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class HotalDetail extends StatelessWidget {
  const HotalDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hotal title"),
              background:Image.asset("assets/images/pool_view_2.png"),
            ),

          ),
          SliverList(delegate: SliverChildListDelegate([
            const Padding(padding: EdgeInsets.all(16.0),
            child: Text("In this articale,we will create acustom scrollable app with Developer Underoid aplication ,he is so proffisional programming ,and  Networking Engineer,analysisi,alot of thing to doing ,My phone is 967780451100 ",
              ),),
        const Padding(padding: EdgeInsets.all(16.0),
            child: Text("More Images",
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
        ),
            Container(
              height: 200.0,
              child: ListView.builder(itemBuilder: (context,index){

              }),
            ),

          ],

          ))
        ],
      ),
    );
  }
}

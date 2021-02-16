import 'package:flight_booking_app/common/color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/model/icons.dart';
import 'package:flight_booking_app/screens/home/popularplaces.dart';
import 'package:flight_booking_app/screens/home/topmenu.dart';
import 'package:flutter/material.dart';

import 'bestoffers.dart';
import 'bottomnavigation.dart';

//This is homepage,which contain regarding all the plcaces and best offers

class Home_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home();
  }
}
class Home extends State<Home_screen>{
  // bool showHorizontalBar;
  @override

  Widget build(BuildContext context) {
    //   // TODO: implement build
    return Scaffold(
        body:ListView(
          children: [
            Padding(
                padding:const EdgeInsets.only(left: 14),
              child: Container(

                child:Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(
                      margin: EdgeInsets.only(top:20),
                      child: ListTile(
                        title: Text(
                          Strings.text_hometitle,
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                              color: CustomColors.blackcolor//By using class name and object to show the color here.
                          ),
                        ),
                      ) ,
                    ),
                    Topmenu(),//this i make it as another file
                    SizedBox(height: 15),
                    ListTile(
                      title: Text(
                        Strings.text_bestoffers,
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: CustomColors.blackcolor),),
                      subtitle: Text(
                        Strings.text_recdestionation,
                      ),
                      trailing: Text(
                        Strings.text_viewall,
                        style: TextStyle(color: CustomColors.pinkcolor),
                      ),
                    ),
                    Bestoffers(),//this i make it another file
                    SizedBox(height: 20),
                    ListTile(
                      title: Text(
                        Strings.text_popular,
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: CustomColors.blackcolor),),
                      //subtitle: Text("Recommended Destination"),
                      trailing: Text(
                         Strings.text_viewall,
                        style: TextStyle(color: CustomColors.pinkcolor),
                      ),
                    ),
                    PopularPlaces(),// this i make it as a another file
                  ],
                ),
              ),
            ),
          ],
        ),
      bottomNavigationBar: BotttomNaviagtion(),
    );
  }
}


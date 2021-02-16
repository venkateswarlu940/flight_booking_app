import 'package:flight_booking_app/common/color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flutter/material.dart';
class Topmenu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return menu();
  }
}
class menu extends State<Topmenu>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [ GestureDetector(
                  onTap: (){
                    // print("venky");
                  },
                  child:Container(
                    height: 70.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: CustomColors.redcolor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Icon(Icons.airplanemode_active,color: Colors.white),
                  ),
                ),
                  SizedBox(height: 10),
                  Text(Strings.text_flight),
                ],
              ),
            ),
            SizedBox(width: 17),
            Container(
              child: Column(
                children: [ GestureDetector(
                  onTap: (){
                    // print("venky");
                  },
                  child:Container(
                    height: 70.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: CustomColors.greencolor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Icon(Icons.hotel,color: Colors.white),
                  ),
                ),
                  SizedBox(height: 10),
                  Text(Strings.text_hotel),
                ],
              ),
            ),
            SizedBox(width: 17),
            Column(
              children: [
                Container(
                  child: Column(
                    children: [ GestureDetector(
                      onTap: (){
                        // print("venky");
                      },
                      child:Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.carcolor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Icon(Icons.car_repair,color: Colors.white),
                      ),
                    ),
                      SizedBox(height: 10),
                      Text(Strings.text_car),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(width: 17),
            Column(
              children: [
                Container(
                  child: Column(
                    children: [ GestureDetector(
                      onTap: (){
                        // print("venky");
                      },
                      child:Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.deeppinkcolor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Icon(Icons.restaurant,color: Colors.white),
                      ),
                    ),
                      SizedBox(height: 10),
                      Text(Strings.text_resturant),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 17),
            Column(
              children: [
                Container(
                  child: Column(
                    children: [ GestureDetector(
                      onTap: (){
                        // print("venky");
                      },
                      child:Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.lightgreencolor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Icon(Icons.restaurant,color: Colors.white),
                      ),
                    ),
                      SizedBox(height: 10),
                      Text(Strings.text_resturant),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
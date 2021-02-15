import 'package:flight_booking_app/model/icons.dart';
import 'package:flutter/material.dart';
class Home_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home();
  }
}
class Home extends State<Home_screen>{
  bool showHorizontalBar;
  @override

  Widget build(BuildContext context) {
    //   // TODO: implement build
    return Scaffold(
        body:Container(
          //margin: EdgeInsets.symmetric(vertical: 20.0),
          //height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                //margin: EdgeInsets.all(100.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle
                ),
              ),
              // Container(
              //   //margin: EdgeInsets.all(100.0),
              //   decoration: BoxDecoration(
              //       color: Colors.orange,
              //       shape: BoxShape.circle
              //   ),
              // ),
              // Container(
              //   //margin: EdgeInsets.all(100.0),
              //   decoration: BoxDecoration(
              //       color: Colors.orange,
              //       shape: BoxShape.circle
              //   ),
              // ),
              // Container(
              //   //margin: EdgeInsets.all(100.0),
              //   decoration: BoxDecoration(
              //       color: Colors.orange,
              //       shape: BoxShape.circle
              //   ),
              // ),
              // Container(
              //   //margin: EdgeInsets.all(100.0),
              //   decoration: BoxDecoration(
              //       color: Colors.orange,
              //       shape: BoxShape.circle
              //   ),
              // ),
            ],
          ),
        ),
    );
  }
}


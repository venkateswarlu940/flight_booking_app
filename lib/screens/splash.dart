import 'dart:async';

import 'package:flight_booking_app/common/color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/screens/getstarted.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class Splash_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Splash();
  }
}
class Splash extends State<Splash_screen> {
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 4),
  //         ()=>Navigator.pushReplacement(context,
  //         MaterialPageRoute(builder:
  //             (context) =>
  //             Getstarted()
  //         )
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: CustomColors.backgroundcolor,//These is the entire background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("assets/images/splashlogo.png",
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                margin: const EdgeInsets.only(top: 40),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      Strings.textnavana,
                      style: GoogleFonts.baloo(
                          fontSize: 40, color:CustomColors.whitecolor),
                    ),
                    Text(
                      Strings.textair,
                      style: GoogleFonts.baloo(
                          fontSize: 40, color: CustomColors.pinkcolor),
                    ),
                  ],
                ),
                //margin: EdgeInsets.only(left: 20.0,right: 50.0),
                margin: const EdgeInsets.only(left:120,right: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}
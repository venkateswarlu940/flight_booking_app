import 'package:flight_booking_app/common/color.dart';
import 'package:flutter/material.dart';
class Flatbttn extends StatelessWidget{
  Flatbttn({@required this.onPressed,@required this.title});
  final GestureTapCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
      child: Text(
        title,
        style: TextStyle(color: CustomColors.pinkcolor, fontSize: 15),
        textAlign: TextAlign.center,
      ),
      onPressed: onPressed,
    );
  }
}
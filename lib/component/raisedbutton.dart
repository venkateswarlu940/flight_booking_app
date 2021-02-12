import 'package:flight_booking_app/common/color.dart';
import 'package:flutter/material.dart';
class RaisedButtons extends StatelessWidget {
  RaisedButtons({@required this.onPressed, @required this.title});

  final GestureTapCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: CustomColors.pinkcolor,
      child: Container(
          width: MediaQuery.of(context).size.width * 0.55,
          padding: EdgeInsets.all(18.0),
          child: Text(
            title,
            style: TextStyle(
                color: CustomColors.whitecolor,
                fontSize: 15),
            textAlign: TextAlign.center,
          )),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}

import 'package:flight_booking_app/common/color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flutter/material.dart';

// This is the Bestoffers page, here it will show some places
class Bestoffers extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return bestoff();
  }
}
class bestoff extends State<Bestoffers>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(
          children: [
            Container(
              child:Column(
                children: [
                  Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image:NetworkImage(ImageList.thailand_image),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 150, 0),
                    child: Text(
                        Strings.text_thailand,
                        style: TextStyle(
                            color: CustomColors.blackcolor,
                            fontSize: 17,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 150, 0),
                    child: Text(
                        Strings.text_bangkok,
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17)),
                  ),

                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image:NetworkImage(ImageList.paris_image),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 160, 0),
                    child: Text(
                        Strings.text_paris,
                        style: TextStyle(
                            color: CustomColors.blackcolor,
                            fontSize: 17,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 160, 0),
                    child: Text(
                        Strings.text_france,
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17)),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image:NetworkImage(ImageList.singapoor_image),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 160, 0),
                    child: Text(
                        Strings.text_london,
                        style: TextStyle(
                            color: CustomColors.blackcolor,
                            fontSize: 17,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 160, 0),
                    child: Text(
                        Strings.text_ovel,
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17)),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
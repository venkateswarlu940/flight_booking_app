import 'package:flight_booking_app/common/string.dart';
import 'package:flutter/material.dart';

//This is the PopularPlaces page,here it will contain the popular places details

class PopularPlaces extends StatefulWidget {
  @override
  _PopularPlacesState createState() => _PopularPlacesState();
}

class _PopularPlacesState extends State<PopularPlaces> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
            Container(
              child:Column(
                children: [
                  Container(
                    height: 170,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image:NetworkImage(ImageList.newyork_image),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 170,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image:NetworkImage(ImageList.aus_image),
                ),
              ),
            ),
            // SizedBox(height: 10),
            // Container(
            //   height: 170,
            //   width: 400,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(13),
            //     image: DecorationImage(
            //       fit: BoxFit.fill,
            //       image:NetworkImage("https://www.goworldtravel.com/wp-content/uploads/2017/10/travel-venice-italy.jpg"),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

import 'package:flight_booking_app/common/color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/component/raisedbutton.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'authentication/signup-screen.dart';

//This is the starting page where customers can click the start booking button it will go to the signup page.

class Getstarted extends StatefulWidget {
  Getstarted() : super();
  @override
  GetstartedState createState() => GetstartedState();
}

class GetstartedState extends State<Getstarted> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [    //here list of images is there by using class name and object name to display iamges.
    ImageList.Header_image1,
    ImageList.Header_image2,
    ImageList.Header_image3,
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    try {
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
    }catch(e){
      throw(e);
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // Widget _changeMode(
    //     {double sliderHeight, sliderWidth, double buttonHt, double buttonWt}) {
    Widget _changeMode( {double sliderHeight, sliderWidth,buttonHeight,buttonWidth}){
      return Stack(fit: StackFit.expand, children: [
        Container(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                carouselSlider = CarouselSlider(
                  height: sliderHeight,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  reverse: false,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  pauseAutoPlayOnTouch: Duration(seconds: 10),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                  items: imgList.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: sliderWidth,
                          // height: MediaQuery.of(context).size.height,
                          // width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            //color: Colors.green,
                          ),
                          child: Image.network(
                            imgUrl,
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: height*0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(imgList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? CustomColors.pinkcolor
                            : CustomColors.greycolor,
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: height*0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButtons(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>Sign_up()),
                        );
                      },
                      title: Strings.textstart_booking,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

      ]);
    }
    return Scaffold(
      // backgroundColor:Colors.black87,
      body: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _changeMode(
                sliderHeight: height * 0.45,
                buttonHeight: height * 0.07,
                buttonWidth: width * 0.10,
                sliderWidth: width
            );
          } else {
            return _changeMode(
              sliderHeight: width * 0.34,
              buttonHeight: width * 0.07,
              buttonWidth: height * 0.10,
              sliderWidth: width * 0.58,
            );
          }
      }
      ),
    );
  }
  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
import 'package:flight_booking_app/common/color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/component/flatbutton.dart';
import 'package:flight_booking_app/component/raisedbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_screen.dart';

// This is the signup page for the customers can register their details

class Sign_up extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return sign_screen();
  }
}
class sign_screen extends State<Sign_up>{
  bool _isHidden=true;
  String name,email;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  TextEditingController password = TextEditingController();  //TextController to read text entered in text field
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child:Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:90),
                        child: ListTile(
                          title: Text(
                            Strings.text_create,
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                                color: CustomColors.deepgreycolor//By using class name and object to show the color here.
                            ),
                          ),
                        ) ,
                      ),
                      Container(
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return Strings.text_validname;//please enter your name text
                            }
                            return null;
                          },
                          onSaved: (String value){
                            name=value;
                          },
                          decoration: InputDecoration(
                            //suffixIcon: Icon(Icons.remove_red_eye),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:Colors.black54),
                            ),
                            hintText: Strings.name,
                          ),
                        ),
                        margin: const EdgeInsets.only(left: 30,right: 30,top: 30),
                      ),
                      Container(
                        child: TextFormField(
                          validator: validateEmail,
                          // onSaved: (String value){
                          //   email = value;
                          // },
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.done,color: CustomColors.pinkcolor),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:Colors.black54),
                            ),
                            hintText: Strings.email,
                          ),
                        ),
                        margin: const EdgeInsets.only(left: 30,right: 30,top: 30),
                      ),
                      Container(
                        child:TextFormField(
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter your password';
                          //   }
                          //   return null;
                          // },
                          validator: validatePassword,
                          //     (value) {
                          //   if (value.isEmpty) {
                          //     return "* Required";
                          //   } else if (value.length < 6) {
                          //     return "Password should be atleast 6 characters";
                          //   } else if (value.length > 15) {
                          //     return "Password should not be greater than 15 characters";
                          //   } else
                          //     return null;
                          // },
                          obscureText: _isHidden,
                          decoration: InputDecoration(
                            hintText: Strings.password,
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden ? Icons.visibility : Icons.visibility_off,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:Colors.black54),
                            ),
                          ),
                        ),
                        margin: const EdgeInsets.only(left: 30,right: 30,top: 30),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                          margin: EdgeInsets.only(left: 10,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RaisedButtons(onPressed: (){
                                // Validate returns true if the form is valid, otherwise false.
                                if (_formKey.currentState.validate()) {
                                  // print("successful");
                                  // If the form is valid, display a snackbar. In the real world,
                                  // you'd often call a server or save the information in a database.
                                  // Scaffold
                                  //     .of(context)
                                  //     .showSnackBar(SnackBar(content: Text('Processing Data')));
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=>Login_page()),
                                  );
                                }else{
                                  //print("Unsuccessful");
                                }
                              },
                                title:Strings.text_signup_buttton,//signup button
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:60,left: 30,right: 30),
                        child:Container(
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(Strings.text_alreadyacccount),  //here we add text by call the class and object name
                                //margin: EdgeInsets.only(left: 20),
                              ),
                              Flatbttn(                    //this is for sign button
                                title:Strings.text_signin,
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=>Login_page()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                            Strings.text_skip),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}


import 'package:flutter/material.dart';
//Here we are trying to access the string data
class Strings {
  static const String textnavana = "navana";
  static const String textair = "air";
  static const String textstart_booking = "START BOOKING";
  static const String text_create = "Create\nan account";
  static const String name = "Name";
  static const String email = "Email";
  static const String password = "Password";
  static const String text_signup_buttton = "SIGN UP";
  static const String text_alreadyacccount = "Already have an account?";
  static const String text_skip = "Skip for Now";
  static const String text_validname = "please enter your name";
  static const String text_validemail = "please Enter email";
  static const String text_validpassword = "please enter password";
  static const String text_validpassresult = "Enter valid password";
  static const String text_signin = "Sign In";
  static const String text_login = "Login\nyour account";
  static const String text_loginbutton = "LOGIN";
  static const String text_createtext = "Don't have an account?";
  static const String text_signup = "Sign Up";
  static const String text_loginwith = "Login with";
  static const String text_forgetpassword = "Forgot Password";



}
//validation for password
String validatePassword(String value) {
  Pattern pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regex = new RegExp(pattern);
  //print(value);
  try {
    if (value.isEmpty) {
      return Strings.text_validpassword; //this is your password text
    } else {
      if (!regex.hasMatch(value))
        return Strings.text_validpassresult; //this is your password checking
      else
        return null;
    }
    }catch(e){
      throw(e);
  }
}
//validation for email
String validateEmail(String value){
  try {
    if (value.isEmpty) {
      return Strings.text_validemail; //this is for your email text
    }
    else{
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
      return 'Please Enter valid Email';
    }
    return null;
    }
  }catch(e){
  throw(e);
   }
}

class ImageList{
  static const Header_image1='https://i.pinimg.com/originals/f9/86/eb/f986ebc2e2f933445d1ea7d9a18c5a2d.jpg';
  static const Header_image2='https://image.freepik.com/free-vector/man-traveling-by-plane-around-world-cartoon-flat_82574-4708.jpg';
  static const Header_image3='https://www.kindpng.com/picc/m/274-2743231_free-travel-cartoon-png-transparent-png.png';
  static const splashlogo_image='assets/images/splashlogo.png';
  static const fb_image='https://kulak.kuleuven.be/nl/nieuws_activiteiten/activiteiten/images/logo-facebook.png/image';
  static const google_image='https://img-authors.flaticon.com/google.jpg';
}
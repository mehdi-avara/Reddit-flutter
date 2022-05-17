import 'package:flutter/material.dart';
import 'package:ui_flutter/screens/login/login_screen.dart';
import 'package:ui_flutter/config/palette.dart';

class LoginSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isSignUpScreen = true;
    bool isRememberMe = false;
    bool isMale = true;

    Widget build(BuildContext context){
      return Scaffold(
          backgroundColor: Palette.backgroundColor,
          body: Stack(
            children: [
              Positioned(
                  top:0,
                  child:Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      // image:DecorationImage("images/background.png"),
                    ),


                  )
              )
            ],
          )

      );
    }
  }
}
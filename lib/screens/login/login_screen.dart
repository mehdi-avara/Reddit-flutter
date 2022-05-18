import 'package:flutter/material.dart';
import 'package:ui_flutter/config/palette.dart';


class LoginSignUpScreen extends StatefulWidget{
   @override
   _LoginSignUpScreenState createState() => _LoginSignUpScreenState();
 }

class _LoginSignUpScreenState {
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
                          image:DecorationImage(
                            image: AssetImage("images/background.jpg"),
                            fit: BoxFit.fill,

                          )
                      ),
                      child: Container(
                          padding: EdgeInsets.only(top: 90,left: 20),
                          color: Color(0xFF3b5999).withOpacity(.85),
                          child: Column(
                            children: [
                              RichText(
                                  text: TextSpan(
                                    text: 'Welcome to Reddit',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.yellow[700],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                              )
                            ],
                          )
                      )
                  )
              )
            ],
          )

      );
    }
  }
}

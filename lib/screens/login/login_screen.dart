import 'package:flutter/material.dart';
import 'package:ui_flutter/config/palette.dart';


class LoginSignUpScreen extends StatefulWidget{
  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen>{
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
                  right: 0,
                  left: 0,
                  child:Container(
                      height: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          image:DecorationImage(
                            image: AssetImage("assets/images/background.jpg"),
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
                                    text: 'Welcome to ',
                                    style: TextStyle(
                                      fontSize: 25,
                                      letterSpacing: 2,
                                      color: Colors.yellow[700],
                                      // fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Reddit',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ]
                                  ),
                              ),
                              SizedBox(height: 5,),
                              Text("SignUp to continue",
                                style: TextStyle(
                                  // fontSize: 25,
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),

                            ],
                          )
                      )
                  )
              ),
              Positioned(
                top: 200,

                child: Container(
                  height: 380,
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width-40,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 15,
                            spreadRadius: 5,
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("Login",style: TextStyle(
                                fontSize:16,
                                fontWeight: FontWeight.bold,
                                color: Palette.textColor1,
                              ),),
                              Container(
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                Column(
                  children: [
                    Text("SignUp",style: TextStyle(
                      fontSize:16,
                      fontWeight: FontWeight.bold,
                      color: Palette.activeColor,
                    ),),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      height: 2,
                      width: 55,
                      color: Colors.orange,
                    ),
                  ],
                )],
                      )
                    ],
                  ),
                ),
              )
            ],
          )

      );
    }
  }
}
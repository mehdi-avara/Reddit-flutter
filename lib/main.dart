import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/HomePage.dart';
import 'package:ui_flutter/Pages/splash%20Screen.dart';
import 'package:ui_flutter/Pages/loginSignUpPage.dart';
import 'package:ui_flutter/config/themeSettings.dart';


void main() {
  runApp(const App());
  // runApp(const LoginSignupUIignUpUI());
}
class LoginSignupUI extends StatelessWidget {
  const LoginSignupUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Signup UI",
      home: LoginSignupScreen(),
    );
  }
}




class App extends StatelessWidget {

  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: 'Reddit',
      theme: ThemeClass.appTheme,
      home: const HomePage(),
    );
  }
}

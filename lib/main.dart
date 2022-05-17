import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/splash%20Screen.dart';
import 'package:ui_flutter/screens/login/login_screen.dart';


void main() {
  runApp(const App());
  runApp(LoginPage());
}
class LoginSignUpUI extends StatelessWidget {
  const LoginSignUpUI ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login SignUp UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginSignUpPage(),
    );
  }
}



class App extends StatelessWidget {

  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

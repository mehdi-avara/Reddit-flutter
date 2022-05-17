import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/splash%20Screen.dart';


void main() {
  runApp(const App());
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

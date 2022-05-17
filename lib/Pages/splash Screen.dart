import 'package:flutter/material.dart';

import 'HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    _navigateToHome();
  }
  _navigateToHome()async{
    await Future.delayed(Duration(seconds: 3), () {});
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: "hello")));
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Image.asset('assets/images/logo.png'),
            ),
            Text('Splash Screen', style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
          ],
        ),
      ),
    );
  }
}

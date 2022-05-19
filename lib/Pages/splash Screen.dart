import 'package:flutter/material.dart';

import 'feedPage.dart';

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
    await Future.delayed(Duration(milliseconds: 100), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Reddit")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.1,
              child: Image.asset('assets/images/logo.png'),
            ),
            Text('Reddit', style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.03,
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

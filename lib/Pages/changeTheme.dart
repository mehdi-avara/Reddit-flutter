import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/feedPage.dart';
import 'package:ui_flutter/config/themeSettings.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({Key key}) : super(key: key);

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Change Theme'),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                child: Text('Change Theme to dark'),
                onPressed: () {
                  setState(() {
                    ThemeClass.changeThemeToDark();
                    print("theme");
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => feedPage()),
                        (Route<dynamic> route) => false);
                  }
                  );

                },
              ),
              RaisedButton(
                child: Text('Change Theme to light'),
                onPressed: () {
                  setState(() {
                    ThemeClass.changeThemeToLight();
                    print("theme");
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => feedPage()),
                        (Route<dynamic> route) => false);
                  }
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

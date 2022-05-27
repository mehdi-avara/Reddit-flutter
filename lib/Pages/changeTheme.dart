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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Change Theme'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Change Theme'),
            onPressed: () {
              setState(() {
                ThemeClass.changeThemeToDark();
                print("theme");
                Navigator.push(context, MaterialPageRoute(builder: (context) => feedPage()));
              }
              );

            },
          ),
        ),
      ),
    );
  }
}

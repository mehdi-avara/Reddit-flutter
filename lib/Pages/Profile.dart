import 'package:flutter/material.dart';

import '../config/themeSettings.dart';
import '../models/user.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.darkTheme,
      darkTheme: ThemeClass.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Profile'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Username : ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Password : ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Email : ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditInfo extends StatefulWidget {
  @override
  _EditInfoState createState() => _EditInfoState();
}

class _EditInfoState extends State<EditInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.darkTheme,
      darkTheme: ThemeClass.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Edit Info'),
        ),
        body: Center(

        ),
      ),
    );
  }
}
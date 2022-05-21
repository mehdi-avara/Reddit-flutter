import 'package:flutter/material.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';
import '../config/themeSettings.dart';


class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.darkTheme,
      darkTheme: ThemeClass.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Setting'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () { //free for set function on it
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              IconButton(onPressed: (){} ,icon: Icon(Icons.settings),),
              RaisedButton(onPressed: (){
                Navigator.pop(context);
              },
                child: Text('Other Widget'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),

                padding: EdgeInsets.only(top: 10.0, bottom: 30.0, left: 10.0, right: 10.0),
                child: Text('Account settings',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Theme',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Language',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text('About',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Contact',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Privacy Policy',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Terms of Service',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Logout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: widgets.bottomNavigationBar(context),
      ),
    );
  }
}
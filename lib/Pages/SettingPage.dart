import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/addPost.dart';
import 'package:ui_flutter/Pages/feedPage.dart';
import 'package:ui_flutter/Pages/loginSignUpPage.dart';
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
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/setting.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 250.0),
                  child: Container(
                      child:TextButton.icon(
                          label: Text('Profile', style: TextStyle(color: Colors.grey, fontSize: 20.0),),
                          icon: Icon(Icons.person,color: Colors.red,size: 40,),
                          onPressed: () {
                            print('Pressed');
                          }
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0, bottom: 5.0, left: 20.0, right: 180.0),
                  child: Container(
                    // padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
                    child: TextButton.icon(
                      label: Text('Create Community', style: TextStyle(fontSize: 20.0,color: Colors.grey),),
                      icon: Icon(Icons.people,size: 40,color: Colors.yellow,),
                      onPressed: () {
                        print('Pressed');
                      },
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text('Language',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text('About',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text('Contact',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
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
      ),
    );
  }
}
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
                            print('Pressed'); //this is free for set a function on it
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
                        print('Pressed'); //this is free for set a function on it
                      },
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0, bottom: 5.0, left: 5.0, right: 200.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextButton.icon(
                      label: Text('Saved posts', style: TextStyle(fontSize: 20.0,color: Colors.grey),),
                      icon: Icon(Icons.save_rounded,size: 40,color: Colors.green,),
                      onPressed: () {
                        print('Pressed'); //this is free for set a function on it
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0, bottom: 5.0, left: 5.0, right: 230.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextButton.icon(
                      label: Text('About us', style: TextStyle(fontSize: 20.0,color: Colors.grey),),
                      icon: Icon(Icons.account_box,size: 40,color: Colors.blue,),
                      onPressed: () {
                        print('Pressed'); //this is free for set a function on it
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0, bottom: 5.0, left: 5.0, right: 250.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextButton.icon(
                      label: Text('Theme', style: TextStyle(fontSize: 20.0,color: Colors.grey),),
                      icon: Icon(Icons.collections_rounded,size: 40,color: Colors.orange,),
                      onPressed: () {
                        print('Pressed'); //this is free for set a function
                      },
                    ),
                    ),
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
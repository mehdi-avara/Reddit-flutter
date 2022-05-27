import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/Profile.dart';
import 'package:ui_flutter/Pages/addPost.dart';
import 'package:ui_flutter/Pages/changeTheme.dart';
import 'package:ui_flutter/Pages/feedPage.dart';
import 'package:ui_flutter/Pages/loginSignUpPage.dart';
import 'package:ui_flutter/Pages/savedPost.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';
import '../config/themeSettings.dart';
import 'AboutUs.dart';
import 'CreateCommunity.dart';


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
      theme: ThemeClass.appTheme,
      darkTheme: ThemeClass.appTheme,
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
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child:TextButton.icon(
                      label: Text('Profile', style: TextStyle(color: Colors.grey, fontSize: 20.0),),
                      icon: Icon(Icons.person,color: Colors.red,size: 40,),
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Profile())); //this is free for set a function on it
                      }
                  ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: TextButton.icon(
                  label: Text('Create Community', style: TextStyle(fontSize: 20.0,color: Colors.grey),),
                  icon: Icon(Icons.people,size: 40,color: Colors.yellow,),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => CreateCommunity())); //this is free for set a function on it
                  },
                ),

              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: TextButton.icon(
                  label: Text('Saved posts', style: TextStyle(fontSize: 20.0,color: Colors.grey),),
                  icon: Icon(Icons.save_rounded,size: 40,color: Colors.green,),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SavedPost())); //this is free for set a function on it
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: TextButton.icon(
                  label: Text('About us', style: TextStyle(fontSize: 20.0,color: Colors.grey),),
                  icon: Icon(Icons.account_box,size: 40,color: Colors.blue,),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => AboutUs()));//this is free for set a function on it
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: TextButton.icon(
                  label: Text('Theme', style: TextStyle(fontSize: 20.0,color: Colors.grey),),
                  icon: Icon(Icons.collections_rounded,size: 40,color: Colors.orange,),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ChangeTheme()) ); //this is free for set a function
                  },
                ),
                ),
            ],
          ),
        // bottomNavigationBar: widgets.bottomNavigationBar(context),
      ),
      ),
    );
  }
}
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
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/profile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: <Widget>[
                Center(
                  // padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0, right: 20.0),
                  child: Container(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0, right: 280.0),
                    child: Text(
                      'Username : ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Center(
                  // padding: EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0, right: 280.0),
                    child: Text(
                      'Password : ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Center(
                  // ,
                  child: Container(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0, right: 280.0),
                    child: Text(
                      'Email : ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 90.0, bottom: 80.0, left: 20.0, right: 20.0),
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EditInfo()),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.blueGrey,
                          onSurface: Colors.grey,
                        ),
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  )
              ],
            ),
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
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/profile.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
              child:ListView(
                children: <Widget>[
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 70.0, bottom: 10.0, left: 20.0, right: 20.0),
                      child: SizedBox(
                        width: 180,
                        height: 80,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'New Username',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: SizedBox(
                        width: 180,
                        height: 80,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'New Password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    //
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: SizedBox(
                        width: 180,
                        height: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'New Email',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.blueGrey,
                          onSurface: Colors.grey,
                        ),

                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    )
                ],
              ),
          ),
        ),
      ),
    );
  }
}
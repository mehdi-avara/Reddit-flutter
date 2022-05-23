import 'package:flutter/material.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';

import '../config/themeSettings.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.darkTheme,
      darkTheme: ThemeClass.darkTheme,
    home:Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/AboutUs2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ListView(
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 130.0, right: 20.0),
                child: Text(
                  'Mehdi Avara',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 110.0, right: 20.0),
                child: Text(
                  'avaramehdi@gmail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0, bottom: 40.0, left: 120.0, right: 20.0),
                child: Text(
                  '+989395991023',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white70,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0, bottom: 10.0, left: 100.0, right: 20.0),
                child: Text(
                  'Morteza Mahdavi',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),


              Padding(
                padding:const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 80.0, right: 20.0),
                child: Text(
                  'seyedmorteza2400@gmail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
              )
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0, bottom: 40.0, left: 120.0, right: 20.0),
                child: Text(
                  '+989036268283',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white70,
                  ),
                ),
              ),

              Center(
                child: SizedBox(
                  height: 60,
                  width: 100,
                  child: TextButton(
                    onPressed: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => MoreInfo()),
                       );
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.blueGrey,
                      onSurface: Colors.grey,
                    ),
                    child: Text(
                      'More',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
                )
        ]
          ),
        ),
      ),
      bottomNavigationBar: widgets.bottomNavigationBar(context),
    ),
    );
  }
}

class MoreInfo extends StatelessWidget {
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
          title: Text('More Information'),
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:50.0, bottom: 10.0, left: 70.0, right: 20.0),
                child: Text(
                  '''Im Morteza Mahdavi and my colleague is Mehdi Avara.
We Both from bushehr and and study in SBU.
                  
for AP project we were grouped and creating this app with flutter and java.
                  
our favorite field is machine learning and we hope create ai projects with each other
in the future.'''
                  ,style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              )
            ]
          )
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../config/themeSettings.dart';



class CreateCommunity extends StatefulWidget {
  @override
  _CreateCommunityState createState() => _CreateCommunityState();
}

class _CreateCommunityState extends State<CreateCommunity> {
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
          title: Text('Create Community'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/community.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Center(
                      child:SizedBox(
                        width: MediaQuery.of(context).size.width*0.8,
                        height: MediaQuery.of(context).size.height*2.1,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Community Name',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            prefixIcon: Icon(Icons.group,color: Colors.white,),
                          ),
                        ),
                      ),
                    )
                  ]
                )
              )
          ),
        ),
      ),
    );
  }
}
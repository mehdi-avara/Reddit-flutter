import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../config/themeSettings.dart';

class addPost extends StatefulWidget {
  const addPost({Key key}) : super(key: key);

  @override
  State<addPost> createState() => _addPostState();
}



class _addPostState extends State<addPost> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.darkTheme,
      darkTheme: ThemeClass.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Add Post'),
          // backgroundColor: Colors.blue,
          backgroundColor:Theme.of(context).appBarTheme.backgroundColor ,
          leading: IconButton(
            //create Text icon
            icon: Icon(Icons.arrow_back),
            iconSize: 30.0,
            onPressed: () { //empty space for putting function
              Navigator.pop(context);
            },
          ),
          leadingWidth: 50.0,
          actions: <Widget>[
            TextButton(
              child: Text('NEXT'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.black,
                onSurface: Colors.grey,
              ),
              onPressed: () {  //empty space for putting function
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 140.0, left: 40.0, right: 40.0,bottom: 10.0),
            child:ListTile(
              title: TextField(
                decoration: InputDecoration(
                    labelText: 'Title',
                    hintText: 'Add a Title',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              subtitle: TextField(
                decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'Add a Description',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
            )
        ),
      ),
    );
  }
}


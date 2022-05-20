import 'package:flutter/material.dart';

class addPost extends StatefulWidget {
  const addPost({Key key}) : super(key: key);

  @override
  State<addPost> createState() => _addPostState();
}



class _addPostState extends State<addPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add a Title'),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
                children: <Widget> [


                ]
            )
        )
    );
  }
}
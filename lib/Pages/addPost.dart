import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          //
          title: Text('Add Post'),
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
                backgroundColor: Colors.blue,
                onSurface: Colors.grey,
              ),
              onPressed: () {
                //empty space for putting function
              },
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child:ListTile(
              title: TextField(
                decoration: InputDecoration(
                    labelText: 'Title',
                    hintText: 'Add a Title',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
              subtitle: TextField(
                decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'Add a Description',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
              trailing: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
        ),
    );
  }
}
// Column(
// children: <Widget> [
// TextField(
// decoration: InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'Add a Title',
// ),
// ),
// Padding(
// padding: EdgeInsets.all(10),
// ),
// TextField(
// decoration: InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'Add a Description',
// ),
// ),
// Padding(
// padding: EdgeInsets.all(10),
// ),
// RaisedButton(
// child: Text('Add Post'),
// onPressed: () {
// Navigator.pop(context);
// },
// ),
// ]
// )

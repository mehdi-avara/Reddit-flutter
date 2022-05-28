import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_flutter/Pages/SettingPage.dart';
import '../config/themeSettings.dart';

class addPost extends StatefulWidget {
  const addPost({Key key}) : super(key: key);

  @override
  State<addPost> createState() => _addPostState();
}



class _addPostState extends State<addPost> {
  get body => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.appTheme,
      darkTheme: ThemeClass.appTheme,
      home: Scaffold(

        appBar: AppBar(
          title: Text('Add Post'),
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
                // onSurface: Colors.grey,
              ),
              onPressed: () {  //empty space for putting function
                Navigator.pop(context);
              },
            ),
          ],
        ),

    body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ThemeClass.AddPost),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 140.0, left: 40.0, right: 40.0,bottom: 10.0),
                child:Column(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Text('Choose The Community',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          popUpMenu(context),
                        ],
                      ),
                    ),
                    ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                            labelText: 'Title',
                            hintText: 'Add a Title',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            )
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 60.0, left: 0.0, right: 0.0),
                        child: TextField(
                          maxLines: null,
                          decoration: InputDecoration(
                              labelText: 'Description',
                              hintText: 'Add a Description',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
      ),
    ),
      ),

    );
  }
  static PopupMenuButton popUpMenu(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Icon(Icons.list),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: ListTile(
            title: Text('Item 1 child'),
            subtitle: Text('Details goes here'),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: ListTile(
            title: Text('Item 2 child'),
            subtitle: Text('Details goes here'),
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: ListTile(
            title: Text('Item 3 child'),
            subtitle: Text('Details goes here'),
    )
        ),
      ],
      onSelected: (value) {
        switch (value) {
          case 1:
            break;
          case 2:
            break;
          case 3:
            break;
        }
      },
    );
  }

}

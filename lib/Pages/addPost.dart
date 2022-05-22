import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      theme: ThemeClass.darkTheme,
      darkTheme: ThemeClass.darkTheme,
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
                onSurface: Colors.grey,
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
            image: AssetImage('assets/images/AddPostTheme.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 140.0, left: 40.0, right: 40.0,bottom: 10.0),
                child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 30.0, right: 30.0),
                      child: Row(
                        children: [
                          Text('Choose The Community',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          IconButton(
                            icon: Icon(Icons.list),
                            onPressed: () {
                              ExpansionPanelList(
                                expansionCallback: (int index, bool isExpanded) {},
                                children: [
                                  ExpansionPanel(
                                    headerBuilder: (BuildContext context, bool isExpanded) {
                                      return ListTile(
                                        title: Text('Item 1'),
                                      );
                                    },
                                    body: ListTile(
                                      title: Text('Item 1 child'),
                                      subtitle: Text('Details goes here'),
                                    ),
                                    isExpanded: true,
                                  ),
                                  ExpansionPanel(
                                    headerBuilder: (BuildContext context, bool isExpanded) {
                                      return ListTile(
                                        title: Text('Item 2'),
                                      );
                                    },
                                    body: ListTile(
                                      title: Text('Item 2 child'),
                                      subtitle: Text('Details goes here'),
                                    ),
                                    isExpanded: false,
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                            labelText: 'Title',
                            hintText: 'Add a Title',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 60.0, left: 0.0, right: 0.0),
                        child: TextField(
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
}

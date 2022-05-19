import 'package:flutter/material.dart';
import 'package:ui_flutter/models/community.dart';
import 'package:ui_flutter/models/post.dart';
import 'package:ui_flutter/models/user.dart';
import 'package:ui_flutter/widgets/homeWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HomeWidget(
                Post.text("0", "example 1", "discribed1", User("user 1"),
                    Community("community 1"))),
            HomeWidget(
                Post.text("1", "example 2", "discribed2", User("user 2"),
                    Community("community 2"))),
          ],
        ),
      ),
        bottomNavigationBar:_bottomNavigationBar(),

    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home,
            color: Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search,
            color: Colors.black,),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add,
            color: Colors.black,),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat,
            color: Colors.black,),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications,
            color: Colors.black,),
          label: 'Notifications',
        ),
      ],
      showSelectedLabels: false,
    );
  }
}

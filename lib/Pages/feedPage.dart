import 'package:flutter/material.dart';
import 'package:ui_flutter/models/community.dart';
import 'package:ui_flutter/models/post.dart';
import 'package:ui_flutter/models/user.dart';
import 'package:ui_flutter/widgets/feedWidget.dart';

import '../config/themeSettings.dart';

class feedPage extends StatefulWidget {
  const feedPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<feedPage> createState() => _feedPageState();
}

class _feedPageState extends State<feedPage> {
  // int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // _counter++;
    });
  }
  User _user = User.withProfileImageUrl("Sourav", "assets/images/profile.jpg");
  List<Post> posts=[
    Post.text("0", "example 1\nhhhh", "discribed1", User("user 1"),Community("community 1")),
    Post.text("1", "example 2", "discribed2", User("user 2"),Community("community 2")),
    Post.text("2", "example 3", "discribed3", User("user 3"),Community("community 3")),
    Post.text("3", "example 4", "discribed4", User("user 4"),Community("community 4")),
    Post.text("4", "example 5", "discribed5", User("user 5"),Community("community 5")),
    Post.text("5", "example 6", "discribed6", User("user 6"),Community("community 6")),
    Post.text("6", "example 7", "discribed7", User("user 7"),Community("community 7")),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        backgroundColor: Colors.grey[900],
        title: ListTile(
          leading: CircleAvatar(
            radius: themeSizes.avatarRadius,
            backgroundColor: Colors.grey[850],
            child: Image.asset(_user.profileImageUrl),
          ),
          title: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: themeSizes.searchBarHint,
                color: Palette.textColor2,
              ),
              border: InputBorder.none,
              suffixIcon: Icon(
                Icons.search,
                size: themeSizes.searchBarIcon,
                color: Palette.textColor2,
              ),
            ),
          ),
      ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return feedWidget( posts[index]);
          },
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
            color: Colors.black,
          ),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
            color: Colors.black,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          label: 'Notifications',
        ),
      ],
      showSelectedLabels: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/addPost.dart';
import 'package:ui_flutter/models/comment.dart';
import 'package:ui_flutter/models/community.dart';
import 'package:ui_flutter/models/post.dart';
import 'package:ui_flutter/models/user.dart';
import 'package:ui_flutter/widgets/feedWidget.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';

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
_feedPageState(){
  posts=[
    Post.text("0", "example 1", "discribed1", user.elementAt(0),Community("community 1")),
    Post.text("1", "example 2", "discribed2", user.elementAt(1),Community("community 2")),
    Post.text("2", "example 3", "discribed3", user.elementAt(2),Community("community 3")),
    Post.text("3", "example 4", "discribed4", user.elementAt(3),Community("community 4")),
    Post.text("4", "example 5", "discribed5", user.elementAt(4),Community("community 5")),
    Post.text("5", "example 6", "discribed6", user.elementAt(5),Community("community 6")),
    Post.text("6", "example 7", "discribed7", user.elementAt(6),Community("community 7")),

  ];
  comment1=[
    Comment("comment 1", user.elementAt(0)),
    Comment("comment 2", user.elementAt(1)),
    Comment("comment 3", user.elementAt(2)),
    Comment("comment 4", user.elementAt(3)),
    Comment("comment 5", user.elementAt(4)),
    Comment("comment 6", user.elementAt(5)),];
  comment2=[
    Comment("comment 5", user.elementAt(4)),
    Comment("comment 6", user.elementAt(5))];
  comment3=[
    Comment("comment 7", user.elementAt(6))];
  posts.elementAt(0).comments=comment1;
  comment1.elementAt(0).comments=comment2;
  comment2.elementAt(0).comments=comment3;
}
  void _incrementCounter() {
    setState(() {
      // _counter++;
    });
  }
  User _user = User.withProfileImageUrl("Sourav", "assets/images/profile.jpg");
  List<User> user =[User("user 1"),User("user 2")
    ,User("user 3"),User("user 4"),User("user 5")
    ,User("user 6"),User("user 7")];
  List<Comment> comment1 = [];
  List<Comment> comment2 = [];
  List<Comment> comment3 = [];
  List<Post> posts=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.darkTheme,
      darkTheme: ThemeClass.darkTheme,
      home: Scaffold(
        appBar: widgets.appBar(_user, context),
        body: Center(
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return feedWidget( posts[index]);
            },
          ),
        ),
        bottomNavigationBar: widgets.bottomNavigationBar(context),
      ),
    );
  }

}


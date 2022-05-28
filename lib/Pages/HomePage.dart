import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/SettingPage.dart';
import 'package:ui_flutter/Pages/addPost.dart';
import 'package:ui_flutter/models/comment.dart';
import 'package:ui_flutter/models/community.dart';
import 'package:ui_flutter/models/post.dart';
import 'package:ui_flutter/models/user.dart';
import 'package:ui_flutter/widgets/communityWidget.dart';
import 'package:ui_flutter/widgets/feedWidget.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';

import '../config/themeSettings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int index = 0;
  List<Community> _community = [
    new Community.withProfileImageUrl("Flutter", "assets/images/flutter.png"),
    new Community.withProfileImageUrl("Dart", "assets/images/dart.png"),
    new Community.withProfileImageUrl("React", "assets/images/react.png"),
    new Community.withProfileImageUrl("Vue", "assets/images/vue.png"),
    new Community.withProfileImageUrl("Flutter", "assets/images/flutter.png"),
    new Community.withProfileImageUrl("Dart", "assets/images/dart.png"),
    new Community.withProfileImageUrl("React", "assets/images/react.png"),
    new Community.withProfileImageUrl("Vue", "assets/images/vue.png"),
    new Community.withProfileImageUrl("Flutter", "assets/images/flutter.png"),
    new Community.withProfileImageUrl("Dart", "assets/images/dart.png"),
    new Community.withProfileImageUrl("React", "assets/images/react.png"),
    new Community.withProfileImageUrl("Vue", "assets/images/vue.png"),
    new Community.withProfileImageUrl("Flutter", "assets/images/flutter.png"),
    new Community.withProfileImageUrl("Dart", "assets/images/dart.png"),
    new Community.withProfileImageUrl("React", "assets/images/react.png"),
    new Community.withProfileImageUrl("Vue", "assets/images/vue.png"),
    new Community.withProfileImageUrl("Flutter", "assets/images/flutter.png"),
    new Community.withProfileImageUrl("Dart", "assets/images/dart.png"),
    new Community.withProfileImageUrl("React", "assets/images/react.png"),
    new Community.withProfileImageUrl("Vue", "assets/images/vue.png"),
  ];
  User _user = User.withProfileImageUrl("Sourav", "assets/images/profile.jpg");
  List<User> user = [User("user 1"), User("user 2")
    , User("user 3"), User("user 4"), User("user 5")
    , User("user 6"), User("user 7")];
  List<Comment> comment1 = [];
  List<Comment> comment2 = [];
  List<Comment> comment3 = [];
  List<Post> posts = [];

  _HomePageState() {
    {
      posts = [
        Post.text("0", "example 1", "discribed1", user.elementAt(0),
            Community("community 1")),
        Post.text("1", "example 2", "discribed2", user.elementAt(1),
            Community("community 2")),
        Post.text("2", "example 3", "discribed3", user.elementAt(2),
            Community("community 3")),
        Post.text("3", "example 4", "discribed4", user.elementAt(3),
            Community("community 4")),
        Post.text("4", "example 5", "discribed5", user.elementAt(4),
            Community("community 5")),
        Post.text("5", "example 6", "discribed6", user.elementAt(5),
            Community("community 6")),
        Post.text("6", "example 7", "discribed7", user.elementAt(6),
            Community("community 7")),

      ];
      comment1 = [
        Comment("comment 1", user.elementAt(0)),
        Comment("comment 2", user.elementAt(1)),
        Comment("comment 3", user.elementAt(2)),
        Comment("comment 4", user.elementAt(3)),
        Comment("comment 5", user.elementAt(4)),
        Comment("comment 6", user.elementAt(5)),
      ];
      comment2 = [
        Comment("comment 5", user.elementAt(4)),
        Comment("comment 6", user.elementAt(5))];
      comment3 = [
        Comment("comment 7", user.elementAt(6))];
      posts
          .elementAt(0)
          .comments = comment1;
      comment1
          .elementAt(0)
          .comments = comment2;
      comment2
          .elementAt(0)
          .comments = comment3;
    }
  }

  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController(initialPage: 0);
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeClass.appTheme,
      home: Scaffold(
        appBar: widgets.appBar(_user, context),
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            _feed(posts),
            _Community(_community)
          ],
        ),
        bottomNavigationBar: bottomNavigationBar(context, _pageController),
      ),
    );
  }

  _Community(List<Community> _community) {
    return Center(
      child: ListView.builder(
        itemCount: _community.length,
        itemBuilder: (BuildContext context, int index) {
          return communityWidget(_community[index], key: Key(index.toString()));
        },
      ),
    );
  }

  _feed(List<Post> _posts) {
    return Center(
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return feedWidget(posts[index]);
        },
      ),
    );
  }
  BottomNavigationBar bottomNavigationBar(BuildContext context,PageController _pageController) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // fixedColor:  ThemeClass.appTheme.primaryColor,
      selectedIconTheme: IconThemeData(
        color: ThemeClass.appTheme.primaryColor,
      ),
      unselectedIconTheme: IconThemeData(
        color: ThemeClass.appTheme.primaryColor,
      ),

      // selectedItemColor: ThemeClass.appTheme.primaryColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.group,
          ),
          label: 'community',

        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
          ),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
          ),
          label: 'Notifications',
        ),
      ],
      onTap: (place) {
        setState((){
             onTapFunction(place, context, _pageController);
             index = place;
         });
      },
      currentIndex: index,
      showUnselectedLabels: false,
      showSelectedLabels: true,

    );
  }
  static onTapFunction(int mode, BuildContext context,PageController _pageController) {

    switch (mode) {
      case 0:
        _pageController.animateToPage(0,
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
        break;
      case 1:
        _pageController.animateToPage(1,
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => addPost()));
        break;
      case 3:
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
        break;
      case 4:
        // Navigator.push(
            // context, MaterialPageRoute(builder: (context) => SettingPage()));
        break;
    }
  }

}


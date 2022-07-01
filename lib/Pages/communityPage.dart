import 'package:flutter/material.dart';
import 'package:ui_flutter/config/themeSettings.dart';
import 'package:ui_flutter/models/community.dart';
import 'package:ui_flutter/models/user.dart';
import 'package:ui_flutter/widgets/communityWidget.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';

import '../models/post.dart';

class communityPage extends StatefulWidget {
  const communityPage({Key key}) : super(key: key);

  @override
  State<communityPage> createState() => _communityPageState();
}

class _communityPageState extends State<communityPage> {
  _communityPageState(){
    _community[0].postl([
      new Post.text(
          "1",
          "game",
          "dota2 is the best game ever",
          new User("morteza"),
          new Community.withProfileImageUrl(
              "Flutter", "assets/images/flutter.png")),
      new Post.text("2", "food", "khoresh sabzi", new User("mehdi"),
          new Community.withProfileImageUrl("Dart", "assets/images/dart.png")),
      new Post.text(
          "3",
          "study",
          "study hard is key for point",
          new User("amir"),
          new Community.withProfileImageUrl(
              "React", "assets/images/react.png")),
      new Post.text("4", "sport", "favorite sport is soccer", new User("mahan"),
          new Community.withProfileImageUrl("Vue", "assets/images/vue.png"))
    ]);
  }
  User _user = User.withProfileImageUrl("Sourav", "assets/images/profile.jpg");
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.appTheme,
      darkTheme: ThemeClass.appTheme,
      home: Scaffold(
        // appBar: widgets.appBar(_user, context),
        body: Center(
        child: ListView.builder(
            itemCount: _community.length,
            itemBuilder: (BuildContext context, int index) {
              return communityWidget(_community[index], key: Key(index.toString()));
            },
          ),
        ),
        bottomNavigationBar: widgets.bottomNavigationBar(context),
      ),
    );
  }
}

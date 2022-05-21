import 'package:flutter/material.dart';
import 'package:ui_flutter/config/themeSettings.dart';
import 'package:ui_flutter/models/community.dart';
import 'package:ui_flutter/models/user.dart';
import 'package:ui_flutter/widgets/communityWidget.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';

class communityPage extends StatefulWidget {
  const communityPage({Key key}) : super(key: key);

  @override
  State<communityPage> createState() => _communityPageState();
}

class _communityPageState extends State<communityPage> {
  User _user = User.withProfileImageUrl("Sourav", "assets/images/profile.jpg");
  List<Community> _community = [
    new Community.withProfileImageUrl("Flutter", "assets/images/flutter.png"),
    new Community.withProfileImageUrl("Dart", "assets/images/dart.png"),
    new Community.withProfileImageUrl("React", "assets/images/react.png"),
    new Community.withProfileImageUrl("Vue", "assets/images/vue.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.darkTheme,
      darkTheme: ThemeClass.darkTheme,
      home: Scaffold(
        appBar: widgets.appBar(_user),
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

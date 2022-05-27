import 'package:flutter/material.dart';
import 'package:ui_flutter/models/user.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User _user = User.withProfileImageUrl("Sourav", "assets/images/profile.jpg");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: widgets.appBar(_user, context),
        body: Container(
          child: Center(
            child: Text("Home Page"),
          ),
        ),
        bottomNavigationBar: widgets.bottomNavigationBar(context),
    ),
    );
  }
}

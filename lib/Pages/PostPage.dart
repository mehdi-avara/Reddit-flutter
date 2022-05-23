import 'package:flutter/material.dart';
import 'package:ui_flutter/models/user.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';
class PostPage extends StatefulWidget {
  const PostPage({Key key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  User _user = User("this");
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: widgets.appBar( _user,context),
        body: Center(
          child: Text('Post Page'),
        ),
      ),
    );
  }
}

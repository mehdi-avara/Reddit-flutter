import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/CommunityPosts.dart';
import 'package:ui_flutter/models/post.dart';
import 'package:ui_flutter/models/user.dart';

import '../config/themeSettings.dart';
import '../models/community.dart';
import '../widgets/PostPageComment.dart';
import '../widgets/communityWidget.dart';
import 'CommunityPosts.dart';

class CommunityPosts extends StatefulWidget {
  const CommunityPosts(this.post);

  final post;
  @override
  State<StatefulWidget> createState() => _CommunityPostsState(post);
}

class _CommunityPostsState extends State<CommunityPosts> {
  _CommunityPostsState(this._post);

  get body => null;
  final _post;
  @override
  Widget build(Object context) {
    //create list of posts

    return MaterialApp(
      // show every community posts
      themeMode: ThemeMode.system,
      theme: ThemeClass.appTheme,
      darkTheme: ThemeClass.appTheme,
      home: Scaffold(
        body: Center(
          child: _post==null?ListView.builder(
            itemCount: _post.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: ListTile(
                  title: Text(_post[index].title),
                  subtitle: Text(_post[index].discription
                  ),
                ),
              );
            },
          ):Container(),
        ),
      ), // ignore: dead_code
    );
  }
}

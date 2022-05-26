import 'package:flutter/material.dart';
import 'package:ui_flutter/models/comment.dart';

class PostPageComment extends StatelessWidget {
  const PostPageComment({Key key, this.comment}) : super(key: key);
  final Comment comment;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(comment.comment,
      style: TextStyle(
        color: Colors.white,
      ),),
    );
  }
}

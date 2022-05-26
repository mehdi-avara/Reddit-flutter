import 'package:ui_flutter/models/user.dart';

class Comment{
  String _comment;
  User _user;
  List<Comment> _comments;
  String get comment => _comment;

  set comment(String value) {
    _comment = value;
  }

  User get user => _user;

  set user(User value) {
    _user = value;
  }

  List<Comment> get comments => _comments;

  set comments(List<Comment> value) {
    _comments = value;
  }
}
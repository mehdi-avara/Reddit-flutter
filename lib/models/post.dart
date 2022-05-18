import 'package:ui_flutter/models/community.dart';
import 'package:ui_flutter/models/user.dart';

class post{
  String _postId;
  String _title;
  String _discription;
  List<String> _imageUrl;
  User _user;
  Community _community;

  String get postId => _postId;

  Community get community => _community;

  User get user => _user;

  List<String> get imageUrl => _imageUrl;

  String get discription => _discription;

  String get title => _title;

  set postId(String value) {
    _postId = value;
  }

  set community(Community value) {
    _community = value;
  }

  set user(User value) {
    _user = value;
  }

  set imageUrl(List<String> value) {
    _imageUrl = value;
  }

  set discription(String value) {
    _discription = value;
  }

  set title(String value) {
    _title = value;
  }
}
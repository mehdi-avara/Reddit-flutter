import 'package:ui_flutter/models/comment.dart';
import 'package:ui_flutter/models/community.dart';
import 'package:ui_flutter/models/user.dart';
enum Modes{
  image,
  video,
  text
}
class Post{

  String _postId;
  String _title;
  String _discription;
  List<String> _imageUrl;
  String _videoUrl;
  User _user;
  Community _community;
  List<Comment> _comments;
  Modes _mode;

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

  List<Comment> get comments => _comments;

  set comments(List<Comment> value) {
    _comments = value;
  }

  Post.image(this._postId, this._title, this._discription){
    _mode = Modes.image;
  }


  Post.text(this._postId, this._title, this._discription, this._user,
      this._community){
    _mode = Modes.text;
  }
  Post.video(this._postId, this._title, this._videoUrl, this._user,
      this._community){
    _mode = Modes.video;
  }
}
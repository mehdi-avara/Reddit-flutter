import 'package:ui_flutter/Pages/addPost.dart';
import 'package:ui_flutter/models/comment.dart';
import 'package:ui_flutter/models/community.dart';
import 'package:ui_flutter/models/post.dart';
import 'package:ui_flutter/models/user.dart';

class Datas{
  static String UserId;
  User _mainUser = User.withProfileImageUrl("Sourav", "assets/images/profile.jpg");

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

  List<User> _user = [User("user 1"), User("user 2")
    , User("user 3"), User("user 4"), User("user 5")
    , User("user 6"), User("user 7")];
  List<Comment> _comment1 = [];
  List<Comment> _comment2 = [];
  List<Comment> _comment3 = [];
  List<Post> _posts = [];
  Datas(){
    _posts = [
      Post.text("0", "example 1", "discribed1", _user.elementAt(0),
          Community("community 1")),
      Post.text("0", "example 1", "discribed1", _user.elementAt(0),
          Community("community 1")),
      Post.text("0", "example 1", "discribed1", _user.elementAt(0),
          Community("community 1")),
      Post.text("1", "example 2", "discribed2", _user.elementAt(1),
          Community("community 2")),
      Post.text("2", "example 3", "discribed3", _user.elementAt(2),
          Community("community 3")),
      Post.text("3", "example 4", "discribed4", _user.elementAt(3),
          Community("community 4")),
      Post.text("4", "example 5", "discribed5", _user.elementAt(4),
          Community("community 5")),
      Post.text("5", "example 6", "discribed6", _user.elementAt(5),
          Community("community 6")),
      Post.text("6", "example 7", "discribed7", _user.elementAt(6),
          Community("community 7")),

    ];
    _comment1 = [
      Comment("comment 1", _user.elementAt(0)),
      Comment("comment 2", _user.elementAt(1)),
      Comment("comment 3", _user.elementAt(2)),
      Comment("comment 4", _user.elementAt(3)),
      Comment("comment 5", _user.elementAt(4)),
      Comment("comment 6", _user.elementAt(5)),
    ];

    _comment2 = [
      Comment("comment 5", _user.elementAt(4)),
      Comment("comment 6", _user.elementAt(5))];
    _comment3 = [
      Comment("comment 7", _user.elementAt(6))];
    _posts
        .elementAt(0)
        .comments = _comment1;
    _comment1
        .elementAt(0)
        .comments = _comment2;
    _comment2
        .elementAt(1)
        .comments = _comment3;
  }

  List<Post> get posts => _posts;

  set posts(List<Post> value) {
    _posts = value;
  }

  List<Comment> get comment3 => _comment3;

  set comment3(List<Comment> value) {
    _comment3 = value;
  }

  List<Comment> get comment2 => _comment2;

  set comment2(List<Comment> value) {
    _comment2 = value;
  }

  List<Comment> get comment1 => _comment1;

  set comment1(List<Comment> value) {
    _comment1 = value;
  }

  List<User> get user => _user;

  set user(List<User> value) {
    _user = value;
  }

  List<Community> get community => _community;

  set community(List<Community> value) {
    _community = value;
  }

  User get mainUser => _mainUser;

  set mainUser(User value) {
    _mainUser = value;
  }
  void addPost(Post post){
    _posts.add(post);
  }
  void addPostWithTitle(String title, String description, Community community){
        _posts.add(Post.text("id",title, description, _mainUser, community));
        print("object");

  }
}
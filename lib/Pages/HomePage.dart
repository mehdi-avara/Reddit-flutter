import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/Profile.dart';
import 'package:ui_flutter/Pages/SettingPage.dart';
import 'package:ui_flutter/Pages/addPost.dart';
import 'package:ui_flutter/Pages/loginSignUpPage.dart';
import 'package:ui_flutter/models/comment.dart';
import 'package:ui_flutter/models/community.dart';
import 'package:ui_flutter/models/post.dart';
import 'package:ui_flutter/models/user.dart';
import 'package:ui_flutter/widgets/communityWidget.dart';
import 'package:ui_flutter/widgets/feedWidget.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';
import 'package:ui_flutter/models/data.dart';
import '../config/themeSettings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSearching = false;
  List<Post> _searchResult = [];
  bool showBottomAndAppBar = true;
  final Datas data = Datas();
  static int pageIndex = 0;
  TextEditingController _searchController = TextEditingController();
  List<Community> _community = [];
  User _mainUser;
  List<User> user = [];
  List<Post> posts = [];

  _HomePageState() {
    {
      _community=data.community;
      _mainUser=data.mainUser;
      posts = data.posts;
      user = data.user;
    }
  }
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    int place=0;
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeClass.appTheme,
      home: Scaffold(
        appBar: showBottomAndAppBar? appBar(_mainUser, context):_postAppBar(context),
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            _feed(_isSearching?_searchResult:posts),
            _Community(_community),
            addPost(addToPost: addToPost),
          ],
          onPageChanged: (num){
            if(num==2){
              setState((){
                showBottomAndAppBar = false;
              });
            }
            else {
              showBottomAndAppBar = true;
              pageChanged(num);
            }
          },

        ),
        bottomNavigationBar: showBottomAndAppBar?bottomNavigationBar(context, _pageController,place):null,
      ),
    );
  }

  _Community(List<Community> _community) {
    return Center(
      child: ListView.builder(
        itemCount: _community.length,
        itemBuilder: (BuildContext context, int index) {
          return communityWidget(_community[index], key: Key(index.toString()));
        },
      ),
    );
  }

  _feed(List<Post> _posts) {
    return Center(
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: _posts.length,
        itemBuilder: (context, index) {
          return feedWidget(_posts[index]);
        },
      ),
    );
  }
  BottomNavigationBar bottomNavigationBar(BuildContext context,PageController _pageController,int place) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // fixedColor:  ThemeClass.appTheme.primaryColor,
      selectedIconTheme: IconThemeData(
        color: ThemeClass.appTheme.primaryColor,
      ),
      unselectedIconTheme: IconThemeData(
        color: ThemeClass.appTheme.primaryColor,
      ),

      // selectedItemColor: ThemeClass.appTheme.primaryColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.group,
          ),
          label: 'community',

        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
          ),
          label: 'Add',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(
        //     Icons.chat,
        //   ),
        //   label: 'Chat',
        // ),
        // BottomNavigationBarItem(
        //   icon: Icon(
        //     Icons.notifications,
        //   ),
        //   label: 'Notifications',
        // ),
      ],
      onTap: (place) {
        setState(
                (){
                  onTapFunction(place, _pageController);
                  if(place<=1) {
                      pageIndex = place;
                  };
         }
         );
      },
      currentIndex: pageIndex,
      showUnselectedLabels: true,
      showSelectedLabels: true,

    );
  }
  onTapFunction(int mode,PageController _pageController) {

    switch (mode) {
      case 0:
        // _pageController.animateToPage(0,
        //     duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      GoToPage(0);
        break;
      case 1:
        // _pageController.animateToPage(1,
        //     duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      GoToPage(1);
        break;
      case 2:
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => addPost()));
        // _pageController.animateToPage(2,
        //     duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      GoToPage(2);
        break;
      case 3:
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
        break;
      case 4:
        // Navigator.push(
            // context, MaterialPageRoute(builder: (context) => SettingPage()));
        break;
    }
  }

  void pageChanged(int change) {
    setState((){
      pageIndex = change;
    });
  }

  _postAppBar(BuildContext context){
    return AppBar(
      title: Text('Add Post'),
      backgroundColor:Theme.of(context).appBarTheme.backgroundColor ,
      leading: IconButton(
        //create Text icon
        icon: Icon(Icons.arrow_back),
        iconSize: 30.0,
        onPressed: () { //empty space for putting function
          GoToPage(1);
        },
      ),
      leadingWidth: 50.0,
    );
  }
  GoToPage(int index){
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
  AppBar appBar(User _user,BuildContext context) {
    return AppBar(
      title: ListTile(
        leading: CircleAvatar(
          radius: themeSizes.avatarRadius,
          child: Image.asset(_user.profileImageUrl),
        ),
        title: TextField(
          // controller: _searchController,
          onChanged: (value) {
              search(value);
              _searchController.text = value;
          },
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(
              fontSize: themeSizes.searchBarHint,
            ),
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                setState(() {
                  search(_searchController.text);
                });
              },
            ),
          ),
        ),
        trailing: popUpMenu(context),
      ),
    );
  }
  static popUpMenu(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Icon(Icons.view_headline),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text("Edit Profile"),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Settings"),
        ),
        PopupMenuItem(
          value: 3,
          child: Text("Logout"),
        ),
      ],
      onSelected: (value) {
        switch (value) {
          case 1:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => EditInfo()));
            break;
          case 2:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SettingPage()));
            break;
          case 3:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginSignupScreen()));
            break;
        }
      },
    );
  }

  void search(String value) {
    setState(() {
    if (value.isEmpty) {

        _searchResult.clear();
        _isSearching = false;
    } else {

      _isSearching = true;
      _searchResult.clear();
      for (int i = 0; i < posts.length; i++) {
        if (posts[i].title.toLowerCase().contains(value.toLowerCase())) {
          _searchResult.add(posts[i]);
        }
      }
    }
  });
  }
addToPost(String title,String description,Community community){
  data.addPostWithTitle(title,description,community);
  setState(() {
    posts = data.posts;
    GoToPage(0);
  });

}
}


import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/SettingPage.dart';
import 'package:ui_flutter/Pages/addPost.dart';
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
  bool showBottomAndAppBar = true;
  final Datas data = Datas();
  static int pageIndex = 0;
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
        appBar: showBottomAndAppBar?widgets.appBar(_mainUser, context):_postAppBar(context),
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            _feed(posts),
            _Community(_community),
            addPost(),
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
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return feedWidget(posts[index]);
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
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
          ),
          label: 'Notifications',
        ),
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
      showUnselectedLabels: false,
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
      actions: <Widget>[
        TextButton(
          child: Text('NEXT'),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.black,
            // onSurface: Colors.grey,
          ),
          onPressed: () {
            // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomePage()), ( route) => false);
            // Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
          },
        ),
      ],
    );
  }
  GoToPage(int index){
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}


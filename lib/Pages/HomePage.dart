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
  final Datas data = Datas();
  static int index = 0;
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

  @override
  Widget build(BuildContext context) {
    int place=0;
    PageController _pageController = PageController(initialPage: 0);
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeClass.appTheme,
      home: Scaffold(
        appBar: widgets.appBar(_mainUser, context),
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            _feed(posts),
            _Community(_community)
          ],
          onPageChanged: (num){
            pageChanged(num);
          },

        ),
        bottomNavigationBar: bottomNavigationBar(context, _pageController,place),
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
                  onTapFunction(place, context, _pageController);
                  if(place<=1) {
                      index = place;
                  };
         }
         );
      },
      currentIndex: index,
      showUnselectedLabels: false,
      showSelectedLabels: true,

    );
  }
  static onTapFunction(int mode, BuildContext context,PageController _pageController) {

    switch (mode) {
      case 0:
        _pageController.animateToPage(0,
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
        break;
      case 1:
        _pageController.animateToPage(1,
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => addPost()));
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
      index = change;
    });
  }

}


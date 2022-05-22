import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/SettingPage.dart';
import 'package:ui_flutter/Pages/addPost.dart';
import 'package:ui_flutter/Pages/communityPage.dart';
import 'package:ui_flutter/Pages/feedPage.dart';
import 'package:ui_flutter/models/user.dart';
import '../config/themeSettings.dart';

class widgets extends StatelessWidget {
  const widgets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  static BottomNavigationBar bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
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
      onTap: (index) {
        onTapFunction(index, context);
      },
      showUnselectedLabels: true,
      showSelectedLabels: true,
    );
  }

  static onTapFunction(int mode, BuildContext context) {
    switch (mode) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => feedPage()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => communityPage()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => addPost()));
        break;
      case 3:
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SettingPage()));
        break;
    }
  }

  static AppBar appBar(User _user) {
    return AppBar(
      title: ListTile(
        leading: CircleAvatar(
          radius: themeSizes.avatarRadius,
          child: Image.asset(_user.profileImageUrl),
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(
              fontSize: themeSizes.searchBarHint,
            ),
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.view_headline,
            size: themeSizes.searchBarIcon,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

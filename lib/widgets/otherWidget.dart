import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/addPost.dart';
import 'package:ui_flutter/Pages/communityPage.dart';
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
        onTapFunction(index,context);
      },
      showUnselectedLabels: true,

      showSelectedLabels: true,
    );
  }
  static onTapFunction(int mode,BuildContext context){
    switch(mode){
      case 0:
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        break;
      case 1:
      Navigator.push(context, MaterialPageRoute(builder: (context)=>communityPage()));
        break;
      case 2:
        Navigator.push(context,MaterialPageRoute(builder: (context)=>addPost()));
        break;
      case 3:
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
        break;
      case 4:
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationsPage()));
        break;
    }
  }


}

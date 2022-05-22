import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/SettingPage.dart';
import 'package:ui_flutter/Pages/loginSignUpPage.dart';
import 'package:ui_flutter/config/themeSettings.dart';
import 'package:ui_flutter/models/post.dart';

class feedWidget extends StatelessWidget {
  Post _post;
  feedWidget(this._post, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
      decoration: BoxDecoration(
        color: ThemeData.dark().cardColor,
        // borderRadius: BorderRadius.circular(10),
        ),

      child: Column(
        children: <Widget>[
          _profileListTile(_post,context),
          _postPart(_post.title,_post.discription),
          _belowPostPart(),
        ],
      ),
    );
  }
  Container _postPart(String Title,String description){
    return Container(
      child: ListTile(
        title: Text(Title,style: TextStyle(fontSize: themeSizes.communityName,fontWeight: FontWeight.bold,
            // color: Palette.textColor1
        ),),
        subtitle: Text(description,style: TextStyle(fontSize: themeSizes.userName,
            // color: Palette.textColor2
        ),),
      ),
    );
  }
  Container _profileListTile(Post post,BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          radius: themeSizes.avatarRadius,
          // backgroundColor: Colors.grey[850],
          child: post.imageUrl != null
              ? Image.asset(post.imageUrl)
              : Icon(
            Icons.person,
            size: themeSizes.avatarIconSize,
            // color: Colors.white,
          ),
        ),
        title: Text(post.title,
          style: TextStyle(
            fontSize: themeSizes.communityName,
            // fontWeight: FontWeight.bold,
            // color: Palette.textColor1,
          ),
        ),
        subtitle: Text(post.discription
          , style: TextStyle(
            fontSize: themeSizes.userName,
            // color: Palette.textColor2,
          ),
        ),
        trailing: popUpMenu(context),
        dense: true,
        visualDensity: VisualDensity(vertical: -4.0),
      ),
    );
  }
  Container _belowPostPart(){
    return Container(
      child:Row(
        children: <Widget>[
          Expanded(
            child: Container(
              // color: Colors.green,
              height: 30,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon:Icon(Icons.arrow_upward,
                      // color: Palette.textColor2,
                    ),
                    onPressed: (){},
                    iconSize: 15,),
                  Text("vote",style: TextStyle(
                      // color: Colors.white,
                      fontSize: 10),),
                  IconButton(
                    icon:Icon(Icons.arrow_downward,
                      // color: Palette.textColor2,
                    ),
                    onPressed: (){},
                    iconSize: 15,),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 30,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon:Icon(Icons.comment,
                      // color: Palette.textColor2,
                    ),
                    onPressed: (){},
                    iconSize: 15,),
                  Text("comment",style: TextStyle(
                      // color: Colors.white,
                      fontSize: 10),),

                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 30,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon:Icon(Icons.share,
                      // color: Palette.textColor2,
                    ),
                    onPressed: (){},
                    iconSize: 15,),
                  Text("share",style: TextStyle(
                      // color: Colors.white,
                      fontSize: 10),),
                  IconButton(
                    icon:Icon(Icons.print,
                      // color: Palette.textColor2,
                    ),
                    onPressed: (){},
                    iconSize: 15,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  static popUpMenu(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Icon(Icons.more_vert),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text("Post"),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Save"),
        ),
        PopupMenuItem(
          value: 3,
          child: Text("Not Interested"),
        ),
      ],
      onSelected: (value) {
        switch (value) {
          case 1:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SettingPage()));
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

}
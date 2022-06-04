import 'package:flutter/material.dart';
import 'package:ui_flutter/Pages/PostPage.dart';
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
        color: ThemeClass.appTheme.cardColor,
        // borderRadius: BorderRadius.circular(10),
        ),

      child: Column(
        children: <Widget>[
          _profileListTile(_post,context),
          GestureDetector(child: _postPart(_post.title,_post.discription),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PostPage(post: _post,)));
          },
          ),
          _belowPostPart(),
        ],
      ),
    );
  }
  Container _postPart(String Title,String description){
    return Container(
      child: ListTile(
        title: Text(Title,style: TextStyle(fontSize: themeSizes.communityName,fontWeight: FontWeight.bold,
        ),),
        subtitle: Text(description,style: TextStyle(fontSize: themeSizes.userName,
        ),),
      ),
    );
  }
  Container _profileListTile(Post post,BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          radius: themeSizes.avatarRadius,
          child: post.imageUrl != null
              ? Image.asset(post.imageUrl)
              : Icon(
            Icons.person,
            size: themeSizes.avatarIconSize,
          ),
        ),
        title: Text(post.title,
          style: TextStyle(
            fontSize: themeSizes.communityName,
            // fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(post.discription
          , style: TextStyle(
            fontSize: themeSizes.userName,
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
          Container(
              height: 30,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon:Icon(Icons.arrow_upward,
                    ),
                    onPressed: (){},
                    iconSize: 15,),
                  Text("vote",style: TextStyle(
                      fontSize: 10),),
                  IconButton(
                    icon:Icon(Icons.arrow_downward,
                    ),
                    onPressed: (){},
                    iconSize: 15,),
                ],
              ),
            ),
          Expanded(
            child: Container(
              height: 30,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon:Icon(Icons.comment,
                    ),
                    onPressed: (){},
                    iconSize: 15,),
                  Text("comment",style: TextStyle(
                      fontSize: 10),),

                ],
              ),
            ),
          ),

        Container(
              height: 30,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon:Icon(Icons.share,
                    ),
                    onPressed: (){},
                    iconSize: 15,),
                  Text("share",style: TextStyle(
                      fontSize: 10),),
                ],
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
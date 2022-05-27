import 'package:flutter/material.dart';
import 'package:ui_flutter/models/comment.dart';
import 'package:ui_flutter/models/post.dart';
import 'package:ui_flutter/config/themeSettings.dart';
import 'package:ui_flutter/models/user.dart';

class PostPageComment extends StatelessWidget {
  const PostPageComment({Key key, this.comment}) : super(key: key);
  final Comment comment;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeClass.appTheme.cardColor,
        // borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          _profileListTile(comment.user),
          _postPart(comment.comment),
          _belowPostPart(),

        ],
      ),
    );
  }



  Container _postPart(String Title){
    return Container(
      child: ListTile(
        title: Text(Title,style: TextStyle(fontSize: themeSizes.communityName,fontWeight: FontWeight.bold,
        ),),

      ),
    );
  }
  Container _profileListTile(User user) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          radius: themeSizes.avatarRadius,
          child: user.profileImageUrl != null
              ? Image.asset(user.profileImageUrl)
              : Icon(
            Icons.person,
            size: themeSizes.avatarIconSize,
          ),
        ),
        title: Text(user.name
          , style: TextStyle(
            fontSize: themeSizes.userName,
          ),
        ),
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
            child: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){},
            ),
          ),
          Expanded(
            child: Container(
              height: 30,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon:Icon(Icons.reply,
                    ),
                    onPressed: (){},
                    iconSize: 15,),
                  Text("reply",style: TextStyle(
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
        ],
      ),
    );
  }




}


import 'package:flutter/material.dart';
import 'package:ui_flutter/config/palette.dart';
import 'package:ui_flutter/models/post.dart';

class HomeWidget extends StatelessWidget {
  Post _post;
  HomeWidget(this._post, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.widgetBackground,
        ),

      child: Column(
        children: <Widget>[
          homeWidget._profileListTile(_post.user.name, _post.community.name, _post.user.profileImageUrl),
          homeWidget._postPart(_post.title,_post.discription),
homeWidget._belowPostPart(),
        ],
      ),
    );
  }
}
class homeWidget{
  static Container _postPart(String Title,String description){
    return Container(
      child: ListTile(
        title: Text(Title,style: TextStyle(fontSize: themeSizes.communityName,fontWeight: FontWeight.bold,color: Palette.textColor1),),
        subtitle: Text(description,style: TextStyle(fontSize: themeSizes.userName,color: Palette.textColor2),),
      ),
      );
  }
  static Container _profileListTile(String title, String subtitle, String imagePath) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          radius: themeSizes.avatarRadius,
          backgroundColor: Colors.grey[850],
          child: imagePath != null
              ? Image.asset(imagePath)
              : Icon(
            Icons.person,
            size: themeSizes.avatarIconSize,
            color: Colors.white,
          ),
        ),
        title: Text(title,
          style: TextStyle(
            fontSize: themeSizes.communityName,
            // fontWeight: FontWeight.bold,
            color: Palette.textColor1,
          ),
        ),
        subtitle: Text(subtitle
          , style: TextStyle(
            fontSize: themeSizes.userName,
            color: Palette.textColor2,
          ),
        ),
        trailing: Icon(
          Icons.more_vert,
          color: Palette.textColor2,
        ),
        dense: true,
        visualDensity: VisualDensity(vertical: -4.0),
      ),
    );
  }
  static Container _belowPostPart(){
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
                      icon:Icon(Icons.arrow_upward
                        ,color: Palette.textColor2,
                      ),
                      onPressed: (){},
                      iconSize: 15,),
                    Text("vote",style: TextStyle(color: Colors.white,fontSize: 10),),
                    IconButton(
                      icon:Icon(Icons.arrow_downward
                        ,color: Palette.textColor2,
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
                    icon:Icon(Icons.comment
                      ,color: Palette.textColor2,
                    ),
                    onPressed: (){},
                    iconSize: 15,),
                  Text("comment",style: TextStyle(color: Colors.white,fontSize: 10),),

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
                    icon:Icon(Icons.share
                      ,color: Palette.textColor2,
                    ),
                    onPressed: (){},
                    iconSize: 15,),
                  Text("share",style: TextStyle(color: Colors.white,fontSize: 10),),
                  IconButton(
                    icon:Icon(Icons.print
                      ,color: Palette.textColor2,
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

}
import 'package:flutter/material.dart';
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
        color: Palette.widgetBackground,
        // borderRadius: BorderRadius.circular(10),
        ),

      child: Column(
        children: <Widget>[
          _profileListTile(_post.user.name, _post.community.name, _post.user.profileImageUrl),
          _postPart(_post.title,_post.discription),
          _belowPostPart(),
        ],
      ),
    );
  }
  Container _postPart(String Title,String description){
    return Container(
      child: ListTile(
        title: Text(Title,style: TextStyle(fontSize: themeSizes.communityName,fontWeight: FontWeight.bold,color: Palette.textColor1),),
        subtitle: Text(description,style: TextStyle(fontSize: themeSizes.userName,color: Palette.textColor2),),
      ),
    );
  }
  Container _profileListTile(String title, String subtitle, String imagePath) {
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
class homeWidget{


}
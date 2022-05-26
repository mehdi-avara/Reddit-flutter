import 'package:flutter/material.dart';
import 'package:ui_flutter/models/comment.dart';
import 'package:ui_flutter/models/post.dart';
import 'package:ui_flutter/config/themeSettings.dart';
import 'package:ui_flutter/widgets/PostPageComment.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key key,this.post}) : super(key: key);
  final Post post;
  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
              decoration: BoxDecoration(
                color: ThemeData.dark().cardColor,
                // borderRadius: BorderRadius.circular(10),
              ),

              child: Column(
                children: <Widget>[
                  _profileListTile(widget.post,context),
                  _postPart(widget.post.title,widget.post.discription),
                  _belowPostPart(),
                  _comments(widget.post.comments),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Container _comments(List<Comment> comments) {
    if (comments.isEmpty) {
      return Container(
        padding: EdgeInsets.all(10),
        child: Text("No comments yet",
          style: TextStyle(
            color: Colors.white,
          ),),
      );
    }
    else {
      return Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: comments.length,
          itemBuilder: (BuildContext context, int index) {
            return PostPageComment(comment: comments[index]);
          },
        ),
      );
    }
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
      ),
    );
  }
  Container _belowPostPart(){
    return Container(
      child:Row(
        children: <Widget>[
          Container(
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

          Container(
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
        ],
      ),
    );
  }
}

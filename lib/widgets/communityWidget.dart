import 'package:flutter/material.dart';
import 'package:ui_flutter/config/themeSettings.dart';
import 'package:ui_flutter/models/community.dart';

import '../Pages/CommunityPosts.dart';

class communityWidget extends StatelessWidget {

  Community _community;
  communityWidget(this._community, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CommunityPosts(_community.post)));

      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
        decoration: BoxDecoration(
          color: ThemeClass.appTheme.cardColor,
          // borderRa dius: BorderRadius.circular(10),
        ),

        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(_community.imageUrl),
          ),
          title: Text(
            _community.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          trailing: IconButton(
            icon: Icon(
              Icons.star_border,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

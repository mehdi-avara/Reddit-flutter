import 'package:flutter/material.dart';
import 'package:ui_flutter/config/palette.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.widgetBackground,
        ),

      child: Column(
        children: <Widget>[
          homeWidget._profileListTile("community", "user"),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 100,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 20,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 20,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class homeWidget{
  static Container _profileListTile(String title, String subtitle, {String imagePath}) {
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
            fontWeight: FontWeight.bold,
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
          size: themeSizes.avatarIconSize,
        ),
        dense: true,
        visualDensity: VisualDensity(vertical: -4.0),
      ),
    );
  }
}
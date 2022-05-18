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
          ListTile(

            leading: CircleAvatar(
              radius: themeSizes.avatarRadius,
              backgroundColor: Colors.grey[850],
              child: Icon(
                Icons.person,
                size: themeSizes.avatarIconSize,
                color: Colors.white,
              ),
            ),
            title: Text('community',
              style: TextStyle(
                fontSize: themeSizes.communityName,
                  fontWeight: FontWeight.bold,
                  color: Palette.textColor1,
              ),
            ),
            subtitle: Text('user'
              , style: TextStyle(
                fontSize: themeSizes.userName,
                color: Palette.textColor2,
              ),
            ),
            trailing: Icon(
              Icons.more_vert,
              size: themeSizes.avatarIconSize,
            ),
          ),
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

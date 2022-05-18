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
              radius: MediaQuery.of(context).size.height *0.10,
              backgroundColor: Colors.grey[850],
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            title: Text('community'),
            subtitle: Text('user'),
            trailing: Icon(Icons.more_vert),
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

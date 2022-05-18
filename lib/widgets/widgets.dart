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
            leading: Icon(Icons.home),
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

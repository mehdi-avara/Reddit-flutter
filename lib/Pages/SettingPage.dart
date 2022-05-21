import 'package:flutter/material.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';
import '../config/themeSettings.dart';


class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.darkTheme,
      darkTheme: ThemeClass.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Setting'),
        ),
        body: Center(
          child: Text('Setting'),
        ),
        bottomNavigationBar: widgets.bottomNavigationBar(context),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ui_flutter/config/themeSettings.dart';
import 'package:ui_flutter/models/user.dart';
import 'package:ui_flutter/widgets/otherWidget.dart';

class communityPage extends StatefulWidget {
  const communityPage({Key key}) : super(key: key);

  @override
  State<communityPage> createState() => _communityPageState();
}

class _communityPageState extends State<communityPage> {
  User _user = User.withProfileImageUrl("Sourav", "assets/images/profile.jpg");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeClass.darkTheme,
      darkTheme: ThemeClass.darkTheme,
      home: Scaffold(
        appBar: AppBar(

          title: ListTile(
            leading: CircleAvatar(
              radius: themeSizes.avatarRadius,
              child: Image.asset(_user.profileImageUrl),
            ),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  fontSize: themeSizes.searchBarHint,
                ),
                border: InputBorder.none,
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (){},
                ),

              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.view_headline,
                size: themeSizes.searchBarIcon,
              ),
              onPressed: () {},
            ),
          ),
        ),
        body: Center(

        ),
        bottomNavigationBar: widgets.bottomNavigationBar(context),
      ),
    );
  }
}

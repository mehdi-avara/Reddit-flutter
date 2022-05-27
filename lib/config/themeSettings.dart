import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Palette{
  static const Color iconColor = Color(0xFFB6C7D1);
  static const Color activeColor = Color(0xFF09126C);
  static const Color textColor1 = Color(0XFFA7BCC7);
  static const Color textColor2 = Color(0XFF9BB3C0);
  static const Color appleColor = Color(0xFF3B5999);
  static const Color googleColor = Color(0xFFDE4B39);
  static const Color backgroundColor = Color(0xFFECF3F9);
  static const Color widgetBackground = Color(0xFF2A2929);
  static const Color homeWidgetBackground = Color(0xFF211D1D);
}


class themeSizes{
  static const double fontTitle1 = 18.0;
  static const double fontTitle2 = 16.0;
  static const double fontParagraph1 = 14.0;
  static const double fontParagraph2 = 12.0;
  static const double fontParagraph3 = 10.0;
  static const double communityName = 14.0;
  static const double userName = 12.0;
  static const double avatarIconSize = 25.0;
  static const double avatarRadius = 17.0;

  static const double searchBarHint=12.0;

  static const double searchBarIcon=20.0;
}
mixin AppTheme implements ThemeData {

}

class ThemeClass{

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
      ),
    cardColor: Colors.grey[50],
    primaryColor: Colors.blue,
    buttonBarTheme: ButtonBarThemeData(
      buttonTextTheme: ButtonTextTheme.primary,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
    ),
    cardColor: Colors.grey[70],

  );
  static ThemeData appTheme = lightTheme;
}

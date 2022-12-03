// ThemeData get theme => redTheme;
import 'package:flutter/material.dart';

import '../../constants/color_const.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        //fontFamily: ApplicationConstants.FONT_FAMILY,
        //colorScheme: _appColorScheme(),
        textTheme: textTheme(),
        floatingActionButtonTheme:
            ThemeData.light().floatingActionButtonTheme.copyWith(),
        //tabBarTheme: tabBarTheme(),
      );

// TabBarTheme tabBarTheme() {
//   return TabBarTheme(
//     labelPadding: insets.lowPaddingAll,
//     unselectedLabelStyle:
//         textThemeLight.headline4.copyWith(color: colorSchemeLight.red),
//   );
// }

  static TextTheme textTheme() {
    return TextTheme(
      headline3: TextStyle(fontSize: 30),
      headline2: TextStyle(fontSize: 20),
      caption: TextStyle(
          fontSize: 20,
          color: ColorConst().black87,
          fontWeight: FontWeight.bold),
      bodyText1: TextStyle(
        fontSize: 15,
      ),
      headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      //headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}

import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Primary Color
    primaryColor: Colors.indigo,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      centerTitle: true,
      elevation: 0,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Primary Color
    primaryColor: Colors.indigo,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      centerTitle: true,
      elevation: 0,
    ),

    scaffoldBackgroundColor: Colors.black,
  );
}

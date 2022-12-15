import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
        // fontFamily: GoogleFonts.lato().fontFamily,
      );

  static ThemeData DarkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark
      );
}

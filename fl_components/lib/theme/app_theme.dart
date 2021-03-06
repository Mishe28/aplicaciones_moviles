import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //color primario
        primaryColor: Colors.indigo,
        //AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
        ),

        //floatingActionButtons
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5
        ),

        //elevatedBottons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            shape: const StadiumBorder(),
            elevation: 0
          )
        )
      );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //color primario
        primaryColor: Colors.indigo,
        //AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
        ),
        scaffoldBackgroundColor: Colors.black,
      );
}
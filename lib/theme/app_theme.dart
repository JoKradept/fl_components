import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

//theme de la app
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //color primario
    primaryColor: Colors.indigo,

    //appbarr theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    scaffoldBackgroundColor: Colors.black,
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: Colors.indigo,

    //appbarr theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    //textbutton theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary,
        backgroundColor: const Color.fromARGB(123, 200, 230, 201),
      ),
    ),

    //floating action button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0,
      foregroundColor: Color.fromARGB(255, 10, 68, 14),
    ),

    //elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 2,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primary,
      ),
    ),
  );
}

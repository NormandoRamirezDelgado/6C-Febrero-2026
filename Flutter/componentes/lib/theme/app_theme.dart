import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color.fromARGB(255, 212, 20, 20);

  static final lightTheme = ThemeData.light().copyWith(
    //Coloir Primario
    primaryColor: Colors.amberAccent,

    //AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 172, 234, 176),
    )
  );

  static final darkTheme = ThemeData.dark().copyWith(
    //Coloir Primario
    primaryColor: Colors.amberAccent,

    //AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 172, 234, 176),
    )
  );

}
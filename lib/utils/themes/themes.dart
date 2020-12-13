import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
      backgroundColor: const Color(0xffFFFFFF),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(color: const Color(0xffFFFFFF)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color(0xffFFFFFF), elevation: 0.0),
      buttonTheme: ButtonThemeData(
          buttonColor: const Color(0xffFFFFFF),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))));
}

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
      backgroundColor: const Color(0xff212628),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(color: const Color(0xff212628)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color(0xff212628), elevation: 0.0),
      buttonTheme: ButtonThemeData(
          buttonColor: const Color(0xff3A454A),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))));
}

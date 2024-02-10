import 'package:flutter/material.dart';

class MyThem {
  static Color backgroundligtcoler = Color(0xffDFECDB);
  static Color primarycolor = Color(0xff5D9CEC);
  static Color graycolor = Color(0xffC8C9CB);
  static Color blackcolorlight = Color(0xff383838);
  static Color redcolor = Color(0xffEC4B4B);
  static Color darkgraycolor = Color(0xff707070);
  static Color greencolor = Color(0xff61E757);
  static Color backgrounddarkcolor = Color(0xff060E1E);
  static Color deepgraycolordark = Color(0xff141922);
  static ThemeData appthemlight = ThemeData(
      scaffoldBackgroundColor: backgroundligtcoler,
      primaryColor: primarycolor,
      appBarTheme: AppBarTheme(
        backgroundColor: primarycolor,
        elevation: 0,
      ),
      iconTheme: IconThemeData(
        color: graycolor,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primarycolor,
          shape:
              StadiumBorder(side: BorderSide(color: Colors.white, width: 5))),
      bottomAppBarTheme: BottomAppBarTheme(
        color: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedLabelStyle: TextStyle(
          color: primarycolor,
        ),
        unselectedIconTheme: IconThemeData(
          color: graycolor,
        ),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ));
  static ThemeData appthemdark = ThemeData(
      scaffoldBackgroundColor: backgrounddarkcolor,
      primaryColor: primarycolor,
      appBarTheme: AppBarTheme(
        backgroundColor: primarycolor,
        elevation: 0,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primarycolor,
          shape: StadiumBorder(
              side: BorderSide(color: blackcolorlight, width: 5))),
      bottomAppBarTheme: BottomAppBarTheme(
        color: deepgraycolordark,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedIconTheme: IconThemeData(
          color: primarycolor,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: backgrounddarkcolor,
        ),
      ));
}

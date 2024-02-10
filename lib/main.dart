import 'package:flutter/material.dart';
import 'package:todo_app/Home_screen.dart';
import 'package:todo_app/My_Them.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
      },
      theme: MyThem.appthemlight,
      themeMode: ThemeMode.light,
    );
  }
}
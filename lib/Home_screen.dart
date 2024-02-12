import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo_app/My_Them.dart';
import 'package:todo_app/Settings/Settings_tap.dart';
import 'package:todo_app/Task/Add_task.dart';
import 'package:todo_app/Task/task_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedicon = 0;
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.20,
          backgroundColor: MyThem.primarycolor,
          title: Text(
            'To Do List $text',
            style: Theme.of(context).textTheme.titleLarge,
          )),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          currentIndex: selectedicon,
          onTap: (index) {
            selectedicon = index;

            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                  size: 30,
                ),
                label: AppLocalizations.of(context)!.tasks),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                label: AppLocalizations.of(context)!.settings),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bottomSheet();
        },
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: taps[selectedicon],
    );
  }

  List<Widget> taps = [
    TasksTap(),
    SettingsTap(),
  ];

  void bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return AddTask();
        });
  }
}

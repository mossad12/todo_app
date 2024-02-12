import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/My_Them.dart';
import 'package:todo_app/Settings/App_language.dart';
import 'package:todo_app/Settings/app_provider.dart';

import 'App_them.dart';

class SettingsTap extends StatefulWidget {
  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  barrierColor: MyThem.primarycolor.withOpacity(0.1),
                  context: context,
                  builder: (context) {
                    return AppLanguage();
                  });
            },
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: MyThem.primarycolor,
                      blurRadius: 12,
                      blurStyle: BlurStyle.outer,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueAccent, width: 2)),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.AppLanguage == 'en'
                      ? AppLocalizations.of(context)!.english
                      : AppLocalizations.of(context)!.arabic),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: MyThem.primarycolor,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text(
            AppLocalizations.of(context)!.them_mode,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  barrierColor: MyThem.primarycolor.withOpacity(0.1),
                  context: context,
                  builder: (context) {
                    return AppTheming();
                  });
            },
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: MyThem.primarycolor,
                      blurRadius: 12,
                      blurStyle: BlurStyle.outer,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueAccent, width: 2)),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.isDarkMode()
                      ? AppLocalizations.of(context)!.dark
                      : AppLocalizations.of(context)!.light),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: MyThem.primarycolor,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

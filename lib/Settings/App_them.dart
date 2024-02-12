import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Settings/app_provider.dart';

import '../My_Them.dart';

class AppTheming extends StatefulWidget {
  @override
  State<AppTheming> createState() => _AppThemingState();
}

class _AppThemingState extends State<AppTheming> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), boxShadow: [
        BoxShadow(
          color: MyThem.primarycolor,
          blurRadius: 25,
          blurStyle: BlurStyle.outer,
          offset: Offset(1, 1),
        )
      ]),
      height: MediaQuery.of(context).size.height * 0.3,
      padding: EdgeInsets.all(MediaQuery.of(context).size.longestSide * 0.04),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.them_mode,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          InkWell(
              onTap: () {
                provider.changeMode(ThemeMode.light);
              },
              child: provider.AppMode == ThemeMode.light
                  ? SelectedMode(AppLocalizations.of(context)!.light)
                  : UnSelectedMode(AppLocalizations.of(context)!.light)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          InkWell(
            onTap: () {
              provider.changeMode(ThemeMode.dark);
            },
            child: provider.AppMode == ThemeMode.light
                ? UnSelectedMode(AppLocalizations.of(context)!.dark)
                : SelectedMode(AppLocalizations.of(context)!.dark),
          )
        ],
      ),
    );
  }

  Widget SelectedMode(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        Icon(
          Icons.check,
          size: 30,
          color: MyThem.primarycolor,
        ),
      ],
    );
  }

  Widget UnSelectedMode(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 20,
                  color: MyThem.darkgraycolor,
                )),
      ],
    );
  }
}

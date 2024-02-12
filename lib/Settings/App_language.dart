import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/My_Them.dart';
import 'package:todo_app/Settings/app_provider.dart';

class AppLanguage extends StatefulWidget {
  @override
  State<AppLanguage> createState() => _AppLanguageState();
}

class _AppLanguageState extends State<AppLanguage> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: MyThem.primarycolor,
            blurRadius: 25,
            blurStyle: BlurStyle.outer,
            offset: Offset(1, 1),
          )
        ],
      ),
      padding: EdgeInsets.all(MediaQuery.of(context).size.longestSide * 0.04),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          InkWell(
              onTap: () {
                provider.changelanguage('en');
              },
              child: provider.AppLanguage == 'en'
                  ? Selectedlanguage(AppLocalizations.of(context)!.english)
                  : UnSelectedlanguage(AppLocalizations.of(context)!.english)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          InkWell(
              onTap: () {
                provider.changelanguage('ar');
              },
              child: provider.AppLanguage == 'en'
                  ? UnSelectedlanguage(AppLocalizations.of(context)!.arabic)
                  : Selectedlanguage(AppLocalizations.of(context)!.arabic)),
        ],
      ),
    );
  }

  Widget Selectedlanguage(String text) {
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

  Widget UnSelectedlanguage(String text) {
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

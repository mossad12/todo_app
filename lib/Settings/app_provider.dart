import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String AppLanguage = 'en';
  ThemeMode AppMode = ThemeMode.light;

  void changelanguage(String newlanguage) {
    if (AppLanguage == newlanguage) {
      return;
    }
    AppLanguage = newlanguage;
    notifyListeners();
  }

  void changeMode(ThemeMode NewMode) {
    if (AppMode == NewMode) {
      return;
    }
    AppMode = NewMode;
    notifyListeners();
  }

  bool isDarkMode() {
    return AppMode == ThemeMode.dark;
  }
}

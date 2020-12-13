import 'package:my_clock_app/utils/utils.dart';
import 'package:my_clock_app/utils/constan.dart';
import 'package:flutter/material.dart' show ThemeData;
import 'package:my_clock_app/utils/themes/themes.dart';
import 'package:flutter/foundation.dart' show ChangeNotifier;

class PreferenceAndSettingsNotifier with ChangeNotifier {
  bool _themeState;
  ThemeData _themeData;

  themeState() => _themeState;

  themeData() => _themeData;

  refresh() {
    _themeState = prefs.getBool(MyKeys.themeData) ?? true;
    _themeData = _themeState ? lightTheme() : darkTheme();
    notifyListeners();
  }

  changeTheme(bool theme) async {
    await prefs.setBool(MyKeys.themeData, theme);
    refresh();
  }
}

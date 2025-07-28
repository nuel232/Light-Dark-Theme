import 'package:flutter/material.dart';
import 'package:lightdarktheme/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeDate = lightMode;

  ThemeData get themeData => _themeDate;

  set themeData(ThemeData themeData) {
    _themeDate = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeDate == lightMode) {
      _themeDate = darkMode;
    } else {
      _themeDate = lightMode;
    }
    notifyListeners();
  }
}

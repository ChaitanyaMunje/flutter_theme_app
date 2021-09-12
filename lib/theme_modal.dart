import 'package:flutter/cupertino.dart';
import 'package:my_app/theme_pref.dart';

class ThemeModal extends ChangeNotifier{
  late bool _isDark;
  late ThemeSharedPrefs prefs;
  bool get isDark => _isDark;

  ThemeModal(){
    _isDark = false;
    prefs = ThemeSharedPrefs();
    getThemePrefs();
  }
  set isDark(bool value){
    _isDark = value;
    prefs.setTheme(value);
    notifyListeners();
  }
  getThemePrefs() async{
    _isDark = await prefs.getTheme();
    notifyListeners();
  }
}
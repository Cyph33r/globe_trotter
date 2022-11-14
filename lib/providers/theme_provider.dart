import 'package:flutter/cupertino.dart';

class AppThemes with ChangeNotifier{
  void toggleTheme(){
    mode = mode == Brightness.light
        ? Brightness.dark
        : Brightness.light;
    notifyListeners();
  }
  var mode = Brightness.light;
}
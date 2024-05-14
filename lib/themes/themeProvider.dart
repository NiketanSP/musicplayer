import 'package:flutter/material.dart';
import 'package:musicplayer/themes/darkTheme.dart';
import 'package:musicplayer/themes/lightTheme.dart';

class ThemeProvider extends ChangeNotifier{
  //set light mode initially
  ThemeData _themeData = lightTheme;
  
  //getter
  ThemeData get themeData => _themeData;

  //setter
  set themeData(ThemeData themeData){
    _themeData = themeData;

    //update UI
    notifyListeners();
  }

  //is dark
  bool get isDarkTheme => _themeData == darkTheme;

  //toggle theme
  void toggleTheme(){
    if(_themeData == lightTheme){
      _themeData = darkTheme;
    }
    else{
      _themeData = lightTheme;
    }
  }
}
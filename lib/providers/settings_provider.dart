//hyobaa feh al logha w al theme w 3shan al etnen tb3 al setting 3mlto fe file wahed

//provider: observable -subject-publisher
//ChangeNotifier:ay tghyer hy7sl fe al data hyro7 ynotify al observers

import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{

  ThemeMode theme=ThemeMode.light;

  //lazm a3ml al func a
    void changeTheme(ThemeMode newThemeMode){
      if(theme==newThemeMode)return;
      theme=newThemeMode;

      //de zy setstate bs lkol al nas al mohtma b al data de htsm3 w tghyr kol wl widget ale sam3en al data bta3te
      notifyListeners();
    }



}

//hyobaa feh al logha w al theme w 3shan al etnen tb3 al setting 3mlto fe file wahed

//provider: observable -subject-publisher
//ChangeNotifier:ay tghyer hy7sl fe al data hyro7 ynotify al observers

import 'package:flutter/material.dart';
import 'package:islamyapp/cache/cacheHelper.dart';
class SettingProvider extends ChangeNotifier{

  ThemeMode theme=ThemeMode.dark;

  //lazm a3ml al func a
    void changeTheme(ThemeMode newThemeMode){
      if(theme==newThemeMode)return;
      theme=newThemeMode;

      //de zy setstate bs lkol al nas al mohtma b al data de htsm3 w tghyr kol wl widget ale sam3en al data bta3te
      notifyListeners();
    }

    String language='en';
 /* void init(){
    language = CacheData.getData(key:"languagee")??"en";
    notifyListeners();
  }*/

    void changeLnaguage(String newLnaguage){

      if(language == newLnaguage)return;
      language= newLnaguage;

     // CacheData.setData(key:'languagee', value: language);

      notifyListeners();
    }

}

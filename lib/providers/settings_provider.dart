//hyobaa feh al logha w al theme w 3shan al etnen tb3 al setting 3mlto fe file wahed

//provider: observable -subject-publisher
//ChangeNotifier:ay tghyer hy7sl fe al data hyro7 ynotify al observers

import 'package:flutter/material.dart';
import 'package:islamyapp/cache/cacheHelper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier{

  ThemeMode theme=ThemeMode.dark;



  //lazm a3ml al func a
    Future<void> changeTheme(ThemeMode newThemeMode) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if(theme==newThemeMode)return;
      if (newThemeMode==ThemeMode.dark){
        prefs.setBool("theme",true);
      }else{
        prefs.setBool("theme",false);
      }


      theme=newThemeMode;

      //de zy setstate bs lkol al nas al mohtma b al data de htsm3 w tghyr kol wl widget ale sam3en al data bta3te
      notifyListeners();
    }

    String language='en';
  Future<void> init() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
    language = prefs.getString("language")??"en" ;
    theme= prefs.getBool("theme")==true?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }

    Future<void> changeLnaguage(String newLnaguage) async {
        SharedPreferences prefs = await SharedPreferences.getInstance();

      if(language == newLnaguage)return;

      language= newLnaguage;
      prefs.setString('language',language);

     // CacheData.setData(key:'languagee', value: language);

      notifyListeners();
    }

}

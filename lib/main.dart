import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamyapp/style/app_theme.dart';

import 'UI/hadeth-details/hadeth_details_screen.dart';
import 'UI/home/home_screen.dart';
import 'UI/quran_details/quran_details_screen.dart';
import 'UI/splashScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //bt7dd le al flutter loclization al design system ale sh8al beh y3ny fe design system lkol trgma
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      //al loghat ale al app byd3mha al local obj feh al iso code bta3 al lo8a english>en  arby>ar
      supportedLocales:[
        Locale("en"),
        Locale("ar"),
      ] ,


      //l10n:localizations  i18n:internationalization
      //al lo8a ale sh8al beha al app delwa2ty
      locale:Locale('en') ,

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
        //by7dd style ymshe 3ala al app kolo
        theme: AppTheme.lighttheme ,
        darkTheme:AppTheme.darktheme,

        //ht7km howa light wala dark
        themeMode: AppTheme.isDark?ThemeMode.dark:ThemeMode.light,

        routes: {
          homeScreen.routeName:(context) => homeScreen(),
          SplashScreen.routeName:(context) => SplashScreen(),
          QuranDetailsScreen.routeName:(context) => QuranDetailsScreen(),
          HadethDetailsScreen.routeName:(context) => HadethDetailsScreen(),


        },
      initialRoute:SplashScreen.routeName ,
    );
  }
}


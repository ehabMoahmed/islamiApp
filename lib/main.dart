import 'package:flutter/material.dart';
import 'package:islamyapp/style/app_theme.dart';

import 'UI/hadeth-details/hadeth_details_screen.dart';
import 'UI/home/home_screen.dart';
import 'UI/quran_details/quran_details_screen.dart';
import 'UI/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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


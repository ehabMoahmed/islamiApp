import 'package:flutter/material.dart';

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
      theme: ThemeData(
       bottomNavigationBarTheme: BottomNavigationBarThemeData(
           backgroundColor: Color( 0xffB7935F) ,//msh hyshtghl de bug
         selectedItemColor: Colors.black,
         unselectedItemColor: Colors.white,
         selectedIconTheme: IconThemeData(size: 32),
         unselectedIconTheme: IconThemeData(size: 20),
        ),

           appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
        ),

        scaffoldBackgroundColor: Colors.transparent, //lazm t3ml kda 3shan howa leh lon abyd khleh shfaf

        //al lon al montshr 3ndk fe al application
            colorScheme: ColorScheme.fromSeed(seedColor: Color( 0xffB7935F),
              primary: Color( 0xffB7935F)      , //al lon al montshr awy fe al app
              onPrimary: Colors.white   ,//al lon ale mktob 3ala al lon primary
              secondary:Color( 0xffB7935F).withOpacity(0.57),     //al lon al montshr a2l mn al primary
              onSecondary:Colors.black  ,//al lon ale mktob 3ala al lon secondary
            ),



      ),
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


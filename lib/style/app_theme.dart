import 'package:flutter/material.dart';

class AppTheme{
  static bool isDark=true; //3ayz al variable da connect m3 al themedmood

  static Color lightPrimary=Color( 0xffB7935F) ; //law bst5dm al color da fe kza mkan a3ml fe variable ahsn
  static Color darkPrimary=Color( 0xff141A2E) ;

  static Color darksecondary=Color( 0xffFACC1D) ;

  //htet al etnen fe class 3shan mkbrsh file al main

  static ThemeData lighttheme=ThemeData(


    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color( 0xffB7935F) ,//msh hyshtghl de bug
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 20),
    ),


    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black),
    ),

    scaffoldBackgroundColor: Colors.transparent, //lazm t3ml kda 3shan howa leh lon abyd khleh shfaf


    //al lon al montshr 3ndk fe al application
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightPrimary,
      primary: lightPrimary , //al lon al montshr awy fe al app
      onPrimary: Colors.white   ,//al lon ale mktob 3ala al lon primary
      secondary:Color( 0xffB7935F).withOpacity(0.57),     //al lon al montshr a2l mn al primary
      onSecondary:Colors.black  ,//al lon ale mktob 3ala al lon secondary
    ),

    dividerColor: lightPrimary,

    textTheme: TextTheme(
      //predefine style htla2e al app byst5dmha wenta msh 3arf bs adr aghyrha w ast5dmha 3ady mynf3sh tst5dm etnen mn material design mokhtlfen
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400, //da semi bold,
        color: Colors.black,
      ),

      labelMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),

      bodyMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 30,
      ),

      //unselected
      labelSmall: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),

      labelLarge: TextStyle(
        fontSize: 20,
        color: lightPrimary,
      ),


    ),

    cardTheme: CardTheme(

      margin: EdgeInsets.all(20),
      elevation: 10,
      color:Colors.white,
      surfaceTintColor: Colors.transparent,//by7ot lon 3leh fkhleh shfaf
    ),

    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,

    ),


  );

  static ThemeData darktheme=ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color( 0xff141A2E) ,//msh hyshtghl de bug
      selectedItemColor: darksecondary,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 20),
    ),


    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white),
    ),


    scaffoldBackgroundColor: Colors.transparent, //lazm t3ml kda 3shan howa leh lon abyd khleh shfaf


    //al lon al montshr 3ndk fe al application
    colorScheme: ColorScheme.fromSeed(
      seedColor: darksecondary, //bdl mtdelo al lon nfso adelo al variable feh al lon
      primary:darkPrimary, //al lon al montshr awy fe al app
      onPrimary: Colors.white   ,//al lon ale mktob 3ala al lon primary
      secondary:darksecondary ,     //al lon al montshr a2l mn al primary
      onSecondary:Colors.black  ,//al lon ale mktob 3ala al lon secondary

    ),

dividerColor: darksecondary,

    textTheme: TextTheme(
      //predefine style htla2e al app byst5dmha wenta msh 3arf bs adr aghyrha w ast5dmha 3ady mynf3sh tst5dm etnen mn material design mokhtlfen
      titleLarge: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),

      labelMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),

      bodyMedium: TextStyle(
        color: darksecondary,
        fontWeight: FontWeight.w400,
        fontSize: 30,
      ),
      labelSmall: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),

        labelLarge: TextStyle(
          fontSize: 20,
          color: darksecondary,
        )
    ),

      cardTheme: CardTheme(

        margin: EdgeInsets.all(20),
        elevation: 10,
        color:darkPrimary ,
        surfaceTintColor: Colors.transparent,//by7ot lon 3leh fkhleh shfaf
      ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkPrimary,
    ),


  );

}
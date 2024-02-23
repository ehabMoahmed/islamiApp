import 'package:flutter/material.dart';
import 'package:islamyapp/cache/cacheHelper.dart';
import 'package:islamyapp/providers/settings_provider.dart';
import 'package:islamyapp/style/app_theme.dart';
import 'package:provider/provider.dart';

import 'UI/hadeth-details/hadeth_details_screen.dart';
import 'UI/home/home_screen.dart';
import 'UI/quran_details/quran_details_screen.dart';
import 'UI/splashScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
  Future<void>  main() async {
    WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  runApp(ChangeNotifierProvider(
      //law 3ayz observer y listner 3leh hst5dm al obj da
      create:  (context) => SettingProvider(

      )..init() ,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //delwa2ty hkhle al observer aw al widget de t listner tshof al obj law hsl feha tghyer ttghyr heya kman msh h3ml obj gded khle balk
    SettingProvider provider=Provider.of<SettingProvider>(context); //kda khdt al obj bta3e

    return MaterialApp(

      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), //
      ],

      locale: Locale(provider.language),
      
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
        //by7dd style ymshe 3ala al app kolo
        theme: AppTheme.lighttheme ,
        darkTheme:AppTheme.darktheme,

        //ht7km howa light wala dark
        themeMode: provider.theme,

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


import 'package:flutter/material.dart';
import 'package:islamyapp/UI/home/tabs/quran_widget.dart';
import 'package:islamyapp/UI/home/tabs/radio.dart';
import 'package:islamyapp/UI/home/tabs/sebha_widget.dart';
import 'package:islamyapp/UI/home/tabs/settings.dart';
import 'package:islamyapp/style/app_theme.dart';


import 'tabs/ahades.dart';

class homeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int currentNavIndex=0;
  List<Widget>navWidget=[
    QuranWidget(),
    AhadethWidget(),
    SebhaWidget(),
    RadioWidget(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
               AppTheme.isDark? "assets/images/darkbg.png" :'assets/images/default_bg.png'
              ),//msh mwgoda fe al theme
            fit: BoxFit.fill
      )),
      child: Scaffold(

         //lazm t3ml kda 3shan howa leh lon abyd khleh shfaf
        appBar: AppBar(
          centerTitle: true,
          title: Text('إسلامي',style: TextStyle(fontSize: 30)),
        ),
        bottomNavigationBar: BottomNavigationBar(
              currentIndex:currentNavIndex , //eh al item ale t3mlo select

            //bydek al index le al item ale htdos 3leh
            onTap: (index) {
                setState(() {
                  currentNavIndex=index;
                });

            },
            items: [//a2l haga t3ml 2 items
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: "قران",
                ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                label: "احاديث",
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                label: " سبحه",
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                label: "راديو",
              ),

              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: Icon(Icons.settings) ,
                label: "الاعدادات",
              ),
            ]),

        //kda al body howa al hytghyr m3 al bottom navigation y3ny tghyer fe al index
        body: navWidget[currentNavIndex],

      ),
    );
  }
}

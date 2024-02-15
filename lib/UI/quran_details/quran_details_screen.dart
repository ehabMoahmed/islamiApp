import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../style/app_theme.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const routeName = 'QuranDetailsScreen';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {

    QuranDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;

   if(lines.isEmpty){
     readQuranFile(args.index); //non blocking codes
   }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  AppTheme.isDark? "assets/images/darkbg.png" :'assets/images/default_bg.png'
              ), //msh mwgoda fe al theme
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Card(

          child: lines.isNotEmpty?ListView.builder(
              itemBuilder:  (context, index) => Text(
                  "${lines[index]}(${index+1})",
                  style: Theme.of(context).textTheme.bodyMedium,
              textDirection: TextDirection.rtl,
              ),

              itemCount:  lines.length)
              :Center(child: CircularProgressIndicator(),)
        ),
      ),
    );
  }

  List<String> lines=[];

  //al function de bt2ra al files
  void readQuranFile(int index) async {
    //3shan akhle al function bta3te nonblocking code

    String quranText = await rootBundle.loadString(
        'assets/files/${index + 1}.txt'); //future:func unblock of codes btfdl sh8ala w al b3dha msh bystnaha tkhls la bytnfz m3aha
    print(quranText);
    lines=quranText.trim().split('\n');
    print(lines.length);
    setState(() {

    });
  }
}

class QuranDetailsArgs {
  String title;
  int index;
  QuranDetailsArgs(this.title, this.index);
}

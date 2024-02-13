import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                  'assets/images/default_bg.png'), //msh mwgoda fe al theme
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Card(
          margin: EdgeInsets.all(20),
          elevation: 10, //shadow

          child: lines.isNotEmpty?ListView.builder(
              itemBuilder:  (context, index) => Text(
                  "${lines[index]}(${index+1})",
                  style: TextStyle(color: Colors.black,fontSize: 25),
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

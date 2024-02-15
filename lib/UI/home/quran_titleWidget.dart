import 'package:flutter/material.dart';

import '../quran_details/quran_details_screen.dart';

class QuranTitleWidget extends StatelessWidget {
  String title;
  String versesNumber;
  int index;
  QuranTitleWidget({required this.versesNumber,required this.title,required this.index});
  @override
  Widget build(BuildContext context) {
    //3mltlo wrap b inkwell 3shan a3rf ados 3leha zyha zy GestureDetector bs de mfehash shadow
    return InkWell(
      onTap: (){
         Navigator.pushNamed(context, QuranDetailsScreen.routeName,arguments: QuranDetailsArgs(title,index));
      },
      child: Row(
        
        children: [
          Expanded(child: Container(alignment: Alignment.center,child: Text(title,style:Theme.of(context).textTheme.labelMedium ))),
          Container( width: 2,height: 60,),
          Expanded(child: Container(alignment:Alignment.center,child: Text(versesNumber,style:Theme.of(context).textTheme.labelMedium  )))
        ],
      ),
    );
  }
}

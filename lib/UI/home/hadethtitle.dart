import 'dart:html';

import 'package:flutter/material.dart';
import 'package:islamyapp/UI/home/ahadeth_model.dart';

class hadethTitleItem extends StatelessWidget {
HadethModel hadeth;
hadethTitleItem(this.hadeth);

  @override
  Widget build(BuildContext context) {
     return InkWell(
       onTap: (){
         Navigator.of(context).pushNamed(hadethDetailsScreen.routename,arguments: hadeth );
       },
       child: Text(
         hadeth.title,
         textAlign:TextAlign.center,
           style: TextStyle(

           fontSize: 22),
       ),
     );
  }
}

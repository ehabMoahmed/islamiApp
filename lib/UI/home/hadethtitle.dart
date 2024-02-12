import 'package:flutter/material.dart';
import 'package:islamyapp/UI/hadeth-details/hadeth_details_screen.dart';

import 'ahadeth_model.dart';

class HadethTitleItem extends StatelessWidget {
  HadethModel hadeth;
  HadethTitleItem(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,arguments: hadeth);
      },
      child: Text(
              hadeth.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,

        ),

      ),
    );
  }
}

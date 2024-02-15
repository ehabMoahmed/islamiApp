import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeSheet extends StatefulWidget {

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem('Lights'),
          SizedBox(height: 15,),
          getUnselectedItem('Dark'),
        ],
      ),
    );
  }

  Widget getSelectedItem(String SelectedLanguage){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(SelectedLanguage,style: TextStyle(
          fontSize: 20,
          color:Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        )),
        Icon(Icons.check,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }

  Widget getUnselectedItem(String UnSelectedLanguage){
    return   Text(UnSelectedLanguage,style: TextStyle(
      fontSize: 18,
    ));
  }
}

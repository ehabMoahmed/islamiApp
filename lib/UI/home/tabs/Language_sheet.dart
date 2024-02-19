import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamyapp/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatefulWidget {

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {

    SettingProvider provider= Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem(provider.language=="ar"?'العربيه':'English'),
          SizedBox(height: 15,),
          InkWell(
              onTap: (){
                Navigator.pop(context);
                provider.changeLnaguage( provider.language=="ar"?"en":"ar" );
              },
              child: getUnselectedItem(provider.language=="ar"?'English':'العربيه')),
        ],
      ),
    );
  }

  Widget getSelectedItem(String SelectedLanguage){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(SelectedLanguage,  style:  Theme.of(context).textTheme.labelLarge),
        Icon(Icons.check,
          color: Theme.of(context).dividerColor,
        )
      ],
    );
  }

  Widget getUnselectedItem(String UnSelectedLanguage){
    return   Text(UnSelectedLanguage,style:    Theme.of(context).textTheme.labelSmall);
  }
}

import 'package:flutter/material.dart';
import 'package:islamyapp/UI/home/tabs/themesheet.dart';
import 'package:islamyapp/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import 'Language_sheet.dart';

class Settings extends StatefulWidget {


  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider= Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          Text('Language',style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              ShowLanguageBottomSheet();
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding:EdgeInsets.all(10) ,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                  )
                ),
                child: Text('English',style:  Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 18
                ),)),
          ),
          SizedBox(height: 20,),
          Text('Theme',style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              ShowThemeBottomSheet();
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding:EdgeInsets.all(10) ,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                    )
                ),
                child: Text(provider.theme==ThemeMode.light?"Light":"Dark",style:  Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 18
                ),)),
          ),

        ],
      ),
    );
  }

  void ShowThemeBottomSheet() {
    showModalBottomSheet(context: context,
        builder:  (context) =>   ThemeSheet());
  }

  void ShowLanguageBottomSheet() {

    //3shan ttl3 al bottomsheet lazm tnade 3ala al function de
    showModalBottomSheet(
      context: context, //khleha statfufull
      builder: (context) {  //adelo al design fe al builder w h3mlo fe screen tanya 3shan al code mykbrsh meni
      return LanguageSheet();
    },);
  }
}

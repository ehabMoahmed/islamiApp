import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../providers/settings_provider.dart';

class ThemeSheet extends StatefulWidget {

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider=Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem( provider.theme==ThemeMode.dark?AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light),
          SizedBox(height: 15,),
          InkWell(
              onTap: (){
                Navigator.pop(context);//ht2fl al bottomsheet
                provider.changeTheme( provider.theme==ThemeMode.dark?ThemeMode.light:ThemeMode.dark);
              },
              child: getUnselectedItem(
                 provider.theme==ThemeMode.dark?AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark )), //b3ks
        ],
      ),
    );
  }

  Widget getSelectedItem(String SelectedLanguage){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(SelectedLanguage,style:Theme.of(context).textTheme.labelLarge),
        Icon(Icons.check,
          color: Theme.of(context).dividerColor,
        )
      ],
    );
  }

  Widget getUnselectedItem(String UnSelectedLanguage){
    return   Text(UnSelectedLanguage,style:  Theme.of(context).textTheme.labelSmall);
  }
}

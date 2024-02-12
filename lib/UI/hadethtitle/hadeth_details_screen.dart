import 'package:flutter/material.dart';

import '../home/ahadeth_model.dart';


class hadethDetailsScreen extends StatelessWidget {
 static const String routename="hadethDetailsScreen";

  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel= ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Scaffold  ();
  }
}



import 'package:flutter/material.dart';
import 'package:islamyapp/UI/home/ahadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName='HadethDetailsScreen';

  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel=ModalRoute.of(context)?.settings.arguments as HadethModel;
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/images/default_bg.png'), //msh mwgoda fe al theme
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadethModel.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                  margin: EdgeInsets.all(20),
                  elevation: 10, //shadow
              
                  child:SingleChildScrollView(
                    child: Text(
                      hadethModel.content,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

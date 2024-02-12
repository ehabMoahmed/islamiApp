import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyapp/UI/home/hadethtitle.dart';

import 'ahadeth_model.dart';

class AhadethWidget extends StatefulWidget {

  @override
  State<AhadethWidget> createState() => _AhadethWidgetState();
}

class _AhadethWidgetState extends State<AhadethWidget> {
  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){
      loadAhadethFile();
    }
    return  Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset('assets/images/hadeth_logo.png')),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
            decoration: BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide(
                color:Theme.of(context).primaryColor ,
                width: 2,
              ))
            ),
            child: Text('الاحاديث',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
        Expanded(
            flex: 3,
            child:allAhadeth.isEmpty?CircularProgressIndicator(): ListView.separated(
            itemBuilder: (context, index) => hadethTitleItem(allAhadeth[index]),
            separatorBuilder:  (context, index) => Container(
              width: 2,
              color: Colors.black,
            ),
            itemCount: allAhadeth.length))
      ],
    );
  }

  List<HadethModel>allAhadeth=[];

  //nonblockable
  void loadAhadethFile()async{
    String ahadethContent= await rootBundle.loadString("assets/files/ahadeth.txt"); //blockable : lazm astna lhd mykhls abl mst5dmo
    List<String> ahadethList=ahadethContent.trim().split("#");   //trim de btshel al msafat al fadya al zyada fe awl al String w akhro
    for (int i =0 ;i< ahadethList.length;i++){
      List<String> oneHadeth=ahadethList[i].trim().split('\n');
      String hadethtitle=oneHadeth[0];  //da al header
      oneHadeth.removeAt(0);
      String hadethContent= oneHadeth.join(' '); // byrbot al list kolha bb3dha w ykhleha fe string wahda
      allAhadeth.add(HadethModel(hadethtitle,hadethContent));
    }
    setState(() {

    });
  }
}

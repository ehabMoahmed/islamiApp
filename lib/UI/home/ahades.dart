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
   if(AllAhadeth.isEmpty){
     loadAhadethFile();
   }
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset('assets/images/hadeth_logo.png')),
        Container(

          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ))
          ),
          child: Text('الأحاديث',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),
          ),
               ),
        Expanded(
          flex: 3,
            child:AllAhadeth.isEmpty?Center(child: CircularProgressIndicator()):
            ListView.separated(
                itemBuilder: (context, index) => HadethTitleItem(AllAhadeth[index]),
              separatorBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: 2,
                  margin: EdgeInsets.all(5),
                  color: Colors.white60,
                );
              },
                itemCount: AllAhadeth .length,
            )

        )
      ],
    );
  }

  List<HadethModel>AllAhadeth= [];

  //async:nonblockable  ay async func lama tnade 3leha btkon non blockable
  void loadAhadethFile()async{
    String ahadethContent=await rootBundle.loadString('assets/files/ahadeth.txt'); //await blockable
    List<String>hadethList=ahadethContent.trim().split("#");//h2sm feha kol hadeth lwadho  trim btshel ay msafat fadya

    //h3ml for loop amshe 3ala kol hadeth akhod al title lwahdo w al content lwadho
    for(int i =0;i <hadethList.length;i++ ){
        List<String> oneHadeth=hadethList[i].trim().split('\n'); //kda bd2 y2sm al hadeth le lines w awl line al headeer al wahed fe list
        String hadethTitle= oneHadeth[0]; // w hena 3shan yakhod al title fhowa awl index aw awl str 0
        oneHadeth.removeAt(0); //fkda adrt ashel al head w ytb2ale al body kolo
        String headethContent=oneHadeth.join(" "); //zy mfe function bt2sm de function btgm3 kol al LIst fe string wahda yseb msafa fadya ben kol line w al tany
        AllAhadeth.add( HadethModel(hadethTitle,headethContent)); //ro7t 3mlt list mn no3 class byakhod 2 variable
    }
    setState(() {

    });
  }
}

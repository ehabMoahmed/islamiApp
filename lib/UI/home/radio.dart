import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Image.asset('assets/images/radio.png',width: 412,height: 222),
        ),
        Text('إذاعة القرآن الكريم',
            style: TextStyle(
                    fontWeight: FontWeight.bold,
              fontSize: 25,
        )),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: (){},
                child: Image.asset('assets/images/Icon metro-next (1).png')),
            SizedBox(width: 50),
            InkWell(
                onTap: (){},
                child: Image.asset('assets/images/Icon awesome-play.png')),
            SizedBox(width: 50),
            InkWell(
                onTap: (){},
                child: Image.asset('assets/images/Icon metro-next.png')),

        ],),
      ],
    );
  }
}

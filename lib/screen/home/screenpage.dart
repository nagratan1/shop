import 'package:flutter/material.dart';

import 'mypage.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    List<Color> Clrs =[
   Color.fromARGB(255, 246, 111, 58),
   Color.fromARGB(255, 36, 131, 233),
   Color.fromARGB(255, 63, 208, 143),
    ];
   var imageList =[
    "assets/images/slide1.png",
    "assets/images/slide2.png",
    "assets/images/slide3.png",
   ];
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(top: 20,left: 15,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: 
                  
                  [
                    BoxShadow(
                    color:Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                    ),
                  ],
                ),
              )
            ],
          ),
          ),
         
        ],
      ),
    );
  }
}
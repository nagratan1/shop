import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    var pNam = [

    
    
    "OPPO A57 (Glowing Green, 64 GB) (4 GB RAM)",
    "OPPO A17k (Navy Blue, 64 GB) (3 GB RAM)",
    "OPPO A16E (Blue,4GB+64GB)",
    "OPPO A16 (Gold, 4GB+128GB)",
    "OPPO A57 (Glowing Green, 64 GB) (4 GB RAM)",
    "OPPO A17k (Navy Blue, 64 GB) (3 GB RAM)",
    "OPPO A16E (Blue,4GB+64GB)",
    "OPPO A16 (Gold, 4GB+128GB)",
    "Mi 11X Pro 5G (Black, 4GB+64GB)",
    "OPPO A17k (Navy Blue, 64 GB) (3 GB RAM)",
     "Mi 4A Horizon Edition 80 cm (32 inch) HD Ready LED Smart Android TV with 20W Powerful Audio & Bezel-less Frame(Black)",
     "Lenovo Core i5 11th Gen -Thin and Light Laptop (Shadow Black, 8GB+512GB)",
  ];
    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Order'),
      ),
      body: SingleChildScrollView(
    
       child: Padding(padding: EdgeInsets.only(),
      child: Column(children: [
       
        SizedBox(height: 5,),
        Container(
           height: MediaQuery.of(context).size.height /15,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.blue),
          padding: EdgeInsets.only(left: 500),
          child: Icon(Icons.person_add_alt_1,color: Colors.white,),
        ),
        SizedBox(height: 10,),
        Column(children: [
        for(int i=0;i<12;i++)
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          height: 130,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 248, 238, 248),
            borderRadius: BorderRadius.circular(10),
          ),
          
          child: Row(children: [
           Container(
            height: 100,
             width: MediaQuery.of(context).size.width/4,
             margin: EdgeInsets.only(left: 8),
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
             ),
             child: Image.asset("images/${pNam[i]}.jpg",
             height: 70,
             width: 70,),
           ),
           Container(
            width: MediaQuery.of(context).size.width/1.8,
            child: Padding(padding: EdgeInsets.only(left: 15,top: 20,bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(pNam[i],style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black),),

               
                
                
                Container(
                  padding: EdgeInsets.only(left: 350,bottom: 40),
                  child: 
                Icon(Icons.chevron_right,color: Colors.black,),
                ),
              ],
              
            ),
            ),
           ),
        ],),
        ),
        ],
        )
      ]),),
      ),
    );
  }
}
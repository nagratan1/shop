import 'package:flutter/material.dart';

class GridItems extends StatelessWidget {
  var pName = [

    "Apple Watch -M2",
    "White Tshirt",
    "Nike show",
    "Ear Headphone",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pName.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 0.7,
      crossAxisCount: 2,
      ),
      itemBuilder: (context,index){
        return InkWell(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFFD4ECF7),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ]
            ),
            child: Padding(padding:EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                      
                          Text("30% off",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 12,
                  ),),
                 Icon(Icons.favorite, color:Colors.amberAccent,),
                    
                  ],

                
            
                 
                ),

              
             
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(10),
            child: Image.asset("images/${pName[index]}.png",height:100,width: 100,
       ),
            ),
        SizedBox(height:15
        ),
         Padding(padding: EdgeInsets.all(10),
         child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text(pName[index],style: TextStyle(
              fontSize: 17,
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),)
          ],
         ),
        ),


          
              ],
            )
            ),
          ),
        );
      },
    );
  }
  
 
}
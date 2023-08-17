import 'package:flutter/material.dart';
import 'package:shop/screens/iten_screen.dart';

class GridItems1 extends StatelessWidget {
  var pName = [

    "Apple Watch -M2",
    "White Tshirt",
    "Nike Shoe",
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
                 Icon(Icons.favorite, color:Colors.redAccent,),
                    
                  ],

                
            
                 
                ),

              
             
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(10),
             child:InkWell(onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ItemScreen()));
            },
            child: Image.asset("images/${pName[index]}.png",height:210,width: 150,
      ),
             ),
            ),
        SizedBox(height:10
        ),
         Padding(padding: EdgeInsets.all(10),
         child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text(pName[index],style: TextStyle(
              fontSize: 17,
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  "\$100",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "\$20 off",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                  
                    fontSize: 13,
                    color: Colors.black,
                    
                  ),
                ),
              ],
            ),
          ],
         ),
        ),


          
              ],
            )
            ),
            //),
          ),
        );
      },
    );
  }
  
 
}
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop/screens/product_images.dart';

class ItemScreen extends StatefulWidget {
   
  
 

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  //gride view............/
  
  
  //produvtlus
  //var produvtlus=[];



// void getlist()async{
//  var data  =await getprpoducts();

//  if(data.isNotEmpty){
//   setState(() {
//      produvtlus=data;
    
//   });
 
//   print(' produvtlus   ${produvtlus}');
  
//  }


// }




  int dataToChang =1;
  int datac=1;
  int price=100;
 int initialprice=100;

  void changedata(){
  setState(() {
      dataToChang += 1;
      price=dataToChang+price;
      //price=initialprice-price;

    }
    );
    
  }
  void datamode()
    {
      setState(() {
        if(dataToChang>1){
        dataToChang -=1;

         price=dataToChang-price;
        }
      }
      );
    
    }
    

  @override
  Widget build(BuildContext context) {
   
    
    
    return Scaffold(
      body: SafeArea(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xFFD4ECF7),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )
          
          ),
          child: Stack(
            children: [
              Center(
                child: ProductImagesSlider(),
                ),
              
            ],
          ),
        ),
        SizedBox(height: 10,),
       
        
        Text("hfhdh",
    style: TextStyle(fontSize: 25,
   fontWeight: FontWeight.bold,),
    ),
    SizedBox(height: 10,),
              Row(children: [
                RatingBar.builder(
                  initialRating: 3.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  itemBuilder: (context, _) => Icon(Icons.star,
                  color: Colors.amber,), onRatingUpdate: (double value) {  },
                  
  ),
              ],),
        SizedBox(height: 10,),
            Row(
              children: [
                Text(("200"),
                  // "\$",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "\$20 off",
                  style: TextStyle(
                   
                    decoration: TextDecoration.lineThrough,
                  
                    fontSize: 20,
                    color: Colors.black,
                    
                  ),
                  
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                        
                        IconButton(onPressed: (){datamode();
  
             }, icon:Icon(Icons.minimize), ) , 
                        
                     
                      Text("$dataToChang"),
                       IconButton(onPressed: (){changedata();
  
}, icon:Icon(Icons.add) ), 
                       
                    ],
                  ),
                ),

                
                
              ],
            ),
            SizedBox(height: 10,),
         Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Text("Total:",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                ),
                Text("\$100",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                )
              ],
            ),
            // SizedBox(height: 10,),
            // Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            // style: TextStyle(fontSize: 18),
            // textAlign: TextAlign.justify,

            // ),
            
          SizedBox(height: 10,),
          
         
        
      ],),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row
        (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
      InkWell(
        onTap: (){},
        child: Container(
          width: MediaQuery.of(context).size.width/1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.redAccent,
          ),
          child: Center(child: Text("Add To Cart",style: TextStyle(fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          ),)),
        ),
      ),
      InkWell(
        onTap: (){},
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width/5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFD4ECF7),
          ),
          child: Center(child: Icon
          (Icons.favorite_outline, color: Colors.redAccent,
          size: 30,),
          ),),
        ),
      
        ]),
      ),
    );
  }
}





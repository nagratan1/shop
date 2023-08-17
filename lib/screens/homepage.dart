// import 'package:flutter/material.dart';


// //import '../login.dart';
// //import 'mypage.dart';


// class HomePage extends StatefulWidget {
  
  


//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
  
//   var Lapname=[

//     "Mi 4A Horizon Edition 80 cm (32 inch) HD Ready LED Smart Android TV with 20W Powerful Audio & Bezel-less Frame(Black)",
//      "Lenovo Core i5 11th Gen -Thin and Light Laptop (Shadow Black, 8GB+512GB)",
//      "Lenovo IdeaPad Gaming Core i5 11th Gen Gaming Laptop (Shadow Black , 8GB+512GB)",
//      "Lenovo Intel Core i5 11th Gen - Gaming Laptop (Black,16GB + 1TB)",
//      "LG Nanocell Ultra HD (4K) LED Smart WebOS TV (Black)",
//      "LG Nanocell Ultra HD (4K) LED Smart WebOS TV (Black) ",

//   ];
 

//   @override
//   Widget build(BuildContext context) {
//     var pNam = [

    
    
//     "OPPO A57 (Glowing Green, 64 GB) (4 GB RAM)",
//     "OPPO A17k (Navy Blue, 64 GB) (3 GB RAM)",
//     "OPPO A16E (Blue,4GB+64GB)",
//     "OPPO A16 (Gold, 4GB+128GB)",
//     "OPPO A57 (Glowing Green, 64 GB) (4 GB RAM)",
//     "OPPO A17k (Navy Blue, 64 GB) (3 GB RAM)",
//     "OPPO A16E (Blue,4GB+64GB)",
//     "OPPO A16 (Gold, 4GB+128GB)",
//     "Mi 11X Pro 5G (Black, 4GB+64GB)",
//     "OPPO A17k (Navy Blue, 64 GB) (3 GB RAM)",
//   ];
    
// var imageList =[
//   "images/slide1.png",
//   "images/slide4.png",
//   "images/slide3.png",
//  ];
//  List<Color> Clrs = [
//     Color.fromARGB(255, 246, 111, 58),
//     Color.fromARGB(255, 36, 131, 233),
//     Color.fromARGB(255, 63, 208, 143),
//   ];
  
    
   
   
//    return Scaffold(
    
    
//     // backgroundColor: Color(0xFFD4ECF7),

//     //   appBar: AppBar(

//     //     backgroundColor: Colors.indigo,
//     //     title: Text(' Shoppsy'),
//     //     centerTitle: true,
      
//     //     actions: [
//     //       Icon(Icons.shopify_rounded)

//     //     ],
//     //   ),
//       body: 
      
//       SingleChildScrollView(

       
//       child: Column(
        
//       crossAxisAlignment:CrossAxisAlignment.start,
//       children: [
//         Padding(padding: EdgeInsets.only(top: 20, left: 15, right: 15),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Color(0xFFD4ECF7),
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 4,
//                     spreadRadius: 2,
//                   )
//                 ],              ),
//                 // child: Icon(CupertinoIcons.search,size: 20,),
                
//             )
//           ],
//         ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           padding: EdgeInsets.only(left: 15),
//           child: Row(children: [
//             for(int i = 0; i<3; i++)
//             Container(
//               margin: EdgeInsets.only(right: 10),
//               padding: EdgeInsets.only(left: 10),
//               width: MediaQuery.of(context).size.width / 1.5,
//               height: MediaQuery.of(context).size.height / 5.5,
//               decoration: BoxDecoration(
//                 color: Clrs[i],
//                 borderRadius: BorderRadius.circular(10),

//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "30% off on Winter Collextion",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 22,
//                         ),
//                       ),
//                       Container(
//                         width: 80,
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Center(child: Text(
//                           "Shop Now",
//                           style:TextStyle(
//                    color: Colors.redAccent,
//                    fontWeight: FontWeight.bold,
//                           ),
//                         )),
//                       )
//                     ],
//                   ),),
//                   Image.asset(imageList[i],
//                  height: 180,
//                  width: 110,),
//                 ],
//               ),
//             ),
//           ]),
//         ),
//     // SizedBox(height: 5,),
//     //      Container(
//     //           height: MediaQuery.of(context).size.height*0.15,
//     //         color:Color(0xFFD4ECF7),
//     //         child: ListView.builder(padding:const EdgeInsets.all(6.0),
//     //         scrollDirection: Axis.horizontal,
//     //         shrinkWrap: true,
//     //         itemCount: 10,
//     //         itemBuilder: (BuildContext context, int index){
//     //           return Column(
//     //           mainAxisAlignment: MainAxisAlignment.center,
//     //             children: <Widget> [
//     //             Padding(
//     //               padding: const EdgeInsets.all(8.0),
//     //               child: CircleAvatar(
//     //                 radius: 35.0,
//     //                child: Image.asset("images/OPPO A57 (Glowing Green, 64 GB) (4 GB RAM).jpg"),
//     //                 ),
//     //             ),
//     //             Text("name"),
//     //           ],);
//     //         },
            
//     //         ),
//     //       ),
          
//         SizedBox(height: 20,),
        
//            Padding(padding: 
//             EdgeInsets.symmetric(horizontal: 15, ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Mobiles & Tablets",
//                 style: TextStyle(
//                   color: Colors.blue,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),),
//                 Text("See All",
//                 selectionColor:Colors.black54)
//               ],
//             ),
//             ),
           
//              Container(
//               height: MediaQuery.of(context).size.height*0.3,
//                child: ListView.builder(
//                  shrinkWrap: true,
//                  itemBuilder: (context,index) => 
//                Padding(padding:const EdgeInsets.all(5.0),
               
//                child: Column(
//                  children: [
//                    Container(
//                       margin: EdgeInsets.all(1),
//                      height: 270,
//                      width: 150,
                     
//                      decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(15),
//                    color: Colors.white,
//                    boxShadow: [
//                      BoxShadow(
//                        color: Colors.black26,
//                        blurRadius: 4,
//                        spreadRadius: 2,
//                      )
//                    ]
//                  ),
//                    child: Padding(padding:EdgeInsets.all(12),
//                    child: Column(
//                    children: [
                      
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: [
                         
                           
//                                Text("30% off",
//                        style: TextStyle(fontWeight: FontWeight.bold,
//                        fontSize: 12,
//                        ),),
//                       Icon(Icons.favorite, color:Colors.redAccent,),
                         
//                        ],
                   
                 
//                      ),
//                       SizedBox(height: 10,),
//                  Padding(padding: EdgeInsets.all(10),
                 
//                  child: Image.asset("images/${pNam[index]}.png",height:210,width: 150,
//       ),
//                    ),
//                     SizedBox(height:10
//                    ),
//                     Padding(padding: EdgeInsets.all(7),
//                     child: Column(
//                crossAxisAlignment:CrossAxisAlignment.start,
//                children: [
//                  Text(pNam[index],style: TextStyle(
//                    fontSize: 12,
//                    color: Colors.black.withOpacity(0.8),
//                    fontWeight: FontWeight.bold,
//                  ),)
//                ],
//                     ),
//                    ),
//                    ],
                  
                   
//                      ),
                    
                    
//                       ),),
               
//                  ],
//                ),
//                ),  
                    
//                 //),
//                 itemCount: 10,
//                 scrollDirection: Axis.horizontal,
                   
//                ),
//              ),
        
        
//           SizedBox(height: 10,),
//           Padding(padding: 
//             EdgeInsets.symmetric(horizontal: 15),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Top Categories",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),
//                 ),
//                 Text("See All",
//                 selectionColor:Colors.black54)
//               ],
//             ),),
//            Container(
//             height: MediaQuery.of(context).size.height*0.3,
          
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemBuilder: (context,index) => 
//           Padding(padding:const EdgeInsets.all(5.0),
          
//           child: Column(
//             children: [
//               Container(
//                  margin: EdgeInsets.all(1),
//                 height: 270,
//                 width: 180,
                
//                 decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 4,
//                   spreadRadius: 2,
//                 )
//               ]
//             ),
//               child: Padding(padding:EdgeInsets.all(12),
//               child: Column(
//               children: [
                 
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
                    
                      
//                           Text("30% off",
//                   style: TextStyle(fontWeight: FontWeight.bold,
//                   fontSize: 12,
//                   ),),
//                  Icon(Icons.favorite, color:Colors.redAccent,),
                    
//                   ],
        
            
//                 ),
//                  SizedBox(height: 10,),
//             Padding(padding: EdgeInsets.all(1),
            
//            // child: Image.asset("images/${Lapname[index]}.jpg",height:110,width: 180,
//          //),
//         ),
//          SizedBox(height:10
//         ),
//          Padding(padding: EdgeInsets.all(10),
//          child: Column(
//           crossAxisAlignment:CrossAxisAlignment.start,
//           children: [
            
//             Text(Lapname[index],style: TextStyle(
              
//               fontSize: 11,
//               color: Colors.black.withOpacity(0.8),
//               fontWeight: FontWeight.bold,
//             ),)
//           ],
//          ),
//         ),
//               ],
             
        
//                 ),
               
         
//                  ),),
          
//             ],
//           ),
//           ),  
         
//            //),
//            itemCount: 10,
//            scrollDirection: Axis.horizontal,
        
//           ),
//           ),
//           SizedBox(height: 20,),
          
//            Padding(padding: 
//             EdgeInsets.symmetric(horizontal: 15, ),
//             child: Row(
              
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Mobiles & Tablets",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),),
//                 Text("See All",
//                 selectionColor:Colors.black54)
//               ],
//             ),
//             ),
        
//         ],
        
        
//         ),
//       ),
   

//       // bottomNavigationBar: BottomNavigationBar(items: [
//       //   BottomNavigationBarItem(icon: Icon(Icons.home),
//       //   label: 'home'
        
//       //   ),
//       //    BottomNavigationBarItem(icon: Icon(Icons.shop),
//       //    label: 'cart'),
//       //     BottomNavigationBarItem(icon: Icon(Icons.person),
//       //     label: 'profile'),
//       // ],
//       // ),
     
//       );
//   }
   

  
  
  
  
// }


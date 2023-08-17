import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
//import 'package:shop/api/apiproduct.dart';

class ProductImagesSlider extends StatefulWidget {
 

  
  
 

  @override
  State<ProductImagesSlider> createState() => _ProductImagesSliderState();
}

class _ProductImagesSliderState extends State<ProductImagesSlider> {
  // produvtlus=[];


// void getlist()async{
//  var data  =await getprpoducts();

//  if(data.isNotEmpty){
//   setState(() {
//      produvtlus=data;
    
//   });
 
//   print(' produvtlus   ${produvtlus}');
  
//  }


// }
// @override
// void initState(){

//   getlist();
//   super.initState();



// }
  @override
  Widget build(BuildContext context) {
   
 
    return ImageSlideshow(
      indicatorColor: Colors.amberAccent,
      indicatorBackgroundColor: Colors.white,
      
      height: 300,
      autoPlayInterval: 10,
      indicatorRadius: 4,
      isLoop: true,

      
     
   children: [
    // Card(
    //   child: Image.network('${widget.itemDetail?['images'][0]}',
    //         fit: BoxFit.fill,
    //       ),),
   
    Padding(padding: EdgeInsets.all(8),
    
    //child: Image.network("${produvtlus[0]['thumbnail']}",height: 150, width: 240,), ),
    // Padding(padding: EdgeInsets.all(8),
     child: Image.asset("images/p2.png"),),
    // Padding(padding: EdgeInsets.all(8),
    // child: Image.asset("images/p1.png"),),
    // Padding(padding: EdgeInsets.all(8),
    // child: Image.asset("images/p1.png"),),
  //   Text("OPPO A57 (Glowing Green, 64 GB) (4 GB RAM)",
  //   style: TextStyle(fontSize: 10,
  //  fontWeight: FontWeight.bold,),
  //   ),
   ],
   
    );
  }
}


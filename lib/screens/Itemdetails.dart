import 'dart:async';

// import 'package:api_new_projects/cartFile/cartDisplay.dart';
// import 'package:api_new_projects/display/api/Apifile.dart';
// import 'package:api_new_projects/pages/homepage.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:df/api.dart';
// import 'package:df/home.dart';
import 'package:flutter/material.dart';
import 'package:shop/screen/home/homepage.dart';

import '../api/api.dart';

class Itemdetails extends StatefulWidget {
    final Map<String, dynamic>? itemDetail;
  const Itemdetails({super.key, this.itemDetail});

  @override
  State<Itemdetails> createState() => _ItemdetailsState();
}

class _ItemdetailsState extends State<Itemdetails> {

  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSlider();
  }

  

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }


  void _startAutoSlider() {
    const duration = Duration(seconds: 3); // Set the interval for auto-sliding
    _timer = Timer.periodic(duration, (Timer timer) {
      if (_currentPage < widget.itemDetail!.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(

  child: Column(

  children: [

  SizedBox(height: 40,),

  Row(children: [

 IconButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder:(context) =>HomePage() ));
 }, icon: Icon(Icons.arrow_back)),
  
  

 

  ],),
Divider(thickness: 1,),
  SizedBox(height: 10,),

  Container(
    height: 450,
    child: PageView.builder(
     controller: _pageController,
     itemCount: itemsDetail!.length,
     itemBuilder: (context, index) {
            return 
       Container(
          height: 320,
          width: 360,
        child: Card(
     
          child: Image.network('${widget.itemDetail?['images'][0]}',
            fit: BoxFit.fill,
          ),
    
      ));
    }),
  ),

  // Text('${itemDetail?['title']}'),

  SizedBox(height: 10,),
  Text('${widget.itemDetail?['description']}',
  style: TextStyle(fontSize: 20,

  fontWeight: FontWeight.normal

  ),

  ),

  SizedBox(height: 5,),

  Align(

   alignment: Alignment.centerLeft,

  child:   Text('#Just here',

  

  style: TextStyle(fontWeight: FontWeight.bold),

  

  ),

  )

  

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
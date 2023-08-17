import 'dart:async';
import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:shop/api/api.dart';

import '../../screens/Itemdetails.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




//Search logic
TextEditingController _controller = TextEditingController();
CarouselController  carouselController=CarouselController();
int currentIndex =0;
  

  Future<List<dynamic>>performSearchItems(String search) async{
    List<dynamic> searchResult = [];

try{
var response = await http.get(Uri.parse('https://dummyjson.com/products/')
);
var result  = json.decode(response.body);
print(response.body);
  List< dynamic> newsearchResult = result['products'] ?? [];
   setState(() {
      searchResult = newsearchResult;
    });

print('tasmiya  ${searchResult} ${newsearchResult}');

return searchResult;

}
catch(error){
  print(error);
rethrow;
 }
 }

var produtlist=[];
void searchItems(String search)async{
var  data =  await performSearchItems(search);
setState(() {
  produtlist = data;
});

}

//final _controller = PageController();
 final PageController _pageController = PageController();
  int _currentPage = 0;

 
 
  List<String>cardList  = [
'https://i.pinimg.com/564x/4f/0b/a8/4f0ba824c5610577cc0918d36c755c51.jpg',


'https://i.pinimg.com/736x/0b/96/c9/0b96c91294907711bc7f6bbcff39867b.jpg',

'https://i.pinimg.com/564x/4b/37/20/4b3720d7d6fa67259042708761c4c0c7.jpg',

 ];


  
  
  void _startAutoSlide() {
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage <cardList.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }
 
 
 @override
 void initState(){
  super.initState();
 _startAutoSlide();
 //retriveLoginData();
 searchItems(_controller.text);
 }

@override
void dispose(){
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    var name=[

      "Power_Bank",
      "NOKIA",
      "Realme_Buds",
      "USB b",
      "USB C",
      "Ninja",
      "Portronics",
      
      "JBL",
      "Realme",
      "LED",
     

    ];
     List imageList = [
    {"id": 1, "image_path": 'images/banner.png'},
    {"id": 2, "image_path": 'images/bestsellersbanner.png'},
    {"id": 3, "image_path": 'images/banner.png'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

    return Scaffold(
      body:  
SafeArea(
  child:   SingleChildScrollView(
    child: Column(

          children: [
        //     
       Column(children: [
        Stack(
          children: [
            InkWell(
              onTap: () {
                print(currentIndex);
              },
              child: CarouselSlider(
                items: imageList
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 17 : 7,
                      height: 7.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? Colors.red
                              : Colors.teal),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ]),
        
       
        SizedBox(height: 5,),
     Container(
                 height: MediaQuery.of(context).size.height*0.15,
            color:Color(0xFFD4ECF7),
             child: ListView.builder(padding:const EdgeInsets.all(6.0),
           scrollDirection: Axis.horizontal,
             shrinkWrap: true,
             itemCount: 10,
            itemBuilder: (BuildContext context, int index){
               return Column(
               mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget> [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: CircleAvatar(
                     radius: 35.0,
                    // child: Image.asset("images/OPPO A57 (Glowing Green, 64 GB) (4 GB RAM).jpg"),
                   backgroundImage:AssetImage("images/${name[index]}.jpg",),
                     ),
                 ),
                 Text(name[index],),
               ],);
             },
            
             ),
           ),
            SizedBox(height: 20,),
        
           Padding(padding: 
            EdgeInsets.symmetric(horizontal: 15, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Mobiles & Tablets",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
                Text("See All",
                 
                selectionColor:Colors.black54)
                
              ],
            ),
            ),


      SizedBox(height: 20,),
            produtlist.isEmpty?CircularProgressIndicator():
           Container(
            height: MediaQuery.of(context).size.height*0.3,
          
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context,index) =>InkWell(
        onTap: 
         ()async{
  String itemId = produtlist[index]['id'].toString() ;  
      Map<String, dynamic>?  itemDetail = await  fetchItemsdetails(itemId);
    print('itemsDetail: $itemsDetail'); // Add 0 line to check the value of itemsDetail
  Navigator.push(
     context,
   MaterialPageRoute(
    builder: (context) => Itemdetails(
      itemDetail: itemsDetail!,
     ),
  )
     );
       
        }, 
          //Padding(padding:const EdgeInsets.all(5.0),
          
          child: Column(
            children: [
              Container(
                 margin: EdgeInsets.all(1),
                height: 270,
                width: 180,
                
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
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
            Padding(padding: EdgeInsets.all(1),
            
            child: Image.network('${produtlist[index]['thumbnail']}',height: 140,width: 140,
             //fit: BoxFit.fill,
        ),
        ),
         SizedBox(height:10
        ),
         Padding(padding: EdgeInsets.all(10),
         child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            
            Text('${produtlist[index]['title']}..',style: TextStyle(
              
              fontSize: 11,
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),)
          ],
         ),
        ),
              ],
             
        
                ),
               
         
                 ),),
          
            ],
          ),
          ),  
         
           //),
           itemCount:produtlist.length,
           scrollDirection: Axis.horizontal,
        
          ),
          ),
           SizedBox(height: 20,),
        
           Padding(padding: 
            EdgeInsets.symmetric(horizontal: 15, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Mobiles & Tablets",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
                Text("See All",
                 
                selectionColor:Colors.black54)
                
              ],
            ),
            ),
            SizedBox(height: 20,),
            produtlist.isEmpty?CircularProgressIndicator():
           Container(
            height: MediaQuery.of(context).size.height*0.3,
          
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context,index) =>InkWell(
        onTap: 
         ()async{
  String itemId = produtlist[index]['id'].toString() ;  
      Map<String, dynamic>?  itemDetail = await  fetchItemsdetails(itemId);
    print('itemsDetail: $itemsDetail'); // Add 0 line to check the value of itemsDetail
  Navigator.push(
     context,
   MaterialPageRoute(
    builder: (context) => Itemdetails(
      itemDetail: itemsDetail!,
     ),
  )
     );
       
        }, 
          //Padding(padding:const EdgeInsets.all(5.0),
          
          child: Column(
            children: [
              Container(
                 margin: EdgeInsets.all(1),
                height: 270,
                width: 180,
                
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
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
            Padding(padding: EdgeInsets.all(1),
            
            child: Image.network('${produtlist[index]['thumbnail']}',
             //fit: BoxFit.fill,
        ),
        ),
         SizedBox(height:10
        ),
         Padding(padding: EdgeInsets.all(10),
         child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            
            Text('${produtlist[index]['title']}..',style: TextStyle(
              
              fontSize: 11,
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),)
          ],
         ),
        ),
              ],
             
        
                ),
               
         
                 ),),
          
            ],
          ),
          ),  
         
           //),
           itemCount:produtlist.length,
           scrollDirection: Axis.horizontal,
        
          ),
          ),
          ]
    )
  ),






 
),
  );
  }
}
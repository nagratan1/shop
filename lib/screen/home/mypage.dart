import 'package:flutter/material.dart';

class mypage extends StatelessWidget {
  const mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coumtom"),
      ),
      body: Container(
        child: Column(children: [
          Expanded(
            flex: 2,
           child: Container(
          color: Colors.amber,
          child: ListView.builder(itemBuilder: (context,index) => 
          Padding(padding:const EdgeInsets.all(2.0),
          
          child: Container(
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue,
              image: DecorationImage(
            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      ),
            ),
          ),  
           itemCount: 10,
           scrollDirection: Axis.horizontal,

          ),
          ),
          ),
          Container(
            height: 120.0,
            color:Colors.blue,
            child: ListView.builder(padding: EdgeInsets.only(left:10.0),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index){},
            ),
          ),
        //   Expanded(
        //     flex: 1,
        //    child: Container(
        //   color: Colors.red,
        //   child: ListView.builder(itemBuilder:(context,index) =>
        //    Padding(padding:const EdgeInsets.all(.0),
        
        //   child: ListTile(
        //     leading: CircleAvatar(
        //       backgroundImage: NetworkImage("https://www.channelfutures.com/files/2019/10/Focus-877x432.jpg"),
        // ) ,
        // title: Text('name'),
        //     ),
           
        //     // width: 80,
        //    //title:Text('name'),
            
        //     //child: CircleAvatar(backgroundColor: Colors.blue),
            
              
          
        //   ),
        
          
        //   ),
          
        //  // itemCount: 10,
        //    //scrollDirection: Axis.horizontal,
          
        //    ),
         
        //    ),
          //),
          
           Container(
            height: 40,
          color: Colors.green,
          ),
          
          Expanded(
            flex: 2,
           child: Container(
          color: Colors.amber,
          child: ListView.builder(itemBuilder: (context,index) => 
          Padding(padding:const EdgeInsets.all(5.0),
          
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue,
              image: DecorationImage(

            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
            
      ),
            ),
          ),  
        
           //),
           itemCount: 10,
           scrollDirection: Axis.horizontal,

          ),
          ),
          ),
           
            Container(
              height: 50,
          color: Colors.pink,
          ),
          Expanded(
            flex: 2,
           child: Container(
          color: Colors.amber,
          child: ListView.builder(itemBuilder: (context,index) => 
          Padding(padding:const EdgeInsets.all(5.0),
          
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue,
              image: DecorationImage(

            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
            
      ),
            ),
          ),  
        
           //),
           itemCount: 10,
           scrollDirection: Axis.horizontal,

          ),
          ),
          ),

        ]),
      ),
    );
  }
}
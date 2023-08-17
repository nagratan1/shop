import 'package:flutter/material.dart';

import 'login_mobile_number.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     //backgroundColor: Color(0xFFD4ECF7),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFD4ECF7),
        child:Center(
        child:Container(
          width: 280,
            height: 200,
            // color: Colors.blueGrey,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              
            ),
            padding: EdgeInsets.all(35),
           
          child: Column(
            children: [
            
             Text("You Need to Login First",
           style: TextStyle(fontSize: 20,
           fontWeight: FontWeight.bold,
           
           color: Colors.black),
           
           ),
           Padding(padding: EdgeInsets.all(18),),
           ElevatedButton(onPressed:(){
            login_number();
           }, child: Text("Login >>>",
           style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            //color: Colors.amber,
           ),
           ),),
          
            ], 
              
              ),
        ),
       
       
      ),
    
      ),
      
    );
  }

  
}
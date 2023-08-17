import 'package:flutter/material.dart';

import 'otp_login.dart';

class login_number extends StatefulWidget {
  const login_number({super.key});

  @override
  State<login_number> createState() => _login_numberState();
}

class _login_numberState extends State<login_number> {
  

  

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       
      body: SingleChildScrollView(
      //crossAxisAlignment: CrossAxisAlignment.start,
      
      child: 
      Column(
          children: [
            
      
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFD4ECF7),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )
              
              ),
              
            ),
            
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.only(right: 350),
            child:
            Text("Welcome Back",
             style: TextStyle(fontSize: 25,
             fontWeight: FontWeight.bold,
             ),
          ),
            ),
         
                 
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.only(left: 30),
                child:
                Row(
                  children: [
                    Text(("Sign to complete your shoping"),
                     
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
            ),   
                SizedBox(height: 50,),
                
                 Padding(padding: EdgeInsets.only(left: 20,right: 20),
                    child: TextFormField(
           
            
             keyboardType: TextInputType.phone,
             decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      hintText: 'Enter the Mobile Number',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                 ),
                 ),
                
      
                
              SizedBox(height: 50,),
              Padding(padding: EdgeInsets.only(right:130),
            
              
               child:Column(children: [
                 Text("by siging in you are conforming that you have accecpted",
              style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.normal,),
              
              ),
               ],
              ),
              ),
              SizedBox(height: 20,),
          Padding(padding: EdgeInsets.only(right:240),
          child: Column(children: [
            Text("our terms of use and Privacy & Poliocy",
            style: TextStyle(fontSize: 15,
            fontWeight: FontWeight.normal),),
          ],),),
              
              SizedBox(height: 20,),
           Padding(padding: EdgeInsets.only(),
           child: Container(
            //width: MediaQuery.of(context).size.width/.1,
            child: 
              Divider(
                color: Colors.black,
                indent: 20,
                thickness: .5,
              ),
            
           ),
           ),
           SizedBox(height: 20,),
           Padding(padding: EdgeInsets.only(),
           child:Center(
           
           child:
           
          ElevatedButton(onPressed: (){
            login_otp();
          },
          
           child: Text("Continue",style: TextStyle(fontSize: 15,
           fontWeight: FontWeight.bold,),),
           ),
           ),
           ),
          ],
        ),
      
            ),
      
      
      
     );
  }
}
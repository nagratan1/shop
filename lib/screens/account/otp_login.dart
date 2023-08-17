import 'package:flutter/material.dart';

class login_otp extends StatefulWidget {
  const login_otp({super.key});

  @override
  State<login_otp> createState() => login_otpState();
}

class login_otpState extends State<login_otp> {
  

  

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
            Padding(padding: EdgeInsets.only(right: 10),
            child:
            Text("Sign in to complete your shopping",
             style: TextStyle(fontSize: 25,
             fontWeight: FontWeight.bold,
             ),
          ),
            ),
         
                 
              
                SizedBox(height: 50,),
                
                 Padding(padding: EdgeInsets.only(left: 20,right: 20),
                    child: TextFormField(
           
            
             keyboardType: TextInputType.phone,
             decoration: InputDecoration(
                      labelText: 'Enter OTP',
                      hintText: 'Enter the OTP',
                      // prefixIcon: Icon(Icons.person),
                      // border: OutlineInputBorder(),
                    ),
                 ),
                 ),
                
      SizedBox(height: 20,),
           Padding(padding: EdgeInsets.only(left: 370),
           
           
           child:
           
          ElevatedButton(onPressed: (){},
          
           child: Text("rese"),
           ),
           ),
          
                
              SizedBox(height: 30,),
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
           
          ElevatedButton(onPressed: (){},
          
           child: Text("Continue"),
           ),
           ),
           ),
          ],
        ),
      
            ),
      
      
      
     );
  }
}
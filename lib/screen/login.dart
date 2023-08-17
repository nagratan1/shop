import 'package:flutter/material.dart';
import 'package:shop/screen/home/homepage.dart';
import 'package:shop/screens/Screens.dart';

import '../api/apiservice.dart';
import '../widget/mywidget.dart';
import 'home/screenpage.dart';




class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final emailcontroller=TextEditingController();
  final passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Welcome\nBack',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            controller:emailcontroller ,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(onPressed: ()async{
                                print('tapp');


                         var statuscode=   await    loginapi(emailcontroller.text,passwordController.text
                                  

                                );

                                if(statuscode=='200'){
                                  var msg='You have sucesffuully login!';
                                  
                                 


                                     
                                      
                                  showdialouge(
                                    context,
                                    msg,
                                    ElevatedButton(onPressed: (){
                                       Navigator.pushAndRemoveUntil(context, 
                                        MaterialPageRoute(builder: (context) =>Screens(),), 
                                        (route) => false);


                                    }, child: Text('done'))
                                  
                                    

                                  );
                                }
                               else{
                                 var msg='You have  login! Error';
                                  
                                 


                                     
                                      
                                  showdialouge(
                                    context,
                                    msg,
                                    ElevatedButton(onPressed: (){
                                       Navigator.pushAndRemoveUntil(context, 
                                        MaterialPageRoute(builder: (context) =>MyLogin(),), 
                                        (route) => false);


                                    }, child: Text('done'))
                                  
                                    

                                  );
                               };



                               



                              }, child: Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 27, fontWeight: FontWeight.w700),
                              ), ),
                             
                              // CircleAvatar(
                              //   radius: 30,
                              //   backgroundColor: Color(0xff4c505b),
                              //   child: IconButton(
                              //       color: Colors.white,
                              //       onPressed: () {
                              //         Screens();
                              //       },
                              //       icon: Icon(
                              //         Icons.arrow_forward,
                              //       )),
                              // )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: Text(
                                  'Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18,
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
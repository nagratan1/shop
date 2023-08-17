import 'package:flutter/material.dart';

import '../screens/Screens.dart';

Future<void>showdialouge(context,String msg,Widget button){
  return 

   showDialog(context: context, builder: (context) {
    // print(path);
                                  return AlertDialog(
                                    title: Text('login'),
                                    content: Text(msg),
                                    actions: [

                                     button
                                    ],
                                  );
                                },
                                
                                
                                
                                
                                );
}
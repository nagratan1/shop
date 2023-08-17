import 'package:shop/screen/login.dart';
import 'package:shop/screen/register.dart';
import 'package:shop/screen/spalsh/splashscreen.dart';

import 'screens/Screens.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
    );
  }
}

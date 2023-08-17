import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shop/screen/home/homepage.dart';
import 'package:shop/screens/Itemdetails.dart';

import 'account/profile.dart';
import 'iten_screen.dart';
//import 'package:line_icons/line_icon.dart';

class Screens extends StatefulWidget {

 
  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions =<Widget>[
   HomePage(),
   ItemScreen(),
   
   Itemdetails
   (),
   DrawerScreen(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
appBar: AppBar(

        backgroundColor: Colors.indigo,
        title: Text(' Shoppsy'),
        centerTitle: true,
      
        actions: [
          Icon(Icons.shopify_rounded)

        ],
      ),

body: _widgetOptions.elementAt(_selectedIndex),
bottomNavigationBar: Container(
  decoration: BoxDecoration(
    color: Colors.white,
    boxShadow: [
BoxShadow(
  blurRadius: 20,
  color: Colors.black.withOpacity(0.1)
),
    ],
  ),
  child: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
  child: GNav(
    rippleColor: Colors.grey[300]!,
    hoverColor:  Colors.grey[100]!,
    gap: 8,
    activeColor: Colors.white,
    iconSize: 24,
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    duration: Duration(milliseconds: 400),
    tabBackgroundColor: Colors.redAccent,
    color: Colors.black,
    tabs:[
      GButton(icon: LineIcons.home, text: 'Home',),
      GButton(icon: LineIcons.shoppingBag, text: 'Cart',),
      GButton(icon: LineIcons.heart, text: 'Wishlist',),
      GButton(icon: LineIcons.user, text: 'Account',),
    ],
    selectedIndex: _selectedIndex,
    onTabChange: (index){
      setState(() {
         _selectedIndex = index;

        
      });

     
      print(_selectedIndex);
    },
  ),
  )),
),
    );
  }
}
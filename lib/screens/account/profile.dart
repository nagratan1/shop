
import 'package:flutter/material.dart';
import 'package:shop/screens/address/addform.dart';

import 'setting_screen.dart';


class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  
   final List drawerMenuListname = const [
    {
      "leading": Icon(
        Icons.location_on_outlined,
        color: Colors.black,
      ),
      "title": "My Address",
      "trailing": Icon(
        Icons.chevron_right,color: Colors.amberAccent,
      ),
      "action_id": 1,
    },
    {
      "leading": Icon(
        Icons.edit_calendar_outlined,
      color: Colors.black,
      ),
      "title": "Edit Profile",
      "trailing": Icon(Icons.chevron_right,color: Colors.amberAccent,),
      "action_id": 2,
    },
    {
      "leading": Icon(
        Icons.compass_calibration_sharp,
        color: Colors.black,
      
      ),
      "title": "My Coupons",
      "trailing": Icon(Icons.chevron_right,color: Colors.amberAccent,),
      "action_id": 3,
    },
    {
      "leading": Icon(
        Icons.history,
        color: Colors.black,
      ),
      "title": "Order History",
      "trailing": Icon(Icons.chevron_right,color: Colors.amberAccent,),
      "action_id": 4,
    },
    {
      "leading": Icon(
        Icons.exit_to_app,
       color: Colors.black,
      ),
      "title": "Log Out",
      "trailing": Icon(Icons.chevron_right,color: Colors.amberAccent,),
      "action_id": 5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: SizedBox(
        width: 900,
        child: Drawer(
          child: ListView(
            children: [
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.channelfutures.com/files/2019/10/Focus-877x432.jpg"),
                ),
                title: Text(
                  "you created a crazzyhub account to start your purchase joiney",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                
              ),
              const SizedBox(
                height: 30,
              ),
              ...drawerMenuListname.map((sideMenuData) {
                return ListTile(
                  leading: sideMenuData['leading'],
                  title: Text(
                    sideMenuData['title'],
                  ),
                  trailing: sideMenuData['trailing'],
                  onTap: () {
                    Navigator.pop(context);
                    if (sideMenuData['action_id'] == 1) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => form(),
                        ),
                      );
                    } else if (sideMenuData['action_id'] == 4) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SettingScreen(),
                        ),
                      );
                    }
                    
                  },
                );
              }).toList(),
            ],
      
          ),
        ),
      ),
    );
     
  }
    //);
  }
//}

 


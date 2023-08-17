import 'package:flutter/material.dart';
import 'package:shop/screens/account/profile.dart';

import 'apiaddress.dart';



class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  
  String ?person;
  String ?gender;
  String ?city;
  String ?stete;
  String ?address;
   String ?country;
var countrylist=[];
void  getdata()async{

  var data=await getcounlyList();
  if(data.isNotEmpty){
    setState(() {
      countrylist=data;
      print('mycountylist   $countrylist');
      
    });
  }




}


@override 
void initState(){
  getdata();
  super.initState();
}



  @override
  Widget build(BuildContext context) {

    
    TextEditingController cityController=TextEditingController();
    TextEditingController stretController=TextEditingController();
    TextEditingController stateController=TextEditingController();
    TextEditingController countryController=TextEditingController();
   TextEditingController emaillController=TextEditingController();  
  
  TextEditingController UserlController=TextEditingController();
   TextEditingController phoneController=TextEditingController(

   );
 
      final  _formkey=GlobalKey<FormState>();  
    return Scaffold(
//  drawer: const HomeScreen(),
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.indigo,
        title: Text(' My Address'),
        centerTitle: true,
      
        actions: [
          Icon(Icons.shopify_rounded)

        ],
        leading:
  IconButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder:(context) => DrawerScreen(),));
 }, icon: Icon(Icons.arrow_back)),
      ),
      body: 
    //ListView.separated(itemBuilder: context,{
      Center(child: Padding(padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formkey,
        child:

      
       SingleChildScrollView(
        // scrollDirection: ,
         child: Column(children: [
           TextFormField(
        controller: stretController,
        decoration: InputDecoration(
              suffixIcon: DropdownButton<String>(
          value: address,     
                onChanged: (p) {
                  setState(() {
                    address = p;
                  });
                },
                items: [
 DropdownMenuItem(
  value: 'Home',
  child: Text('Home'),
  ),
DropdownMenuItem(
  value: 'Office',
  child: Text('Office'),
  ),
  DropdownMenuItem(
  value: 'Other',
  child: Text('Other'),
  )



              ],),
                  labelText: 'Choose Address',
                  hintText: 'Select the Address',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
             ),
             SizedBox(height: 20,),
             TextFormField(
        // controller: UserlController,
        
         //keyboardType: TextInputType.phone,
         decoration: InputDecoration(
                  labelText: 'Flat/House/No,Building,Comapny Name',
                  hintText: 'Enter theFlat/House/No,Building,Comapny Name',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
             ),
             
       SizedBox(height: 20,),
       TextFormField(
        controller: cityController,
         decoration: InputDecoration(
                  labelText: 'Area/Landamrk',
                  hintText: 'Enter the Area/Landamrk',
                  //prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
       ),
       SizedBox(height: 20,),
       TextFormField(
        controller: cityController,
         decoration: InputDecoration(
                  labelText: 'pin code',
                  hintText: 'Enter the pin code',
                  //prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
       ),
        SizedBox(height: 20,),
       TextFormField(
       controller: phoneController,
       validator: (value){
          if(value==null||value.isEmpty){
                      return 'phone can\'t be empty';
                    }
       else if(value.length<10){
       return 'Phone can\'t be  10 digits';
       }
       },
       keyboardType: TextInputType.phone,
         decoration: InputDecoration(
                  labelText: 'Phone',
                  hintText: 'Enter the Phone',
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                ),
       ),
       SizedBox(height: 20,),
       TextFormField(
       controller: emaillController,
       validator: (value){
         if(value!.isEmpty){
           return 'Email can\'t be Empty';
       
         }
         else if(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)!=true){
           return 'Enter valid Email';
         }
       },
       
         keyboardType: TextInputType.emailAddress,
         
         decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter the Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
         
       ),
       SizedBox(height: 20,),


        Container(

          child: Row(children: [
            Text('select country'),
            IconButton(onPressed: (){
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: Text('country'),

                  content: Container(
                    height: MediaQuery.of(context).size.height*0.5,
                    width: 100,
                    child: ListView.builder(
                      itemCount: countrylist.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                      return  Text('${countrylist[index]['name']}');
                    },)
                  )
                  
                  // LayoutBuilder(zjfbzdb
                  //   builder: (context, constraints) {
                  //     return    Container(
                  //                         height: constraints.maxHeight * .7, // 70% height
                  //     width: constraints.maxWidth * .9,
                  
                  //   //  height: 600,
                  //   // width:double.infinity,
                  //   child: ListView.builder(
                  //     shrinkWrap: true,
                  //     // scrollDirection: Axis.vertical,
                  //     itemCount: countrylist.length,
                  //     itemBuilder: (context, index) {
                  //     return  Text('${countrylist[index]['name']}');
                  //   },)
                  //                 );
                  
                  
                  //   },
                  //   // child: 
                    
                  
                  
                  
                  // ),
              
              
              
                );
              },);



            }, icon: Icon(Icons.arrow_drop_down))
          ],),
        ),
       TextFormField(
        controller: countryController,
        decoration: InputDecoration(
              suffixIcon: DropdownButton<String>(
          value: country,     
                onChanged: (p) {
                  setState(() {
                    country = p;
                  });
                },
                items: [
 DropdownMenuItem(
  value: 'India',
  child: Text('India'),
  ),
// DropdownMenuItem(
//   value: 'Raksh',
//   child: Text('Rakesh'),
//   )



              ],),
                  labelText: ' Select Country',
                  hintText: 'Select the Country',
                  //prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
       ),
        SizedBox(height: 20,),
       TextFormField(
        controller: stretController,
        decoration: InputDecoration(
              suffixIcon: DropdownButton<String>(
          value: person,     
                onChanged: (p) {
                  setState(() {
                    person = p;
                  });
                },
                items: [
 DropdownMenuItem(
  value: 'Uttar Pradesh',
  child: Text('Uttar Pradesh'),
  ),
DropdownMenuItem(
  value: 'Delhi',
  child: Text('Delhi'),
  ),
  



              ],),
                  labelText: 'Select State',
                  hintText: 'Select the State',
                  //prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
       ),
        SizedBox(height: 20,),
       TextFormField(
        controller: cityController,
        decoration: InputDecoration(
              suffixIcon: DropdownButton<String>(
          value: city,     
                onChanged: (p) {
                  setState(() {
                    city = p;
                  });
                },
                items: [
 DropdownMenuItem(
  value: 'Lucknow',
  child: Text('Lucknow '),
  ),
DropdownMenuItem(
  value: 'Barabanki',
  child: Text('Barabanki'),
  ),
  



              ],),
                  labelText: 'Select City',
                  hintText: 'Select the City',
                  //prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
       ),
       
       SizedBox(height: 20,),
       ElevatedButton(

        onPressed:(){
       if(_formkey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('form submitted successfull!')));
                       
                       cityController.clear();
                       stretController.clear();
                        stretController.clear();
                        countryController.clear();
                        UserlController.clear();
                      
                      emaillController.clear();
                      
                      phoneController.clear();
       
                  }
       },
       child: Text('submit',)),
             ],),
       )
       ),
      ),
      ),
    );
  }
}


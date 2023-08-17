import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List> getcounlyList()async{
  try{
    var response=await   http.get(Uri.parse('https://b1.bhaaraterp.com/leads/api/lead-country-list-api/'),
    headers: {
      'token':'6fba84eba684a66dfd52213a34327e14dfffb322'
    });

   print('${response.statusCode}  ${response.body}')
   ;
   var data=json.decode(response.body);
   var countrylist=data['serializer_data'];
   print('countrylist  $countrylist');
   return countrylist;


  }catch(e){
    throw Exception();


  }
}
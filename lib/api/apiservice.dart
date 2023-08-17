import 'package:dio/dio.dart';

import '../urls.dart';


final dio=Dio();
Future< String> loginapi(username,password)async{
  try{

    var response=   await dio.post(
    loginurl,
    data: {
      'username':username,
      'password':password
    }
    );




    print('${response.statusCode}  + ${response.data}');
    var staetcode=response.statusCode.toString();
    return staetcode;


  }catch(e){
    print(e);
    throw Exception();

  }

}
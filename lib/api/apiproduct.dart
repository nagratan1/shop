import 'package:dio/dio.dart';


final dio=Dio();
Future<List> getprpoducts()async{
  var productluist=[];



  try{
var response=await dio.get('https://dummyjson.com/products',
);

print(response.statusCode);
print('${response.data }');
var data=response.data;
productluist=data['products'];
print('productluist     s${productluist}');
return  productluist;


    



  }catch(e){
    throw Exception();


  }


}


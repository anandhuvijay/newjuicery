
import 'package:dio/dio.dart';
import 'package:juicerryanandhu/apimodels/greensmodel.dart';
import 'package:juicerryanandhu/apimodels/loginmodel.dart';
import 'package:juicerryanandhu/apimodels/mixmodel.dart';
import 'package:juicerryanandhu/apimodels/productmodel.dart';
import 'package:juicerryanandhu/apimodels/regmodel.dart';
import 'package:juicerryanandhu/url.dart';

class Apiclass{
  static Apiclass instane =Apiclass();
  factory(){
    return instane;
  }
  final dio =Dio();
  final url =Url();

  Apiclass(){
    dio.options=BaseOptions(
      baseUrl: url.baseurl,
      responseType: ResponseType.json,
    );
  }
  Future<Registration?>registeruserapi(FormData formData)async{
    try{
      final result =await dio.post(url.registerend,data: formData);
      return Registration.fromJson((result.data));

    }on DioException catch(e){
      print(e);
    }catch(e){
      print(e);
    }
  }
  Future <Login?>loginuserapi(FormData formData)async{
    try{
      final result = await dio.post(url.loginend,data: formData);
      return Login.fromJson((result.data));
    }on DioException catch(e){
      print(e);

    }catch(e){
      print(e);
    }
  }
  fectchhome()async{
    try{
      Response response = await dio.get(url.baseurl+url.home);
      print("ddddddd$response");
      return Products.fromJson((response.data));
    
      
    }catch(error){
      print(error.toString());
    }
  }
  fectchmix()async{
    try{
      Response response = await dio.get(url.baseurl+url.home2);
      
      return Mix.fromJson((response.data));
    }catch(error){
      print(error.toString());
    }

  }
  fectchgreens()async{
    try{
      Response response = await dio.get(url.baseurl+url.home3);
      return Greens.fromJson((response.data));
    }catch(error){
      print(error.toString());
    }
  }

}
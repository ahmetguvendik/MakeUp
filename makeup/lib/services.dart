 import 'package:http/http.dart';
import 'package:makeup/product.dart';

class ProductServices{
  static var client = Client();

  static Future<List<Product>> fetchProduct() async{
  var response =  await client.get(Uri.parse("http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"));
    if(response.statusCode==200){
     var jsonString = response.body;
    return productFromJson(jsonString);
    }
    else{
     print("Hata");
    }
  }
 }
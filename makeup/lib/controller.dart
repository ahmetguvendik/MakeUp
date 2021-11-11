import 'package:get/get.dart';
import 'package:makeup/product.dart';
import 'package:makeup/services.dart';

class ProductController extends GetxController{
  var productList = List<Product>().obs;

  @override
  void onInit(){
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async{
   var products = await  ProductServices.fetchProduct();
   if(products != null){
     productList.value = products;
   }

  }
}
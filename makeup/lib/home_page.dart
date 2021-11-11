import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:makeup/controller.dart';
import 'package:makeup/product_tile.dart';

class HomePage extends StatelessWidget {

  ProductController productController = Get.put(ProductController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Makyaj Reyonu",style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.blue),),elevation: 0,centerTitle: true,backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => StaggeredGridView.countBuilder(
              itemCount: productController.productList.length,
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
                 itemBuilder: (context,index){
            return ProductTile(product: productController.productList[index]);
        },
        staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
          ),)
        ],
      ),
    );
  }
}

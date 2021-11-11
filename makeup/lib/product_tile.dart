import 'package:flutter/material.dart';
import 'package:makeup/product.dart';

class ProductTile extends StatelessWidget {
  Product product;
  ProductTile({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.transparent,
      child:Column(
        children: [
          Expanded(
              flex: 4,
              child: Image.network(product.imageLink)),
          SizedBox(height: 10,),
          Expanded(
              flex: 1,
              child: Text(product.name)),
          SizedBox(height: 10,),
          Expanded(
              flex: 1,
              child: Text(product.price))
        ],
      ),

    );
  }
}

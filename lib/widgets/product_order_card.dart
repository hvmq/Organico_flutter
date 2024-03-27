import 'package:flutter/material.dart';
import 'package:organico/models/product_order_model.dart';

class ProductOrderCard extends StatelessWidget {
  final ProductOrder productorder;
  const ProductOrderCard(this.productorder, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 50,
        height: 50,
        color: productorder.backColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            productorder.image,
          ),
        ),
      ),
    );
  }
}

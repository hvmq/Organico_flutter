import 'package:flutter/material.dart';

class ProductModel {
  int id;
  String name;
  String imageUrl;
  String shop;
  double price;
  Color backcolor;

  ProductModel(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.shop,
      required this.price,
      required this.backcolor});
}

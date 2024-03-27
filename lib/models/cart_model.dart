import 'package:flutter/material.dart';

class CartModel {
  int id;
  String name;
  String imageUrl;
  int weight;
  double price;
  Color backcolor;

  CartModel(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.weight,
      required this.backcolor});
}

import 'package:flutter/material.dart';

class CategoryModel {
  int id;
  String name;
  String imageUrl;
  Color backcolor;

  CategoryModel(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.backcolor});
}

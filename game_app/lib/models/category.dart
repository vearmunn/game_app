import 'package:flutter/material.dart';

class CategoryModel {
  final String genres;
  final IconData icons;
  final Color colors;

  CategoryModel(this.genres, this.icons, this.colors);
}

List<CategoryModel> categoryList = [
  CategoryModel('Action', Icons.swap_horiz, Colors.redAccent),
  CategoryModel('Arcade', Icons.ios_share, Colors.teal),
  CategoryModel('Card', Icons.card_membership, Colors.yellowAccent),
  CategoryModel('RPG', Icons.king_bed, Colors.lightGreenAccent)
];

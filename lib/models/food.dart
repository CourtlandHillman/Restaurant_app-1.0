import 'package:flutter/material.dart';

class Food {
  String name;
  String price;
  String imagePath;
  String rating;
  String descriptionFood;

  Food({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.descriptionFood,
  });
  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;
  String get _descriptionFood => descriptionFood;
}

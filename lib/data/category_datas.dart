// data/category_data.dart
import 'package:flutter/material.dart';
import '../models/category_model.dart';

final List<Category> categories = [
  Category(
    imagePath: 'assets/images/items/bike.png',
    label: 'Sports',
    color: const Color(0xFFB1F6B8), // Warna pastel hijau
  ),
  Category(
    imagePath: 'assets/images/items/electronics.png',
    label: 'Electronics',
    color: const Color(0xFFca95f2), // Warna pastel ungu
  ),
  Category(
    imagePath: 'assets/images/items/tools.png',
    label: 'Tools',
    color: const Color(0xFFfd95a9), // Warna pastel oranye
  ),
  Category(
    imagePath: 'assets/images/items/furniture.png',
    label: 'Furniture',
    color: const Color(0xFFfec17a), // Warna pastel pink
  ),
];

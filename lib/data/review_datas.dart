import 'package:flutter/material.dart';
import '../models/review_model.dart';

class ReviewController {
  final String shopName = "Rafly Rent Shop";
  final String address = "Kota Semarang, Indonesia";

  final List<Map<String, dynamic>> statistics = [
    {
      'avatars': [
        'assets/images/profiles/profile_rating1.jpg',
        'assets/images/profiles/profile_rating2.jpg',
        'assets/images/profiles/profile_rating3.jpg',
      ],
      'value': '',
      'label': '20 Customers',
    },
    {
      'icon': 'assets/icons/stars.svg',
      'value': '4.7',
      'label': '17 Reviews',
      'iconColor': const Color(0xFF794AFF), // Atur warna sesuai tema
    },
    {
      'icon': Icons.shopping_bag,
      'value': '7 items',
      'label': 'Total',
      'iconColor': const Color(0xFF2ab364), // Hijau
    },
  ];

  final List<Review> reviews = [
    const Review(
      name: "Natahlie Scotfil",
      review: "Very good prices! I love it!",
      rating: 5.0,
      ratingColor: Color(0xFF2ab364),
      imageUrl: "assets/images/profiles/profile_rating1.jpg",
      bgColor: Color(0xFFeaf7ef),
      label: "Excellent",
      labelColor: Color(0xFF2ab364),
    ),
    const Review(
      name: "Samantha Bauer",
      review: "I rented a chair and it was quite old.",
      rating: 4.0,
      ratingColor: Color(0xFF794AFF),
      imageUrl: "assets/images/profiles/profile_rating2.jpg",
      bgColor: Color(0xFFf2edff),
      label: "Good",
      labelColor: Color(0xFF794AFF),
    ),
    const Review(
      name: "Alexander Wang",
      review: "Harrison is polite and friendly.",
      rating: 5.0,
      ratingColor: Color(0xFF2ab364),
      imageUrl: "assets/images/profiles/profile_rating3.jpg",
      bgColor: Color(0xFFeaf7ef),
      label: "Excellent",
      labelColor: Color(0xFF2ab364),
    ),
    const Review(
      name: "Geko Somert",
      review: "Harrison didn't answer me!",
      rating: 2.0,
      ratingColor: Color(0xFFfe479e),
      imageUrl: "assets/images/profiles/profile_rating4.jpg",
      bgColor: Color(0xFFffedf5),
      label: "Poor",
      labelColor: Color(0xFFfe479e),
    ),
  ];

  void onChatPressed() {
    // Logika untuk tombol chat
  }

  void onMenuPressed() {
    // Logika untuk tombol menu
  }
}

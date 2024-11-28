import 'package:flutter/material.dart';

class Review {
  final String name;
  final String review;
  final double rating;
  final Color ratingColor;
  final String imageUrl;
  final Color bgColor;
  final String label;
  final Color labelColor;

  const Review({
    required this.name,
    required this.review,
    required this.rating,
    required this.ratingColor,
    required this.imageUrl,
    required this.bgColor,
    required this.label,
    required this.labelColor,
  });
}

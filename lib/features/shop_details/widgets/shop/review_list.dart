import 'package:flutter/material.dart';
import '../../../../models/review_model.dart';
import 'review_tile.dart';

class ReviewList extends StatelessWidget {
  final List<Review> reviews;

  const ReviewList({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: reviews.length,
      itemBuilder: (context, index) {
        final review = reviews[index];
        return ReviewTile(
          name: review.name,
          review: review.review,
          rating: review.rating,
          ratingColor: review.ratingColor,
          imageUrl: review.imageUrl,
          bgColor: review.bgColor,
          label: review.label,
          labelColor: review.labelColor,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'product_info_section.dart'; // Import ProductInfoSection if necessary

class ImageSection extends StatelessWidget {
  final String imagePath;
  final String location;
  final String status;
  final double rating;

  const ImageSection({
    super.key,
    required this.imagePath,
    required this.location,
    required this.status,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 8, // Card shadow for visual effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // Rounded corners
        ),
        child: Stack(
          children: [
            // Image container
            Container(
              width: 380, // Fixed width for square shape
              height: 380, // Fixed height for square shape
              decoration: BoxDecoration(
                color: const Color(
                    0xFFF1EEF5), // Set the background color to FFF1EEF5
                borderRadius: BorderRadius.circular(
                    16.0), // Rounded corners for image and container
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover, // Ensure the image covers the container
                ),
              ),
            ),
            // Product info section positioned at the bottom-left of the image
            Positioned(
              bottom: 8.0,
              left: 8.0,
              child: ProductInfoSection(
                location: location,
                status: status,
                rating: rating,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

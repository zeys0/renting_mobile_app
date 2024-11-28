import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShopInfoSection extends StatelessWidget {
  final String shopName;
  final double rating;

  const ShopInfoSection({
    super.key,
    required this.shopName,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          // Shop Icon (Avatar or Shop Logo) - Increased size
          const CircleAvatar(
            radius: 24.0, // Increased the size of the circle avatar
            backgroundImage: AssetImage(
                'assets/images/profiles/profile.jpg'), // Replace with actual image path
          ),
          const SizedBox(
              width: 16.0), // Increased spacing between icon and name

          // Shop Name and Rating in a Column for alignment
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Shop Name - Increased size and margin
              Text(
                shopName,
                style: const TextStyle(
                  fontSize: 18, // Increased font size for better visibility
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                  height: 8.0), // Increased margin between name and rating

              // Rating with 5 Star Icons and number
              Row(
                children: [
                  // Star Icons
                  Row(
                    children: List.generate(5, (index) {
                      return SvgPicture.asset(
                          'assets/icons/stars.svg', // Gunakan konstanta SVG yang didefinisikan sebelumnya
                          width: 20, // Atur ukuran ikon sesuai kebutuhan
                          height: 20,
                          color: Theme.of(context)
                              .primaryColor // Warna ikon mengikuti rating color
                          );
                    }),
                  ),
                  const SizedBox(
                      width: 8.0), // Space between stars and rating number

                  // Rating Number
                  Text(
                    '$rating',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const Spacer(), // Pushes the content to the left

          // The Circular Arrow Button (Instead of 'View Shop')
          GestureDetector(
            onTap: () {
              // Implement navigation or other functionality
            },
            child: CircleAvatar(
              radius: 24.0, // Increased the size of the arrow button
              backgroundColor: Theme.of(context)
                  .primaryColor, // Background color for the circular button
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 24.0, // Increased size of the arrow
              ),
            ),
          ),
        ],
      ),
    );
  }
}

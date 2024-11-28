import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductInfoSection extends StatelessWidget {
  final String location;
  final String status;
  final double rating;

  const ProductInfoSection({
    super.key,
    required this.location,
    required this.status,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Container for location with icon and text inside
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor, // Green background
                  borderRadius: BorderRadius.circular(8.0), // Border radius
                ),
                child: Row(
                  children: [
                    const Icon(Icons.location_on,
                        color: Colors.white,
                        size: 16), // Icon inside the container
                    const SizedBox(width: 4),
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // White text color
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              // Container for status with icon and text inside
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF2ab364), // Green background
                  borderRadius: BorderRadius.circular(8.0), // Border radius
                ),
                child: Row(
                  children: [
                    const Icon(Icons.check_circle,
                        color: Colors.white,
                        size: 16), // Example icon for status
                    const SizedBox(width: 4),
                    Text(
                      status,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 5),
          Row(
            children: [
              SvgPicture.asset(
                  'assets/icons/stars.svg', // Gunakan konstanta SVG yang didefinisikan sebelumnya
                  width: 20, // Atur ukuran ikon sesuai kebutuhan
                  height: 20,
                  color: Theme.of(context)
                      .primaryColor // Warna ikon mengikuti rating color
                  ),
              const SizedBox(width: 4),
              Text(
                '$rating',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

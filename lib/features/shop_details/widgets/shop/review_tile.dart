import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import flutter_svg untuk SVG

class ReviewTile extends StatelessWidget {
  final String name;
  final String review;
  final double rating;
  final Color ratingColor;
  final String imageUrl; // Gambar URL
  final Color bgColor; // Warna latar belakang kartu
  final String label; // Jenis label (e.g., "Excellent", "Good")
  final Color labelColor; // Warna label

  const ReviewTile({
    super.key,
    required this.name,
    required this.review,
    required this.rating,
    required this.ratingColor,
    required this.imageUrl,
    required this.bgColor,
    required this.label,
    required this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0), // Jarak antar review
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: bgColor, // Warna latar card
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow lembut
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar avatar
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(imageUrl), // Gunakan URL gambar
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nama dan label di satu baris
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Nama berwarna putih
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      label,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: labelColor, // Warna teks label
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  review,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black, // Warna teks abu-abu terang
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          // Tampilan rating hanya berupa teks
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  // Gantikan Icon star dengan SVG
                  SvgPicture.asset(
                    'assets/icons/stars.svg', // Gunakan konstanta SVG yang didefinisikan sebelumnya
                    width: 20, // Atur ukuran ikon sesuai kebutuhan
                    height: 20,
                    color: ratingColor, // Warna ikon mengikuti rating color
                  ),
                  const SizedBox(width: 4),
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ratingColor, // Warna angka rating
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

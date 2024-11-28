import 'package:flutter/material.dart';
import '../../../product_details/screens/product_detail_screen.dart';
import '../../../../models/lease_item.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeaseItemCard extends StatelessWidget {
  final LeaseItem item;

  const LeaseItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    // Membatasi jumlah kata pada title
    String limitWords(String text, int maxWords) {
      List<String> words = text.split(' ');
      if (words.length > maxWords) {
        words = words.sublist(0, maxWords);
        return '${words.join(' ')}...'; // Menambahkan '...' di akhir jika dipotong
      }
      return text;
    }

    return GestureDetector(
      onTap: () {
        // Navigasi ke ProductDetailScreen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              imagePath: item.image,
              title: item.title,
              price: item.price,
              rating: item.rating,
              location: item.location,
              status: item.status,
            ),
          ),
        );
      },
      child: Container(
        width: 160, // Lebar setiap card
        margin: const EdgeInsets.only(left: 16), // Jarak antar card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF1EEF5),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      item.image,
                      height: 100,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.favorite,
                        color: Theme.of(context).primaryColor,
                        size: 16,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/stars.svg',
                          width: 20,
                          height: 20,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          item.rating.toString(),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // Menampilkan judul dengan pembatasan kata
            Text(
              limitWords(item.title, 10), // Batasi hanya 10 kata
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              item.price,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

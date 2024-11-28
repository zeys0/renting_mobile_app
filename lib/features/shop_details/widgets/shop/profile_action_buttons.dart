import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileActionButtons extends StatelessWidget {
  final VoidCallback onChatPressed;
  final VoidCallback onMenuPressed;

  const ProfileActionButtons({
    super.key,
    required this.onChatPressed,
    required this.onMenuPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.center, // Pastikan tombol berada di tengah
        children: [
          // Chat button menggunakan SVG
          IconButton(
            icon: CircleAvatar(
              radius: 30, // Perbesar radius untuk circle avatar
              backgroundColor: Theme.of(context).primaryColor,
              child: SvgPicture.asset(
                'assets/icons/chat.svg', // Ganti dengan path file SVG Anda
                color: Colors.white, // Jika ingin memberi warna pada SVG
                width: 24, // Ukuran ikon
                height: 24, // Ukuran ikon
              ),
            ),
            onPressed: onChatPressed,
          ),
          const SizedBox(width: 0), // Kurangi jarak antara tombol
          // Menu button menggunakan SVG
          IconButton(
            icon: CircleAvatar(
              radius: 30, // Perbesar radius untuk circle avatar
              backgroundColor: const Color(0xFF2ab364),
              child: SvgPicture.asset(
                'assets/icons/map.svg', // Ganti dengan path file SVG Anda
                color: Colors.white, // Jika ingin memberi warna pada SVG
                width: 24, // Ukuran ikon
                height: 24, // Ukuran ikon
              ),
            ),
            onPressed: onMenuPressed,
          ),
        ],
      ),
    );
  }
}

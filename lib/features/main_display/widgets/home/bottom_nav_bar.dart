import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart'; // Import GetX

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.thLarge,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                Get.toNamed('/'); // Navigasi ke HomeScreen
              },
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.heart, color: Colors.grey),
              onPressed: () {
                // Aksi untuk ikon hati
              },
            ),
            const SizedBox(
                width: 48), // Spasi untuk FAB (Floating Action Button)
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.commentDots,
                  color: Colors.grey),
              onPressed: () {
                // Aksi untuk ikon chat
              },
            ),
            // Ikon Profil (Akun)
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.user, color: Colors.grey),
              onPressed: () {
                Get.toNamed(
                    '/profile'); // Navigasi ke ProfileScreen menggunakan GetX
              },
            ),
          ],
        ),
      ),
    );
  }
}

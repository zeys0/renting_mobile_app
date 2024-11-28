import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String shopName;
  final String address;

  const ProfileAvatar(
      {super.key, required this.shopName, required this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Foto profil di baris pertama
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/images/profiles/profile.jpg'),
        ),
        const SizedBox(height: 12), // Jarak antara foto profil dan nama
        // Nama shop di baris kedua
        Text(
          shopName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8), // Jarak antara nama dan lokasi
        // Lokasi di baris ketiga dengan ikon
        Row(
          mainAxisSize: MainAxisSize.min, // Agar Row di tengah
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: 4), // Jarak antara ikon dan teks
            Text(
              address,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

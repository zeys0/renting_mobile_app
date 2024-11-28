import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileStatistics extends StatelessWidget {
  final List<Map<String, dynamic>> stats;

  const ProfileStatistics({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: stats.map((stat) {
        // Ambil warna ikon jika ada, jika tidak gunakan warna default
        Color iconColor = stat.containsKey('iconColor')
            ? stat['iconColor'] // Gunakan warna dari data jika ada
            : Colors.purple; // Warna default jika tidak ada

        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[900], // Warna latar belakang card
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Baris untuk Icon/Avatar dan Value
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Jika ada 'icon', tampilkan icon (diganti dengan SVG)
                  if (stat.containsKey('icon'))
                    // Jika Anda ingin mengganti 'icon' dengan file SVG
                    stat['icon'] is String
                        ? SvgPicture.asset(
                            stat[
                                'icon'], // Ganti path dengan path file SVG Anda
                            width: 24,
                            height: 24,
                            color: iconColor, // Menggunakan warna dinamis
                          )
                        : Icon(
                            stat[
                                'icon'], // Jika 'icon' bukan file SVG, tetap menggunakan Icon widget biasa
                            color: iconColor, // Menggunakan warna dinamis
                            size: 24,
                          ),
                  // Cek jika ada 'avatars', tampilkan avatar
                  if (stat.containsKey('avatars'))
                    ...((stat['avatars'] as List<String>).take(3).map(
                          (avatar) => Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(avatar),
                              radius: 12,
                            ),
                          ),
                        )),

                  const SizedBox(width: 8),
                  // Tampilkan nilai (value)
                  Text(
                    stat['value'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              // Tampilkan label di bawah
              Text(
                stat['label'],
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

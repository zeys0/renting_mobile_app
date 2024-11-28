import 'package:flutter/material.dart';

class LeaseButton extends StatelessWidget {
  final String price;

  const LeaseButton({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Tombol "Set Dates" dengan margin konten
          ElevatedButton(
            onPressed: () {
              // Logika untuk membuka pemilih tanggal
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFeaddff),
              padding:
                  EdgeInsets.zero, // Hilangkan padding default ElevatedButton
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_today,
                          color: Theme.of(context).primaryColor, size: 20),
                      const SizedBox(width: 8.0),
                      const Text(
                        '4 days', // Ganti teks sesuai logika jumlah hari
                        style: TextStyle(
                          fontSize: 20, // Ukuran font disamakan
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Set dates',
                    style: TextStyle(
                      fontSize: 20, // Ukuran font disamakan
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          // Tombol utama "Lease for $price"
          ElevatedButton(
            onPressed: () {
              // Logika untuk melanjutkan ke penyewaan
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            child: Center(
              child: Text(
                'Lease for $price',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

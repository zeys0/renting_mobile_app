import 'package:flutter/material.dart';

class LocationBar extends StatelessWidget {
  const LocationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0, // Ukuran search bar
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              // Aksi untuk pencarian
            },
            icon: const Icon(Icons.search, color: Colors.white, size: 24.0),
          ),
          Flexible(
            // Menggunakan Flexible dengan ukuran lebih terkendali
            child: Container(
              height: 40.0, // Ukuran tetap untuk search bar
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, color: Colors.white, size: 20.0),
                  SizedBox(width: 6.0),
                  Text(
                    "New Jersey",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Urbanist',
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Aksi untuk lonceng notifikasi
            },
            icon: const Icon(Icons.notifications,
                color: Colors.white, size: 24.0),
          ),
        ],
      ),
    );
  }
}

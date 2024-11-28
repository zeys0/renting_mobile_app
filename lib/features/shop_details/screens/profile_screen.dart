import 'package:flutter/material.dart';
import '../../../data/review_datas.dart'; // Import controller
import '../widgets/shop/profile_avatar.dart';
import '../widgets/shop/profile_statistics.dart';
import '../widgets/shop/review_list.dart';
import '../widgets/shop/profile_action_buttons.dart';

class ProfileScreen extends StatelessWidget {
  final controller = ReviewController(); // Instansiasi controller

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Colors.white),
            onPressed: () {
              // Aksi saat tombol titik tiga ditekan
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bagian atas dengan center alignment
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Avatar
                ProfileAvatar(
                  shopName: controller.shopName, // Data dari controller
                  address: controller.address, // Data dari controller
                ),

                // Profile Action Buttons
                ProfileActionButtons(
                  onChatPressed: controller.onChatPressed,
                  onMenuPressed: controller.onMenuPressed,
                ),

                // Profile Statistics
                ProfileStatistics(
                  stats: controller.statistics.map((stat) {
                    if (stat['avatars'] != null) {
                      return {
                        'avatars': stat['avatars'],
                        'value': stat['value'] ?? '',
                        'label': stat['label'],
                      };
                    } else {
                      return {
                        'icon': stat['icon'],
                        'value': stat['value'],
                        'label': stat['label'],
                        'iconColor': stat['iconColor'],
                      };
                    }
                  }).toList(),
                ),
              ],
            ),
          ),

          // Bagian review list
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                child: ReviewList(
                    reviews: controller.reviews), // Data dari controller
              ),
            ),
          ),
        ],
      ),
    );
  }
}

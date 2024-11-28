import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/home/bottom_nav_bar.dart';
import '../widgets/home/item_card.dart';
import '../widgets/home/top_section.dart';
import '../widgets/home/lease_item_card.dart';
import '../controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF151617),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: TopSection(),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Lease Again',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    homeController.selectItem('View All');
                    Get.snackbar('Info', 'View All clicked!');
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: homeController.leaseItems.map((item) {
                    return LeaseItemCard(item: item);
                  }).toList(),
                ),
              );
            }),
          ),
          const ItemCard(),
          const SizedBox(height: 20),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeController.selectItem('Add Button');
          Get.snackbar('Info', 'FAB clicked!');
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add, size: 30, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/details/image_section.dart';
import '../widgets/details/price_options_section.dart';
import '../widgets/details/lease_button.dart';
import '../widgets/details/shop_info_section.dart';
import '../widgets/details/dots_indicator.dart';

class ProductDetailScreen extends StatefulWidget {
  final String imagePath;
  final String title;
  final String price;
  final double rating;
  final String location;
  final String status;

  const ProductDetailScreen({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.rating,
    required this.location,
    required this.status,
  });

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _selectedIndex = 0; // Keeps track of the currently selected dot

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true, // Ensures title is centered
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 20, // Adjust font size as needed
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          // Heart Icon (love) on the right
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          ImageSection(
            imagePath: widget.imagePath,
            location: widget.location,
            status: widget.status,
            rating: widget.rating,
          ),
          // Product Info Section (Location, Status, Rating)
          const SizedBox(height: 16.0),
          DotsIndicator(
            dotCount: 3, // You can adjust this number
            selectedIndex: _selectedIndex,
            onDotTapped: (index) {
              setState(() {
                _selectedIndex = index; // Update selected index when tapped
              });
            },
          ),
          const SizedBox(height: 16.0),
          const ShopInfoSection(
            shopName: 'Rafly Rent Shop',
            rating: 4.7,
          ),
          // Title Section (this section is now moved to the AppBar)

          const Spacer(),
          const SizedBox(height: 8.0),
          // Price Options Section
          const PriceOptionsSection(),

          // Spacer to push content upwards, leaving buttons at the bottom

          // Lease Button with "Set Dates"
          LeaseButton(price: widget.price),
        ],
      ),
    );
  }
}

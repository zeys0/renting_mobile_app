import 'package:get/get.dart';
import '../features/main_display/screens/home_screen.dart';
import '../features/product_details/screens/product_detail_screen.dart';
import '../features/shop_details/screens/profile_screen.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => HomeScreen(),
  ),
  GetPage(
    name: '/detail',
    page: () => const ProductDetailScreen(
      imagePath: 'assets/images/items/sample.jpg',
      title: 'Sample Product',
      price: '\$99.99',
      rating: 4.5,
      location: "2.3km",
      status: 'available',
    ),
  ),
  GetPage(
    name: '/profile',
    page: () => ProfileScreen(),
  ),
];

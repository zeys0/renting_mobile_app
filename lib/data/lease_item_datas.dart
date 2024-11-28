import 'package:get/get.dart';
import '../../models/lease_item.dart';

class LeaseItemController extends GetxController {
  // Data lease items disimpan dalam list observable
  var leaseItems = <LeaseItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Load data lease items saat controller diinisialisasi
    loadLeaseItems();
  }

  // Fungsi untuk memuat data dummy lease items
  void loadLeaseItems() {
    leaseItems.assignAll([
      LeaseItem(
        image: 'assets/images/items/google_pixel_tablet.png',
        title: 'Google Pixel Tablet',
        price: '\$15.00 / hr',
        rating: 4.1,
        location: '3.4 km',
        status: 'available',
      ),
      LeaseItem(
        image: 'assets/images/items/sports.png',
        title: 'Base Camp 4-Person Tent',
        price: '\$5.00 / hr',
        rating: 4.9,
        location: '3.4 km',
        status: 'available',
      ),
      LeaseItem(
        image: 'assets/images/items/stainless_pot.png',
        title: 'Pot with lid stainless',
        price: '\$3.00 / hr',
        rating: 4.0,
        location: '3.4 km',
        status: 'available',
      ),
    ]);
  }
}

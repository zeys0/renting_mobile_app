import 'package:get/get.dart';
import '../../../data/lease_item_datas.dart'; // import controller yang memuat data lease items
import '../../../../models/lease_item.dart'; // import model LeaseItem

class HomeController extends GetxController {
  // Akses LeaseItemController
  final LeaseItemController leaseItemController =
      Get.put(LeaseItemController());

  // Variabel observable untuk state
  var selectedItem = ''.obs;

  // Fungsi untuk mengubah nilai selectedItem
  void selectItem(String item) {
    selectedItem.value = item;
  }

  // Getter untuk leaseItems
  List<LeaseItem> get leaseItems => leaseItemController.leaseItems;
}

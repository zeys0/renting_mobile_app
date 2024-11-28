# renting_mobile_app

Link Dribble : https://dribbble.com/shots/23154100-Renting-App-Design-Concept-iOS

# Struktur MVVM

core/
  global_component/
    - Typography.dart
    - ButtonComponent.dart
    - CardComponent.dart
    - AvatarComponent.dart
    - RatingComponent.dart
    - NetworkImageLoader.dart

config/
  - main_app.dart

utils/
  - route_utils.dart

constants/
  - string.dart
  - color.dart
  - images.dart

data/
  product/
    model/
      - Product.dart
    dummy/
      - DummyProduct.dart

  shop/
    model/
      - Shop.dart
    dummy/
      - DummyShop.dart

  review/
    model/
      - Review.dart
    dummy/
      - DummyReview.dart

features/
  home/
    screen/
      - HomeScreen.dart
    widgets/
      - CategoryButtonWidget.dart
      - ProductCardWidget.dart
      - SearchBarWidget.dart
    controller/
      - HomeController.dart

  product_detail/
    screen/
      - ProductDetailScreen.dart
    widgets/
      - ProductImageWidget.dart
      - RentButtonWidget.dart
    controller/
      - ProductDetailController.dart

  shop_detail/
    screen/
      - ShopDetailScreen.dart
    widgets/
      - ReviewCardWidget.dart
      - ShopInfoWidget.dart
    controller/
      - ShopDetailController.dart


# Struktur Proyek Aplikasi "renting mobile app"

1. core/global_component/
Folder ini menyimpan komponen-komponen UI global yang digunakan di berbagai fitur aplikasi:

Typography.dart: Mengatur gaya teks, seperti teks besar untuk nama produk dan harga, serta teks kecil untuk deskripsi dan ulasan. Warna teks disesuaikan agar kontras dengan latar belakang gelap.
ButtonComponent.dart: Menyediakan berbagai gaya tombol, seperti tombol "Lease for $60.00" dengan latar belakang ungu dan tombol "Set Dates" dengan warna abu-abu terang.
CardComponent.dart: Digunakan untuk menampilkan kartu produk dengan gambar di atas dan informasi di bawah, seperti nama produk, harga, dan jarak.
AvatarComponent.dart: Komponen avatar bulat untuk menampilkan gambar profil toko atau pengguna.
RatingComponent.dart: Menampilkan bintang ulasan dengan warna kuning, seperti nilai 4.7 pada detail toko.
NetworkImageLoader.dart: Mengelola pengambilan gambar dari URL dengan placeholder jika terjadi kegagalan.
2. config/main_app.dart
Berisi konfigurasi utama aplikasi, seperti pengaturan tema gelap, warna aksen, dan navigasi awal (ke halaman Home atau Onboarding sesuai status pengguna).

3. utils/route_utils.dart
Menyimpan pengaturan rute aplikasi. Contohnya:

Rute ke HomeScreen untuk daftar produk.
Rute ke ProductDetailScreen untuk detail produk tertentu.
Rute ke ShopDetailScreen untuk melihat informasi detail toko.
Rute ini dilengkapi transisi yang halus untuk meningkatkan pengalaman pengguna.

4. constants/
Folder ini menyimpan nilai-nilai statis agar pengelolaan lebih terpusat:

string.dart: Menyimpan teks seperti "Lease for $60.00", "Set Dates", "Available Now", dan lainnya.
color.dart: Berisi definisi warna, seperti warna utama aplikasi (ungu), warna aksen (hijau untuk tombol), dan latar belakang gelap.
images.dart: Menyimpan path ikon kategori (sepeda, elektronik) dan avatar toko.
5. data/
Folder ini berisi model data dan dummy data untuk keperluan pengujian UI:

product/:

model/Product.dart: Model data untuk produk, seperti nama, harga, rating, dan URL gambar.
dummy/DummyProduct.dart: Berisi data dummy produk, misalnya "Base Camp Tent" dengan harga tertentu.
shop/:

model/Shop.dart: Model data toko, seperti nama, lokasi, rating, dan URL avatar.
dummy/DummyShop.dart: Berisi data dummy toko, seperti "Harrison's Shop".
review/:

model/Review.dart: Model data ulasan, seperti penulis, teks ulasan, dan rating.
dummy/DummyReview.dart: Berisi data ulasan dummy dari beberapa pengguna.
6. features/
Folder ini berisi implementasi setiap fitur utama dalam aplikasi:

Home (Halaman Utama)
screen/HomeScreen.dart: Menampilkan daftar produk yang tersedia dengan kategori di bagian atas, kotak pencarian, dan kartu produk.
widgets/:
CategoryButtonWidget.dart: Tombol kategori seperti "Sports", "Electronics", dan lainnya.
ProductCardWidget.dart: Kartu produk berisi gambar, nama, harga, jarak, dan rating.
SearchBarWidget.dart: Kotak pencarian untuk mencari produk.
Product Detail (Detail Produk)
screen/ProductDetailScreen.dart: Menampilkan informasi detail produk, seperti gambar besar, harga per jam, harga per bulan, dan tombol untuk menyewa.
widgets/:
ProductImageWidget.dart: Menampilkan gambar produk dalam ukuran besar.
RentButtonWidget.dart: Tombol "Lease for $60.00" dengan desain menarik.
Shop Detail (Detail Toko)
screen/ShopDetailScreen.dart: Menampilkan informasi toko, seperti avatar, nama toko, lokasi, rating, dan daftar ulasan.
widgets/:
ReviewCardWidget.dart: Menampilkan ulasan dari pengguna, seperti nama, rating, dan komentar.
ShopInfoWidget.dart: Informasi dasar toko, seperti nama dan jumlah item yang tersedia.
Controller (Logika Fitur)
Setiap fitur memiliki controller, misalnya:

HomeController.dart: Mengelola data produk yang ditampilkan di halaman utama.
ProductDetailController.dart: Mengambil data detail produk dari server atau dummy data.
ShopDetailController.dart: Mengelola data toko dan ulasan yang ditampilkan.
Pemetaan Desain ke Fitur
Layar Home (Kiri pada desain):

Pencarian barang melalui kategori dan kotak pencarian.
Menampilkan daftar barang dengan gambar, nama, harga, jarak, dan rating.
Layar Detail Produk (Tengah pada desain):

Informasi detail produk, seperti harga per jam/bulan dan tombol "Set Dates" untuk memilih waktu sewa.
Layar Detail Toko (Kanan pada desain):

Informasi toko, seperti nama, avatar, lokasi, rating, dan ulasan pengguna.




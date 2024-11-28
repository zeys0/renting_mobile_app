# renting_mobile_app

Link Dribble : https://dribbble.com/shots/23154100-Renting-App-Design-Concept-iOS

![original-322e0a75fccb98c75ec66f1ac224f880](https://github.com/user-attachments/assets/f7cfd8d1-4e37-4370-9c34-a6d8719f19ae)



# Struktur MVVM

lib/
├── main.dart
├── core/
│   ├── global_component/
│   │   ├── Typography.dart
│   │   ├── ButtonComponent.dart
│   │   ├── CardComponent.dart
│   │   ├── AvatarComponent.dart
│   │   ├── RatingComponent.dart
│   │   └── NetworkImageLoader.dart
│   ├── config/
│   │   └── main_app.dart
│   ├── utils/
│   │   └── route_utils.dart
│   └── constants/
│       ├── string.dart
│       ├── color.dart
│       └── images.dart
├── data/
│   ├── product/
│   │   ├── model/
│   │   │   └── Product.dart
│   │   └── dummy/
│   │       └── DummyProduct.dart
│   ├── shop/
│   │   ├── model/
│   │   │   └── Shop.dart
│   │   └── dummy/
│   │       └── DummyShop.dart
│   └── review/
│       ├── model/
│       │   └── Review.dart
│       └── dummy/
│           └── DummyReview.dart
├── features/
│   ├── home/
│   │   ├── screen/
│   │   │   └── HomeScreen.dart
│   │   ├── widgets/
│   │   │   ├── CategoryButtonWidget.dart
│   │   │   ├── ProductCardWidget.dart
│   │   │   └── SearchBarWidget.dart
│   │   └── controller/
│   │       └── HomeController.dart
│   ├── product_detail/
│   │   ├── screen/
│   │   │   └── ProductDetailScreen.dart
│   │   ├── widgets/
│   │   │   ├── ProductImageWidget.dart
│   │   │   └── RentButtonWidget.dart
│   │   └── controller/
│   │       └── ProductDetailController.dart
│   └── shop_detail/
│       ├── screen/
│       │   └── ShopDetailScreen.dart
│       ├── widgets/
│       │   ├── ReviewCardWidget.dart
│       │   └── ShopInfoWidget.dart
│       └── controller/
│           └── ShopDetailController.dart


# Struktur Proyek Aplikasi "renting mobile app"

Berikut adalah struktur folder proyek aplikasi penyewaan produk beserta deskripsinya:

---

## **1. core/global_component/**  
Berisi komponen UI global yang digunakan di berbagai fitur aplikasi:

- **`Typography.dart`**  
  Mengatur gaya teks, seperti:  
  - Teks besar untuk nama produk dan harga.  
  - Teks kecil untuk deskripsi dan ulasan.  
  Warna teks disesuaikan agar kontras dengan latar belakang gelap.

- **`ButtonComponent.dart`**  
  Menyediakan berbagai gaya tombol, seperti:  
  - Tombol **"Lease for $60.00"** dengan latar belakang ungu.  
  - Tombol **"Set Dates"** dengan warna abu-abu terang.

- **`CardComponent.dart`**  
  Digunakan untuk menampilkan kartu produk dengan gambar di atas dan informasi di bawah, seperti nama produk, harga, dan jarak.

- **`AvatarComponent.dart`**  
  Komponen avatar berbentuk bulat untuk menampilkan gambar profil toko atau pengguna.

- **`RatingComponent.dart`**  
  Menampilkan bintang ulasan (contoh: nilai 4.7) dengan warna kuning.

- **`NetworkImageLoader.dart`**  
  Mengelola pengambilan gambar dari URL, termasuk placeholder jika terjadi kegagalan.

---

## **2. config/main_app.dart**  
Berisi konfigurasi utama aplikasi, seperti:  
- **Pengaturan tema**, termasuk tema gelap dan warna aksen.  
- **Navigasi awal** berdasarkan status pengguna (misalnya, ke halaman **Home** atau **Onboarding**).

---

## **3. utils/route_utils.dart**  
Menyimpan pengaturan rute aplikasi, lengkap dengan transisi animasi yang halus.  
Contoh rute:
- **HomeScreen**: Menampilkan daftar produk.  
- **ProductDetailScreen**: Menampilkan detail produk tertentu.  
- **ShopDetailScreen**: Menampilkan informasi detail toko.

---

## **4. constants/**  
Berisi nilai-nilai statis untuk pengelolaan terpusat:

- **`string.dart`**  
  Menyimpan teks statis seperti:
  - **"Lease for $60.00"**, **"Set Dates"**, dan **"Available Now"**.

- **`color.dart`**  
  Menyimpan definisi warna seperti:
  - Warna utama aplikasi (ungu).  
  - Warna aksen (hijau untuk tombol) dan latar belakang gelap.

- **`images.dart`**  
  Menyimpan path ikon kategori (sepeda, elektronik) dan avatar toko.

---

## **5. data/**  
Berisi model data dan dummy data untuk pengujian UI:

### **product/**
- **`model/Product.dart`**  
  Model data untuk produk, seperti:  
  - Nama, harga, rating, dan URL gambar.

- **`dummy/DummyProduct.dart`**  
  Berisi data dummy produk (contoh: **"Base Camp Tent"** dengan harga tertentu).

### **shop/**
- **`model/Shop.dart`**  
  Model data untuk toko, seperti:  
  - Nama, lokasi, rating, dan URL avatar.

- **`dummy/DummyShop.dart`**  
  Berisi data dummy toko (contoh: **"Harrison's Shop"**).

### **review/**
- **`model/Review.dart`**  
  Model data ulasan, seperti:  
  - Penulis, teks ulasan, dan rating.

- **`dummy/DummyReview.dart`**  
  Berisi data dummy ulasan dari beberapa pengguna.

---

## **6. features/**  
Berisi implementasi fitur utama aplikasi, lengkap dengan widget dan logika masing-masing fitur.

### **Home (Halaman Utama)**  
- **`screen/HomeScreen.dart`**  
  Menampilkan daftar produk yang tersedia, kategori di bagian atas, kotak pencarian, dan kartu produk.

- **widgets/**  
  - **`CategoryButtonWidget.dart`**: Tombol kategori seperti **"Sports"**, **"Electronics"**, dll.  
  - **`ProductCardWidget.dart`**: Kartu produk berisi gambar, nama, harga, jarak, dan rating.  
  - **`SearchBarWidget.dart`**: Kotak pencarian untuk mencari produk.

---

### **Product Detail (Detail Produk)**  
- **`screen/ProductDetailScreen.dart`**  
  Menampilkan detail produk, seperti:  
  - Gambar besar, harga per jam/bulan, dan tombol **"Set Dates"** untuk memilih waktu sewa.

- **widgets/**  
  - **`ProductImageWidget.dart`**: Menampilkan gambar produk dalam ukuran besar.  
  - **`RentButtonWidget.dart`**: Tombol **"Lease for $60.00"** dengan desain menarik.

---

### **Shop Detail (Detail Toko)**  
- **`screen/ShopDetailScreen.dart`**  
  Menampilkan informasi toko, seperti avatar, nama toko, lokasi, rating, dan ulasan pengguna.

- **widgets/**  
  - **`ReviewCardWidget.dart`**: Menampilkan ulasan pengguna, seperti nama, rating, dan komentar.  
  - **`ShopInfoWidget.dart`**: Informasi dasar toko, seperti nama dan jumlah item yang tersedia.

---

### **Controller (Logika Fitur)**  
Setiap fitur memiliki controller untuk mengelola data:  
- **`HomeController.dart`**: Mengelola data produk di halaman utama.  
- **`ProductDetailController.dart`**: Mengambil data detail produk dari server atau dummy data.  
- **`ShopDetailController.dart`**: Mengelola data toko dan ulasan.

---

## **Pemetaan Desain ke Fitur**
1. **Layar Home (Halaman Utama)**  
   - Menyediakan fitur pencarian barang melalui kategori atau kotak pencarian.  
   - Menampilkan daftar barang (gambar, nama, harga, jarak, dan rating).

2. **Layar Detail Produk**  
   - Menampilkan informasi detail produk, seperti harga per jam/bulan, gambar besar, dan tombol **"Set Dates"**.

3. **Layar Detail Toko**  
   - Menampilkan informasi toko, seperti avatar, nama, lokasi, rating, dan ulasan pengguna.




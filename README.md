# Proyek Profil Pribadi H1D023107_Tugas6

Proyek ini adalah aplikasi profil pribadi yang dibuat dengan Flutter. Aplikasi ini menampilkan identitas, biografi, dan ambisi pemilik profil dengan tampilan UI pastel yang *fresh* dan *cute*.

Proyek ini memenuhi tugas awal dengan memiliki dua file utama di dalam folder `ui`:
1.  `ui/home_page.dart`: Halaman sambutan yang berfungsi sebagai titik awal navigasi.
2.  `ui/profile_page.dart`: Halaman dinamis yang menampilkan data profil.

## Penjelasan Proses Passing Data

Meskipun aplikasi ini menampilkan data statis (data profil), proses *passing data* (pengiriman data) tetap didemonstrasikan saat berpindah dari `home_page.dart` ke `profile_page.dart`.

Proses ini menggunakan metode **Constructor-based Navigation**.

### 1. Pengiriman Data (dari `home_page.dart`)

Data dikirim saat pengguna menekan tombol "Lihat Profilku".

1.  **Data Disiapkan:** Kami menyiapkan data yang akan dikirim. Dalam kasus ini, sebuah string `nama`.
2.  **Navigasi dan Pengiriman:** Perintah `Navigator.push` digunakan untuk berpindah halaman. Saat memanggil halaman `ProfilePage`, kita memasukkan data (`nama`) ke dalam *constructor* kelas tersebut.

    ```dart
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProfilePage(
          nama: "Isma Fadhilatizzahra",
        ),
      ),
    );
    ```

### 2. Penerimaan Data (di `profile_page.dart`)

Halaman `ProfilePage` disiapkan untuk menerima data tersebut.

1.  **Deklarasi Variabel:** Kelas `ProfilePage` mendeklarasikan variabel `final` untuk "menangkap" data yang akan diterima.

    ```dart
    class ProfilePage extends StatelessWidget 
      final String nama;
    ```

2.  **Constructor:** Sebuah *constructor* dibuat dengan parameter `required` untuk menerima data yang dikirim oleh `Navigator` dari halaman sebelumnya.

    ```dart
    const ProfilePage({
      Key? key,
      required this.nama,
    }) : super(key: key);
    ```

### 3. Penggunaan Data

Setelah data diterima dan disimpan dalam variabel `nama`, data tersebut siap digunakan di dalam *method* `build` untuk ditampilkan kepada pengguna.

```dart
Text(
  nama,
  style: Theme.of(context).textTheme.headlineSmall,
  textAlign: TextAlign.center,
),
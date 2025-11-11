# README Proyek H1D023107_Tugas6

Proyek ini adalah aplikasi Flutter sederhana yang mendemonstrasikan cara mengambil input dari pengguna melalui form dan mengirimkan (passing) data tersebut ke halaman lain untuk ditampilkan.

## Penjelasan Proses Passing Data

Proses *passing data* (pengiriman data) dari halaman form (`form_data.dart`) ke halaman tampilan (`tampil_data.dart`) dilakukan menggunakan metode **Constructor-based Navigation**.

Berikut adalah alur prosesnya:

### 1. Pengiriman Data (dari `form_data.dart`)

Data dikirim saat pengguna menekan tombol "Simpan".

1.  **Pengambilan Data:** Data dari `TextField` diambil menggunakan `TextEditingController`.
    ```dart
    String nama = _namaController.text;
    String nim = _nimController.text;
    int tahunLahir = int.tryParse(_tahunLahirController.text) ?? 0;
    ```
2.  **Navigasi dan Pengiriman:** Perintah `Navigator.push` digunakan untuk berpindah halaman. Saat memanggil halaman `TampilData`, kita memasukkan data (`nama`, `nim`, `tahunLahir`) ke dalam *constructor* kelas tersebut.
    ```dart
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TampilData(
          nama: nama,
          nim: nim,
          tahunLahir: tahunLahir,
        ),
      ),
    );
    ```

### 2. Penerimaan Data (di `tampil_data.dart`)

Halaman `TampilData` disiapkan untuk menerima data tersebut.

1.  **Deklarasi Variabel:** Kelas `TampilData` (yang merupakan `StatelessWidget`) mendeklarasikan variabel `final` untuk menyimpan data yang akan diterima.
    ```dart
    class TampilData extends StatelessWidget {
      final String nama;
      final String nim;
      final int tahunLahir;
    ```
2.  **Constructor:** Sebuah *constructor* dibuat dengan parameter `required` untuk "menangkap" data yang dikirim oleh `Navigator` dari halaman sebelumnya.
    ```dart
    const TampilData({
      Key? key,
      required this.nama,
      required this.nim,
      required this.tahunLahir,
    }) : super(key: key);
    ```

### 3. Penggunaan Data

Setelah data diterima dan disimpan dalam variabel kelas (`nama`, `nim`, `tahunLahir`), data tersebut siap digunakan di dalam *method* `build` untuk ditampilkan ke pengguna atau diolah lebih lanjut (seperti perhitungan umur).

```dart
int tahunSekarang = DateTime.now().year;
int umur = tahunSekarang - tahunLahir;

Text(
  'Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun',
  ...
),
```
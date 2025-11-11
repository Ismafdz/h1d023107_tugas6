import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {

  final String nama;
  final String nim;
  final int tahunLahir;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int tahunSekarang = DateTime.now().year;
    int umur = tahunSekarang - tahunLahir;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perkenalan'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
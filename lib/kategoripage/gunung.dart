import 'package:flutter/material.dart';
import 'package:final_uts_v3422026/page/rating_tertinggi.dart';

class GunungPage extends StatelessWidget {
  final Gunung gunung;

  const GunungPage({Key? key, required this.gunung}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gunung.nama),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              gunung.gambar,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Informasi Gunung:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Nama: ${gunung.nama}'),
            Text('Ketinggian: ${gunung.ketinggian}'),
            // Add more information as needed
          ],
        ),
      ),
    );
  }
}

class Gunung {
  final String nama;
  final double ketinggian;
  final String gambar;

  Gunung({
    required this.nama,
    required this.ketinggian,
    required this.gambar,
  });
}

List<Gunung> gunungList = [
  Gunung(
    nama: 'Gunung Rinjani',
    ketinggian: 3726,
    gambar: 'assets/gunung_rinjani.jpg',
  ),
  Gunung(
    nama: 'Gunung Semeru',
    ketinggian: 3676,
    gambar: 'assets/gunung_semeru.jpg',
  ),
  Gunung(
    nama: 'Gunung Kerinci',
    ketinggian: 3805,
    gambar: 'assets/gunung_kerinci.jpg',
  ),
  // Add other mountains as needed
];

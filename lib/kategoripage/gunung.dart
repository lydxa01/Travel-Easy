import 'package:flutter/material.dart';

class GunungPage extends StatelessWidget {
  final Gunung gunung;

  GunungPage({required this.gunung});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gunung di Indonesia'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Gunung di Indonesia - ${gunung.name}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1, // Since you're displaying a single mountain
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: Image.asset(
                      gunung.imagePath,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(gunung.name),
                    subtitle: Text('Ketinggian: ${gunung.height} meter'),
                    onTap: () {
                      // Aksi yang akan dilakukan saat gunung diklik
                      print("Anda mengklik ${gunung.name}");
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Gunung {
  final String name;
  final int height;
  final String imagePath;

  Gunung({
    required this.name,
    required this.height,
    required this.imagePath,
  });
}

List<Gunung> gunungList = [
  Gunung(
    name: 'Gunung Rinjani',
    height: 3726,
    imagePath: 'assets/gunung_rinjani.jpg',
  ),
  Gunung(
    name: 'Gunung Semeru',
    height: 3676,
    imagePath: 'assets/gunung_semeru.jpg',
  ),
  Gunung(
    name: 'Gunung Kerinci',
    height: 3805,
    imagePath: 'assets/gunung_kerinci.jpg',
  ),
  // Tambahkan gunung lain sesuai kebutuhan
];

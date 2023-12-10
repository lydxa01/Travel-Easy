import 'package:flutter/material.dart';

class GunungPage extends StatelessWidget {
  final String kategori;

  GunungPage({required this.kategori});

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
              'Gunung di Indonesia - $kategori',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: gunungList.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: Image.asset(
                      gunungList[index].imagePath,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(gunungList[index].name),
                    subtitle:
                        Text('Ketinggian: ${gunungList[index].height} meter'),
                    onTap: () {
                      // Aksi yang akan dilakukan saat gunung diklik
                      print("Anda mengklik ${gunungList[index].name}");
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

import 'package:final_uts_v3422026/page/bayar.dart';
import 'package:flutter/material.dart';

class ViewDetail extends StatelessWidget {
  final String title;
  final String description;
  final double rating;
  final List<String> comments;

  ViewDetail({
    required this.title,
    required this.description,
    required this.rating,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0), // Sesuaikan jarak sesuai kebutuhan
            // Tambahkan gambar di bawah judul
            Image.asset(
              'assets/bali.jpg', // Sesuaikan dengan path gambar Anda
              width: double.infinity, // Agar gambar mengisi lebar layar
              height: 200.0, // Sesuaikan tinggi gambar sesuai kebutuhan
              fit: BoxFit
                  .cover, // Atur agar gambar mencakup wadah dengan proporsi yang benar
            ),
            SizedBox(height: 16.0), // Sesuaikan jarak sesuai kebutuhan
            Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            // Tambahkan deskripsi paket travel
            Text(
              'Deskripsi Paket Travel:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Deskripsi paket travel akan ditampilkan di sini.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Rating: $rating/5',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            _buildComments(),
            SizedBox(height: 16.0),
            // Letakkan tombol "Bayar" di bawah tengah
            Expanded(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BayarPage()),
                    );
                  },
                  child: Text('Bayar'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk menampilkan kolom komentar
  Widget _buildComments() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Komentar:',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        // Menampilkan komentar-komentar
        for (String comment in comments)
          Text(
            '- $comment',
            style: TextStyle(fontSize: 16.0),
          ),
      ],
    );
  }
}

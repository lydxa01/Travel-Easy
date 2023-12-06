import 'package:flutter/material.dart';

class ViewDetail extends StatelessWidget {
  final String title;
  final String description;

  // Tambahkan variabel untuk rating, komentar, dan informasi harga
  final double rating; // Misalnya, menggunakan skala 1-5
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
            SizedBox(height: 16.0),
            Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Rating: $rating/5',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            _buildComments(),
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

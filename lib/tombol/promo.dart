import 'package:final_uts_v3422026/tombol/viewdetail.dart';
import 'package:flutter/material.dart';

class Promo extends StatefulWidget {
  const Promo({super.key});

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Promo'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildPromoCard(
                title: 'Bali Paradise',
                image: 'assets/bali.jpg',
                description:
                    'Explore the beauty of Bali with its stunning beaches and cultural richness.',
                rating: 4.5,
                comments: ['Amazing experience!', 'Beautiful scenery.'],
              ),
              SizedBox(height: 16.0),
              _buildPromoCard(
                title: 'Labuan Bajo Adventure',
                image: 'assets/lajo.jpg',
                description:
                    'Embark on an adventurous journey in Labuan Bajo, known for its exotic wildlife and breathtaking landscapes.',
                rating: 4.0,
                comments: ['Loved the boat tour!', 'Great diving spots.'],
              ),
              SizedBox(height: 16.0),
              _buildPromoCard(
                title: 'Karimun Jawa Bliss',
                image: 'assets/kaja.jpg',
                description:
                    'Experience the bliss of Karimun Jawa, a hidden gem with pristine beaches and vibrant marine life.',
                rating: 4.8,
                comments: ['Paradise on Earth!', 'Crystal clear waters.'],
              ),
              SizedBox(height: 16.0),
              _buildPromoCard(
                title: 'Pulau Seribu Getaway',
                image: 'assets/puse.jpg',
                description:
                    'Escape to the tranquility of Pulau Seribu, a perfect getaway with a thousand islands.',
                rating: 4.3,
                comments: ['Relaxing vacation!', 'Delicious seafood.'],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPromoCard({
    required String title,
    required String image,
    required String description,
    required double rating,
    required List<String> comments,
  }) {
    return Card(
      elevation: 5.0,
      child: Column(
        children: [
          Image.asset(
            image,
            height: 150.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the ViewDetail page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewDetail(
                    title: title,
                    description: description,
                    rating: rating,
                    comments: comments,
                  ),
                ),
              );
            },
            child: Text('View Details'),
          ),
        ],
      ),
    );
  }

  void main() {
    runApp(MaterialApp(
      home: Promo(),
    ));
  }
}

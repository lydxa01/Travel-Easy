import 'package:flutter/material.dart';
import 'package:final_uts_v3422026/resources/large_text.dart';

class SearchFilterPage extends StatefulWidget {
  const SearchFilterPage({Key? key}) : super(key: key);

  @override
  _SearchFilterPageState createState() => _SearchFilterPageState();
}

class _SearchFilterPageState extends State<SearchFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search and Filter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Search and Filter Content Goes Here'),
            // Add your search and filter widgets here
          ],
        ),
      ),
    );
  }
}

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TouristSpotCategory(category: 'Gunung')),
                );
              },
              child: Text('Gunung'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TouristSpotCategory(category: 'Danau')),
                );
              },
              child: Text('Danau'),
            ),
            // Add more category buttons as needed
          ],
        ),
      ),
    );
  }
}

class TouristSpotCategory extends StatelessWidget {
  final String category;

  const TouristSpotCategory({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Center(
        child: LText(text: 'Tourist Spots related to $category'),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: CategoryPage(),
    ),
  );
}

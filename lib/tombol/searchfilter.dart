import 'package:flutter/material.dart';
import 'package:final_uts_v3422026/resources/large_text.dart';

class SearchFilterPage extends StatefulWidget {
  const SearchFilterPage({Key? key}) : super(key: key);

  @override
  _SearchFilterPageState createState() => _SearchFilterPageState();
}

class _SearchFilterPageState extends State<SearchFilterPage> {
  // Create a text controller to retrieve the current value of the TextField
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search and Filter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Add the search TextField here
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Type to search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text(
              'Travel Destinations',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: [
                  TravelDestination(
                    name: 'Gunung',
                    description:
                        'Explore beautiful mountains and hiking trails.',
                  ),
                  TravelDestination(
                    name: 'Pantai',
                    description:
                        'Relax on the sunny beaches and enjoy water sports.',
                  ),
                  TravelDestination(
                    name: 'Sejarah',
                    description:
                        'Discover historical sites and cultural heritage.',
                  ),
                  TravelDestination(
                    name: 'Danau',
                    description: 'Visit serene lakes for boating and fishing.',
                  ),
                  TravelDestination(
                    name: 'Bukit',
                    description: 'Hike up scenic hills for breathtaking views.',
                  ),
                  TravelDestination(
                    name: 'Curug',
                    description: 'Chase waterfalls and enjoy nature\'s beauty.',
                  ),
                  TravelDestination(
                    name: 'Goa',
                    description:
                        'Explore mysterious caves and underground wonders.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    _searchController.dispose();
    super.dispose();
  }
}

class TravelDestination extends StatelessWidget {
  final String name;
  final String description;

  TravelDestination({
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(name),
        subtitle: Text(description),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: SearchFilterPage(),
    ),
  );
}

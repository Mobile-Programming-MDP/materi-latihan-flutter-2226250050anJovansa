import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/models/candi.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  //TODO: 1. Deklarasi variable yang dibutuhkan
  List<Candi> _FilteredCandis = candiList;
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 2. Buat appbar dengan judul pencarian candi
      appBar: AppBar(
        title: const Text('Pencarian Candi'),
      ),
      //TODO: 3. Buat body berupa column
      body: Column(
        children: [
          //TODO: 4. Buat Textfield pencarian sebagai anak dari column
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.deepPurple[50],
              ),
              child: const TextField(
                autofocus: false,
                //TODO: 6. Implementasi fitur pencarian
                decoration: InputDecoration(
                  hintText: 'Cari candi ...',
                  prefixIcon: Icon(Icons.search),
                  //TODO: 7. Implementasi pengosongan input
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
            ),
          ),
          //TODO: 5. Buat Listview hasil pencarian sebagai anak dari column
          Expanded(
            child: ListView.builder(
              itemCount: _FilteredCandis.length,
              itemBuilder: (context, index) {
                final Candi = _FilteredCandis[index];
                //TODO: 8. Implementasi GestureDetection dan Hero Animation
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            Candi.imageAsset,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Candi.name,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(Candi.location)
                          ],
                        ),
                      )
                    ],
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

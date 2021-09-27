import 'package:base_interview/names.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  final searchController = TextEditingController();
  final searchList = List.from(names);

  void search(String searchText) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search Screen')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              textInputAction: TextInputAction.search,
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Pesquise pelo nome',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
            ListView.builder(
              itemCount: searchList.length,
              itemBuilder: (_, index) {
                final item = searchList[index];
                return SearchItemListWidget(item);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchItemListWidget extends StatelessWidget {
  final String item;
  const SearchItemListWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(item));
  }
}

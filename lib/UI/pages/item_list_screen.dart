import 'package:flutter/material.dart';
import '../../model/model.dart';
import '../widgets/product_card.dart';

class ItemListScreen extends StatelessWidget {
  final String title;

  const ItemListScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 77,
        backgroundColor: const Color(0xFF7650FF),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Center(
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xFF7650FF),
                  ),
                ),
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.05,
              ),
            ),
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Center(
                child: Icon(
                  Icons.menu,
                  color: Color(0xFF7650FF),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: _ItemGrid(
                items: items,
                category: title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemGrid extends StatelessWidget {
  final String category;
  final Map<String, dynamic> items;

  const _ItemGrid({required this.items, required this.category});

  @override
  Widget build(BuildContext context) {
    // Sort items by popularity (assuming 'rating' indicates popularity)
    final sortItem = items.entries
        .where((entry) => entry.value['category'] == category)
        .toList();

    // // Take only the top 2 items
    // final topItems = sortedItems.take(4).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 165 / 190,
          crossAxisSpacing: 18.0,
          mainAxisSpacing: 35.0,
        ),
        itemCount: sortItem.length,
        itemBuilder: (context, index) {
          final item = sortItem[index].value;
          return ProductCard(
            image: item['image'],
            name: item['name'],
            rating: item['rating'],
            price: item['price'],
            description: item['description'],
            category: item['category'],
          );
        },
      ),
    );
  }
}

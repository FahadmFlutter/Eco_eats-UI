import 'package:flutter/material.dart';

import '../../model/model.dart';
import '../widgets/product_card.dart';
import '../widgets/rating_bar_widget.dart';

class DetailsScreen extends StatelessWidget {
  final String img;
  final String name;
  final double rating;
  final num price;
  final String description;
  final String category;

  const DetailsScreen({
    super.key,
    required this.img,
    required this.name,
    required this.rating,
    required this.price,
    required this.description,
    required this.category,
  });

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
            const Text(
              'Details',
              textAlign: TextAlign.center,
              style: TextStyle(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 278.43,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                  color: Color(0xFF7951FF),
                  image: DecorationImage(
                      image: AssetImage("assets/img/bg_image.png"),
                      fit: BoxFit.cover)),
              child: Center(
                child: Container(
                  width: 229,
                  height: 229,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24.50,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child:
                        RatingBarWidget(rating: rating, size: 20, hPadding: 2),
                  ),
                  Text.rich(
                    maxLines: 1,
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '₹ $price',
                          style: const TextStyle(
                            color: Color(0xFF7650FF),
                            fontSize: 21.48,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const TextSpan(
                          text: '/kg',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21.48,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  const Text(
                    'Product Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.50,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.50,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  const Text(
                    'Related Products',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.50,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  _ItemGrid(
                    items: items,
                    category: category,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // width: double.infinity,
        height: 108,
        padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 22),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x2F000000),
              blurRadius: 10,
              offset: Offset(0, -0),
              spreadRadius: -5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Prize',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                  ),
                ),
                const SizedBox(height: 8),
                 Text.rich(
                  maxLines: 1,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '₹ $price',
                        style: const TextStyle(
                          color: Color(0xFF7650FF),
                          fontSize: 21.48,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const TextSpan(
                        text: '/kg\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21.48,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 201,
              height: 44,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: ShapeDecoration(
                color: const Color(0xFF7650FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Center(
                child: Text(
                  'Add to Cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFEBEBEB),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.04,
                  ),
                ),
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
        .toList()
      ..sort((a, b) => b.value['popularity'].compareTo(a.value['popularity']));

    // // Take only the top 2 items
    final topItems = sortItem.take(4).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 165 / 190,
          crossAxisSpacing: 18.0,
          mainAxisSpacing: 35.0,
        ),
        itemCount: topItems.length,
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

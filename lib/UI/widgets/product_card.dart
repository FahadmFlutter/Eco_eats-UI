import 'package:eco_eats/UI/pages/details_screen.dart';
import 'package:eco_eats/UI/widgets/rating_bar_widget.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final double rating;
  final num price;
  final String description;
  final String category;

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.rating,
    required this.price,
    required this.description,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(
                img: image,
                name: name,
                rating: rating,
                price: price,
                description: description,
                category: category,
              ),
            ));
      },
      child: Container(
        padding: const EdgeInsets.all(6),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.63),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x2F000000),
              blurRadius: 30,
              offset: Offset(0, 10),
              spreadRadius: -8,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 86.47,
              decoration: const ShapeDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/bg_image.png'),
                    fit: BoxFit.cover),
                color: Color(0xFFC3B2FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16.63),
                  ),
                ),
              ),
              child: Stack(
                // alignment: Alignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      // item['image'],
                      image,
                      fit: BoxFit.contain,
                      height: 90,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8),
                      child: Container(
                        width: 26.61,
                        height: 26.61,
                        decoration: const ShapeDecoration(
                          color: Color(0x497650FF),
                          shape: OvalBorder(),
                        ),
                        child: const Icon(
                          Icons.favorite_border_rounded,
                          color: Color(0xFF7650FF),
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              // item['name'],
              name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13.35,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            RatingBarWidget(rating: rating, size: 12, hPadding: 1),
            Text.rich(
              maxLines: 1,
              TextSpan(
                children: [
                  TextSpan(
                    // text: '₹ ${item['price'].toStringAsFixed(2)}',
                    // text: '₹ ${item['price']}',
                    text: '₹ $price',
                    style: const TextStyle(
                      color: Color(0xFF7650FF),
                      fontSize: 12.48,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text: '/kg\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.48,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Transform.translate(
                offset: const Offset(6, 6),
                child: Container(
                  width: 43.58,
                  height: 41.91,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(color: Color(0xFF7650FF)),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

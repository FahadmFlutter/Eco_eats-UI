import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class RatingBarWidget extends StatelessWidget {
  final double rating;
  final double size;
  final double hPadding;
  const RatingBarWidget({super.key, required this.rating, required this.size, required this.hPadding});

  @override
  Widget build(BuildContext context) {
    return  RatingBar(
      initialRating: double.parse(rating.toString()),
      minRating: 0,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      ignoreGestures: true,
      itemSize: size,
      itemPadding: EdgeInsets.symmetric(horizontal: hPadding),
      // itemBuilder: (context, _) => const Icon(
      //   Icons.star,
      //   color: Colors.amber,
      // ),
      unratedColor: Colors.grey.shade300,
      onRatingUpdate: (rating) {
        print(rating);
      },
      ratingWidget: RatingWidget(
        full: const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        half: const Icon(
          Icons.star_border,
          color: Colors.amber,
        ),
        empty: const Icon(
          Icons.star_border,
          color: Colors.amber,
        ),
      ),
    );
  }
}

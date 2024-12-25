import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final bool isFilled;
  final bool isBold;

  const MyButton(
      {super.key,
      required this.text,
      required this.isFilled,
      required this.isBold});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 235,
      height: 58,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 13),
      clipBehavior: Clip.antiAlias,
      decoration: isFilled == true
          ? ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            )
          : ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: isFilled == true ? const Color(0xFF7650FF) : Colors.white,
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: isBold == true ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

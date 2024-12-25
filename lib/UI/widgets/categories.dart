import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String img;
  final String title;
  const Categories({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63.05,
      height: 98,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: SizedBox(
              width: 63.05,
              height: 98,
              child: Stack(
                children: [
                  Positioned(
                    left: -0,
                    top: 48.62,
                    child: Container(
                      width: 63.05,
                      height: 49.38,
                      padding: const EdgeInsets.only(
                        top: 16.71,
                        left: 6.84,
                        right: 7.22,
                        bottom: 15.67,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.19),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x2F000000),
                            blurRadius: 30,
                            offset: Offset(0, -5),
                            spreadRadius: -2,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.black
                                .withOpacity(0.550000011920929),
                            fontSize: 12.91,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 63.05,
                    height: 63.05,
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(),
                    ),
                  ),
                  Positioned(
                    left: 5.32,
                    top: 5.32,
                    child: Container(
                      width: 52.42,
                      height: 52.42,
                      decoration: ShapeDecoration(
                        color: Color(0xFFC3B2FF),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left:12,
            top: 12,
            child: Container(
              width: 40,
              height: 40,
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../../model/model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3E1E9),
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
              'Cart',
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              CartList(
                items: items,
              ),
              const SizedBox(height: 34,),
              Container(
                width: double.infinity,
                height: 248,
                padding: const EdgeInsets.only(top: 19, left: 7, right: 7, bottom: 27),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 52,
                      padding: const EdgeInsets.only(left: 37.29, right: 0.37, bottom: 0.29),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFFE3E1E9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26.74),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Enter Promo Code',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.28999999165534973),
                              fontSize: 16.05,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                          const SizedBox(width: 55.71),
                          Container(
                            width: 101.63,
                            height: double.infinity,
                            padding: const EdgeInsets.only(
                              top: 16.05,
                              left: 28.53,
                              right: 28.10,
                              bottom: 15.66,
                            ),
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(color: Color(0xFF805EFD)),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Apply',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.05,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.08,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sub Total',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.28999999165534973),
                                fontSize: 16.05,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              '₹193.0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery Charges',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.28999999165534973),
                                fontSize: 16.05,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              '₹20.0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.28999999165534973),
                                fontSize: 16.05,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              '₹0.0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.black.withOpacity(0.28999999165534973),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Final Total',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.28999999165534973),
                                fontSize: 16.05,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              '₹213.0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
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
                        text: '₹ 0',
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
                  'Checkout',
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

class CartList extends StatefulWidget {
  final Map<String, dynamic> items;

  const CartList({super.key, required this.items});

  @override
  State<CartList> createState() => _CartListState();
}

final sortedItems = items.entries.toList()
// ..sort((a, b) => b.value['popularity'].compareTo(a.value['popularity']))
    ;

final listItems = sortedItems.take(8).toList();

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        // height: 110 * listItems.length.toDouble(),
        child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final item = listItems[index].value;
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.45),
                  ),
                ),
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['name'],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13.88,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),Text(
                        item['category'],
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5099999904632568),
                          fontSize: 11.69,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                       Text.rich(
                        maxLines: 1,
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '₹ ${item['price']}',
                              style: const TextStyle(
                                color: Color(0xFF7650FF),
                                fontSize: 13.88,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const TextSpan(
                              text: '/kg',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.88,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  leading: Container(
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.11, vertical: 3.65),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFC3B2FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.31),
                      ),
                    ),
                    child: Container(
                      width: 67.22,
                      height: 67.22,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(item['image']),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),

                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: listItems.length),
      ),
    );
  }
}

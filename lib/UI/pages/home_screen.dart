import 'package:eco_eats/UI/pages/cart_screen.dart';
import 'package:eco_eats/UI/pages/item_list_screen.dart';
import 'package:eco_eats/UI/widgets/product_card.dart';
import 'package:eco_eats/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/categories.dart';
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentValue = 0;
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        backgroundColor: const Color(0xFF7650FF),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/bg_image.png'),
                fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xFF7650FF),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.place_outlined,
                          color: Color(0xFFEBEBEB),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Location',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
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
                const Text(
                  'Malappuram, Kerala',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Container(
                    width: double.infinity,
                    height: 54,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 24,
                          color: Color(0xFF7650FF),
                        ),
                        hintText: 'Search Groceries',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: SizedBox(
                height: 153,
                child: PageView.builder(
                  controller: _pageController,
                  pageSnapping: true,
                  onPageChanged: (index) {
                    setState(() {
                      currentValue = index;
                    });
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/img/bg_image.png'),
                              fit: BoxFit.cover,
                              opacity: 0.5),
                          gradient: const RadialGradient(
                            center: Alignment(-0.13, 0.50),
                            radius: 1,
                            colors: [
                              Color(0xFF5325FF),
                              Color(0xFF663BFF),
                              Color(0xFF7750FF),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Get 30% discount \non your first order\nfrom app.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  decoration: ShapeDecoration(
                                    gradient: const RadialGradient(
                                      center: Alignment(0.0, 0.0),
                                      radius: 1.0,
                                      colors: [
                                        Color(0xA05B2FFF),
                                        Color(0xFF8361FD),
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: const Text(
                                    'Shop Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 151,
                              height: 101.93,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/img/veg_basket.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            DotIndicator(currentValue: currentValue, totalDots: 3),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0.08,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ItemListScreen(
                              title: 'Veggies',
                            ),
                          ));
                    },
                    child: const Categories(
                      img: 'assets/img/veg.png',
                      title: 'Veggies',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ItemListScreen(
                              title: 'Fruits',
                            ),
                          ));
                    },
                    child: const Categories(
                      img: 'assets/img/fruits.png',
                      title: 'Fruits',
                    ),
                  ),
                  const Categories(
                    img: 'assets/img/nuts.png',
                    title: 'Nuts',
                  ),
                  const Categories(
                    img: 'assets/img/meat.png',
                    title: 'Meats',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Popular',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0.08,
                ),
              ),
            ),
            _ItemGrid(
              items: items,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        elevation: 0,
        fixedColor: const Color(0xFF7650FF),
        selectedLabelStyle: const TextStyle(
          color: Color(0xFF7650FF),
          fontSize: 10,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        unselectedItemColor: Colors.black54,
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        onTap: (int index) {
          setState(
            () {
              _selectedIndex = index;
              if (_selectedIndex == 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DetailsScreen(
                          img: 'assets/img/welcome_img.png',
                          name: 'Like page',
                          rating: 1.0,
                          price: 0,
                          description: 'description',
                          category: 'none'),
                    ));
              }
              if (_selectedIndex == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const CartScreen()));
              }
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: 'Like'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  final int currentValue;
  final int totalDots;

  const DotIndicator({
    super.key,
    required this.currentValue,
    required this.totalDots,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalDots,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 9,
            width: index == currentValue ? 20 : 9,
            decoration: BoxDecoration(
              color: index == currentValue
                  ? const Color(0xFF7650FF)
                  : const Color(0xFFC3B2FF),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}

class _ItemGrid extends StatelessWidget {
  final Map<String, dynamic> items;

  const _ItemGrid({required this.items});

  @override
  Widget build(BuildContext context) {
    // Sort items by popularity (assuming 'rating' indicates popularity)
    final sortedItems = items.entries.toList()
      ..sort((a, b) => b.value['popularity'].compareTo(a.value['popularity']));

    // Take only the top 2 items
    final topItems = sortedItems.take(4).toList();

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
        itemCount: topItems.length,
        itemBuilder: (context, index) {
          final item = topItems[index].value;
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

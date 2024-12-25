import 'package:eco_eats/UI/pages/splash_screen.dart';
import 'package:eco_eats/util/responsive.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return MaterialApp(
      title: 'Eco Eats',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
        useMaterial3: true,
        // scaffoldBackgroundColor:const Color(0xFF7650FF),
      ),
      debugShowCheckedModeBanner: false,

      home: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
            // Background and content rendering based on device type
            isDesktop
                ? Stack(
              alignment: Alignment.center,
              children: [
                _buildBackground(),
                Center(
                  child: _buildMobileFrame(
                    child: _buildMobileContent(),
                  ),
                ),
              ],
            )
                : SizedBox(
              height: 800,
              child: _buildMobileContent(),
            ),

          ],
        ),
      ),
    );
  }

  // Builds the gradient background
  Widget _buildBackground() {
    return Container(
      constraints: BoxConstraints(maxHeight: 980,maxWidth: 2880),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }

  // Builds the mobile frame with rounded corners and shadow
  Widget _buildMobileFrame({required Widget child}) {
    return Container(
      width: 400,
      height: 800,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
        border: Border.all(color: Colors.black12, width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: child,
      ),
    );
  }

  // Builds the mobile content
  Widget _buildMobileContent() {
    return MaterialApp(
      title: 'Eco Eats',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // scaffoldBackgroundColor:const Color(0xFF7650FF),
      ),
      debugShowCheckedModeBanner: false,

      home: const SplashScreen(),

    );
  }
}





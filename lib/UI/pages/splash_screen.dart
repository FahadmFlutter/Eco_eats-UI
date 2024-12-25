import 'package:eco_eats/UI/pages/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _startSplashScreen();
    super.initState();
  }

  // Start a timer for the splash screen
  Future<void> _startSplashScreen() async {
    // Simulate some loading process or check for saved user session
    await Future.delayed(const Duration(seconds: 2)); // Wait for 3 seconds

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        ));
    // // Check if the user is logged in
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // bool isLoggedIn = prefs.containsKey('userData');
    //
    // // Navigate to the appropriate screen
    // if (isLoggedIn) {
    //   Navigator.of(context).pushReplacementNamed('/profile');
    // } else {
    //   Navigator.of(context).pushReplacementNamed('/login');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7650FF),
      body: Stack(
        children: [
          Image.asset('assets/img/bg_image.png'),
          Center(
            child: Image.asset(
              'assets/img/logo.png',
              height: 130,
              width: 140,
            ),
          )
        ],
      ),
    );
  }
}

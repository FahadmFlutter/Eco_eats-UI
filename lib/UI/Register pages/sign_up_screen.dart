import 'package:eco_eats/UI/pages/home_screen.dart';
import 'package:flutter/material.dart';

import '../pages/splash_screen.dart';
import '../widgets/my_button.dart';
import '../widgets/my_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7650FF),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/img/bg_image.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/img/sign_up_img.png',
                    width: 188.51,
                    height: 185,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Text(
                    'Sign up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0.04,
                    ),
                  ),
                ),
                const MyTextField(
                  label: 'Name',
                  obscureText: false,
                ),
                const MyTextField(
                  label: 'Email',
                  obscureText: false,
                ),
                const MyTextField(
                  label: 'Password',
                  obscureText: true,
                ),

                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomeScreen(),));
                    },
                    child: const MyButton(
                      text: 'Sign up',
                      isFilled: true,
                      isBold: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'have an account ?',
                        style: TextStyle(
                          color: Color(0xFFF2F2F7),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const SizedBox(width: 14),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xFFF6CA48),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:eco_eats/UI/Register%20pages/login_screen.dart';
import 'package:eco_eats/UI/Register%20pages/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7650FF),
      body: Stack(
        children: [
          Image.asset(
            'assets/img/bg_image.png',
            fit: BoxFit.fitWidth,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform(
                transform: Matrix4.identity()
                  ..translate(-90.0, 180.0)
                  ..rotateZ(-1.57),
                child: const Text(
                  'Welcome...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // color: Color(0xFF7650FF),
                    color: Colors.white,
                    fontSize: 34,
                    fontFamily: 'Tiro Kannada',
                    fontWeight: FontWeight.w400,
                    height: 0.02,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/img/welcome_img.png',
                  width: 239.66,
                  height: 231,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                },
                child: const MyButton(
                  text: 'Login',
                  isFilled: true,
                  isBold: false,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen(),));
                },
                child: const MyButton(
                  text: 'Sign up',
                  isFilled: false,
                  isBold: false,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(17.0),
                child: Text(
                  'sign up using',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                width: 222,
                height: 66,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img/google.png"),
                          fit: BoxFit.contain,
                        ),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 26),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img/fb.png"),
                          fit: BoxFit.contain,
                        ),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 26),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const ShapeDecoration(
                        shape: OvalBorder(),
                      ),
                      child: Center(
                          child: Text(
                        'X',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

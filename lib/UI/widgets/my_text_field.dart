import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String label;
  final bool obscureText;

  const MyTextField({super.key, required this.label, required this.obscureText});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 8),
      child: TextFormField(

        obscureText: widget.obscureText,
        cursorColor: Colors.white,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
        decoration:  InputDecoration(
          labelText: widget.label,
          labelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 15.32,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
          hintText: widget.label,
          focusColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.77, color: Colors.white),
            borderRadius: BorderRadius.circular(7.66),
          ),
          disabledBorder:OutlineInputBorder(
            borderSide: const BorderSide(width: 0.77, color: Colors.white),
            borderRadius: BorderRadius.circular(7.66),
          ) ,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.77, color: Colors.white),
            borderRadius: BorderRadius.circular(7.66),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.77, color: Colors.white),
            borderRadius: BorderRadius.circular(7.66),
          )
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final String text;
  const MyTextField({
    super.key,
    required this.text,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: TextField(
        style: const TextStyle(
          color: Colors.black,
          letterSpacing: 4,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        onChanged: onChanged,
        autofocus: true,
        cursorColor: Colors.grey.shade900,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xff7dfdd9),
          icon: const Icon(Icons.arrow_forward, color: Color(0xff7dfdd9)),
          hintText: text,
          hintStyle: const TextStyle(
            letterSpacing: 3,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InputFeild extends StatelessWidget {
  InputFeild({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            filled: true,
            hintStyle: TextStyle(
              color: Colors.grey[800],
            ),
            hintText: text,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 40.0,
            ),
            fillColor: Colors.white38),
      ),
    );
  }
}

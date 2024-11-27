import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String hintText;
  const Field({
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        contentPadding: const EdgeInsets.all(10),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 18,
        ),
      ),
    );
  }
}

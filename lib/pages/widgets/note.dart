import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  final String note1;
  final String note2;

  const Note({
    required this.note1,
    required this.note2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Text.rich(
      style: const TextStyle(
        fontSize: 18,
      ),
      TextSpan(
        text: "Note: \n",
        children: [
          TextSpan(
            text:
                "1.$note1\n",
          ),
          TextSpan(
            text:
                "2.$note2\n",
          ),
        ],
      ),
    );
  }
}

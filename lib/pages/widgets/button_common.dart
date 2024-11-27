import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color backgroundColor;
  final double borderRadius;
  final Color textColor;

  const ButtonCommon({
    required this.textColor,
    required this.onTap,
    required this.text,
    required this.backgroundColor,
    this.borderRadius = 15,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        elevation: 5,
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.all(1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (backgroundColor == Colors.red)
                Expanded(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              if (backgroundColor != Colors.red)
                Expanded(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              const Icon(
                Icons.arrow_forward_ios,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

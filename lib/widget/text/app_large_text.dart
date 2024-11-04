import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  final double fontSize;
  final String text;
  final Color color;
  const AppLargeText({
    super.key,
    this.fontSize = 30,
    required this.text,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

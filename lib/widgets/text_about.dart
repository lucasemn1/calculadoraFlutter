import 'package:flutter/material.dart';

class TextAbout extends StatelessWidget {
  final int size;
  final String text;
  final bool bold;
  final bool center;
  TextAbout({
    @required this.text, 
    this.size = 12, 
    this.bold = false,
    this.center = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.text, 
        style: TextStyle(
          fontSize: this.size.toDouble(),
          fontWeight: this.bold ? FontWeight.w700 : FontWeight.w400,
        ),
        textAlign: this.center ? TextAlign.center : TextAlign.left,
      ),
    );
  }
}
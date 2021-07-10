import 'package:flutter/material.dart';

class FTText extends StatelessWidget {
  String _text = "";
  bool _isBold = false;
  Color _color = Colors.black;
  
  FTText(String text, Color color, bool isBold) {
    _text = text;
    _isBold = isBold;
    _color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        color: _color,
        fontSize: _isBold ? 17 : 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

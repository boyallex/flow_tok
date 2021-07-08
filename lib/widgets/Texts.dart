import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  String _text = "";
  bool _isBold = false;
  Color _color = Colors.black;
  
  Header(String text, Color color, bool isBold) {
    _text = text;
    _isBold = isBold;
    _color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        
      ),
    );
  }
}

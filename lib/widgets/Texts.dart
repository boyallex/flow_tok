import 'package:flutter/material.dart';

enum TextTypes {
    big,
    large,
    grey, 
    casual,
}

class FTText extends StatelessWidget {
  String _text = "";
  TextStyle _style = TextStyle();
  
  
  FTText(String text, TextTypes type) {
    this._text = text;
    switch (type) {
      case TextTypes.casual:
        this._style = TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        );
        break;
      case TextTypes.big:
      this._style = TextStyle(
          color: Colors.black,
          fontSize: 19,
          fontWeight: FontWeight.bold,
        );
        break;
      default:
    }
  }
  FTText.largeNumbers(this._text) {
    this._style = TextStyle(
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    );
  }
  FTText.bigNumbers(this._text) {
    this._style = TextStyle(
      color: Colors.black,
      fontSize: 19,
      fontWeight: FontWeight.bold,
    );
  }
  FTText.casual(this._text) {
    this._style = TextStyle(
      color: Colors.black,
      fontSize: 17,
      fontWeight: FontWeight.bold,
    );
  }
  FTText.grey(this._text) {
    this._style = TextStyle(
      color: Colors.grey[400],
      fontSize: 15,
    );
  }
  FTText.greyMini(this._text) {
    this._style = TextStyle(
      color: Colors.grey[400],
      fontSize: 13,
    );
  }
  FTText.green(this._text, [double? font_size = 0, bool isBold = false]) {
    this._style = TextStyle(
      color: Colors.greenAccent.shade400,
      fontSize: font_size == 0 ? 17 : font_size,
      fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: this._style,
    );
  }
}

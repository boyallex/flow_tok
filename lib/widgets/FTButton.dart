import 'package:flutter/material.dart';

class FTButton extends StatelessWidget {
  String _buttonText = " ";
  Color _buttonColor = Colors.white;
  Function _onPressed = () {};
  FTButton.violet(this._buttonText, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: this._onPressed(),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color(0x2246F3),
            Color(0x7832F0),
          ])  
        ),
        child: Text(
          this._buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            letterSpacing: -0.3,
          ),
        ),
      ),
    );
  }
}

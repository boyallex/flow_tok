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
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xff2246F3),
              Color(0xff7832F0),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(11)),
        ),
        height: 46,
        child: Center(
          child: Text(
            this._buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              letterSpacing: -0.3,
            ),
          ),
        ),
      ),

    );
  }
}

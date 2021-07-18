import 'package:flutter/material.dart';

class GreyLine extends StatelessWidget {
  Widget line = Container();
  GreyLine.horisontal() {
    this.line = Container(
      height: 0.5,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
  GreyLine.vertical() {
    this.line = Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(32),
      ),
      width: 0.5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return this.line;
  }
}

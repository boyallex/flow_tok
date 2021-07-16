import 'package:flutter/material.dart';

class GreyLine extends StatelessWidget {
  const GreyLine({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade400,
      width: 0.5,
      
    );
  }
}
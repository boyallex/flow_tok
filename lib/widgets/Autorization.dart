import 'package:flutter/material.dart';

class Autorization extends StatelessWidget {
  const Autorization({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Text(
            "Вход",
            style: TextStyle(
              color: Colors.black,
              fontWeight:FontWeight.bold,
              fontSize: 21, 
            ),
          ),
          FloatingActionButton(onPressed: () {}),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
// import 'dart:html';

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              child: Stack(
                children: <Widget>[
                  Image.asset("assets/img/people1.jpg"),

                  Center(
                    child: Text("data"),
                  )
                ],
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}

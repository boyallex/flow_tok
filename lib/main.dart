// import 'dart:html';

// import 'package:flow_tok/routes/StartScreen.dart';
import 'package:flow_tok/routes/main_sreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.grey[350],
      ),
      home: MyAppView(),
    );
  }
}

class MyAppView extends StatefulWidget {
  const MyAppView({Key? key}) : super(key: key);

  @override
  _MyAppViewState createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MainScreen(),
    );
  }
}

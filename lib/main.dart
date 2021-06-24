import 'package:flow_tok/routes/StartScreen.dart';
import 'package:flutter/material.dart';
// import './routes/StartScreen' as StartScreen;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     home: StartScreen()
     );
  }
}

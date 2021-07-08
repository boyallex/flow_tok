// import 'dart:js';
import 'package:flow_tok/routes/profile.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

// class _MainScreenState extends State<MainScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         bottom: AppBarDecorationButton(),
//       ),
//       body: Container(
//         child: Profile(),
//         color: Colors.grey[350],
//       ),
//     );
//   }
// }

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 102),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.grey.shade300,
              // spreadRadius: 5,
              // blurRadius: 2
            )]
          ),
          width: MediaQuery.of(context).size.width,
          height: 102,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(11),bottomRight: Radius.circular(11))
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("a"),
                  Text("Профиль"),
                  Text("c"),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Profile(),
        color: Colors.grey[350],
      ),
    );
  }
}

class AppBarDecorationButton extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDecorationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(11), bottomLeft: Radius.circular(11)),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(5);
}

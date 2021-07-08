// import 'dart:js';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          // FTContainer.white(Text('njdnjer')),
          
        ],
      ),
    );
  }
}

class FTContainer extends StatelessWidget {
  final Widget child;
  const FTContainer.white(this.child);
  
  @override
  Widget build(BuildContext context) {
    // double Width;
    // LayoutBuilder(builder: (context, constraints){
    //   Width = constraints.maxWidth;
    // });

    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Container(
        child: child,
        color: Colors.red,
        padding: EdgeInsets.all(20),
      ),
    );
  }
}

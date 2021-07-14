import 'package:flutter/material.dart';

class FTContainer extends StatefulWidget {
  final Widget child;
  const FTContainer.white(this.child);

  @override
  _FTContainerState createState() => _FTContainerState();
}

class _FTContainerState extends State<FTContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      alignment: Alignment.topLeft,
    );
  }
}

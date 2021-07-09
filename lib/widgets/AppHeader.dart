import 'package:flow_tok/widgets/Texts.dart';
import 'package:flutter/material.dart';


class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String _pageName;
  AppHeader(this._pageName);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.timer_sharp),
                  ),
                  Header(_pageName, Colors.black, true),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.circle),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(102);
}
// import 'dart:js';

import 'package:flow_tok/widgets/FTButton.dart';
import 'package:flow_tok/widgets/Texts.dart';
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
          // Кошелек
          FTContainer.white(Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    FTText("Кошелек", Colors.black, true),
                    Icon(Icons.timer_sharp)
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: FTText("Ваш баланс", Colors.grey.shade400, false),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: FTText("15 236.00 ₽", Colors.black, true),
              ),
              FTButton.violet(
                "Выплатить",
                (){},
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
          )),
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

    return Container(
      child: child,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      width: MediaQuery.of(context).size.width,
      // width: 100,
    );
  }
}

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
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FTContainer.white(
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        FTText.casual("Кошелек"),
                        Icon(Icons.timer_sharp)
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: FTText.grey("Ваш баланс"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: FTText.largeNumbers("15 236.00 ₽"),
                  ),
                  FTButton.violet(
                    "Выплатить",
                    () {},
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          ),
          // Ждет зачисления
          Row(
            children: [
              FTContainer.white(
                Column(
                  children: [
                    SizedBox(
                      child: FTText.grey("Ждет зачисления"),
                      width: 93,
                    ),
                    FTText.bigNumbers("6 703.50 ₽"),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              FTContainer.white(Column(
                children: [
                  SizedBox(
                    child: FTText.grey("Получено за все время"),
                    width: 102,
                  ),
                  FTText.bigNumbers("6 703.50 ₽"),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ))
            ],
          ),
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
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      // width: MediaQuery.of(context).size.width,
      // width: 100,
    );
  }
}

// import 'dart:js';

import 'package:flow_tok/widgets/FTButton.dart';
import 'package:flow_tok/widgets/FTContainer.dart';
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
                        Icon(Icons.timer_sharp),
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: SizedBox(
                        child: FTText.grey("Ждет зачисления"),
                        width: 93,
                      ),
                    ),
                    FTText.bigNumbers("6 703.50 ₽"),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              FTContainer.white(
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          child: FTText.grey("Получено за все время"),
                          width: 102,
                        ),
                      ),
                      FTText.bigNumbers("6184953.50 ₽"),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: FTContainer.white(
              Column(
                children: [
                  FTText.casual("Показатели"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: FTText.greyMini("Среднее кол-во просмотров"),
                            width: 96,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          FTText.bigNumbers("2.6М"),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      Column(
                        children: [
                          Container(
                            child: FTText.greyMini("Выплата за один ролик"),
                            width: 75,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          FTText.bigNumbers("2.6М"),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      Column(
                        children: [
                          Container(
                            child:
                                FTText.greyMini("Рейтинг для рекламодателей"),
                            width: 110,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          FTText.green("4.6", 19, true),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          )
        ],
      ),
    );
  }
}

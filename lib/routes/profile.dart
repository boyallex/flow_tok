import 'package:flow_tok/widgets/FTContainer.dart';
import 'package:flow_tok/widgets/Profile/Finance.dart';
import 'package:flow_tok/widgets/Profile/ReferralProgram.dart';
import 'package:flow_tok/widgets/Profile/wallet.dart';
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
      child: ListView(
        children: [
          // Кошелек
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Wallet(),
          ),
          // Ждет зачисления
          Row(
            children: [
              Container(
                child: Deposits(),
                constraints: BoxConstraints(
                  minWidth: 180,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Total(),
                constraints: BoxConstraints(
                  minWidth: 200,
                ),
              ),
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ReferralProgram(),
          ),
        ],
      ),
    );
  }
}

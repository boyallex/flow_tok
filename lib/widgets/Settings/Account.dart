import 'package:flow_tok/widgets/FTContainer.dart';
import 'package:flow_tok/widgets/GreyLine.dart';
import 'package:flow_tok/widgets/Texts.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return FTContainer.white(
      Column(
        children: [
          FTText.casual("Аккаунт"),
          SizedBox(
            height: 22,
          ),
          // Имя
          Row(
            children: [
              // имя аккаунта
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.grey.shade400,
                      size: 42,
                    ),
                  ),
                  Column(
                    children: [
                      FTText.casual("karinakross"),
                      FTText.greyMini("@karinakross"),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              Text(
                "Изменить аккаунт",
                style: TextStyle(
                  color: Colors.blueAccent.shade400,
                  fontSize: 16,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          SizedBox(
            height: 21,
          ),
          GreyLine.horisontal(),
          SizedBox(
            height: 15,
          ),
          // о вас
          Text(
            "О вас",
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          FTText.grey(
              "Укажите актуальные данные и мы лучше подберем задания для Вас!"),
          SizedBox(
            height: 18,
          ),
          GreyLine.horisontal(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Выйти из профиля",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              Text(
                "Выйти",
                style: TextStyle(
                  color: Colors.redAccent.shade400,
                  fontSize: 16,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

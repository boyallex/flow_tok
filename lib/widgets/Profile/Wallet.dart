import 'package:flutter/material.dart';

import '../FTButton.dart';
import '../FTContainer.dart';
import '../Texts.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FTContainer.white(
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                FTText.casual("Кошелек"),
                Image(
                  image: AssetImage("assets/img/clock.png"),
                ),
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
    );
  }
}

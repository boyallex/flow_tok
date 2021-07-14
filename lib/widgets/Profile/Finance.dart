import 'package:flutter/material.dart';

import '../FTContainer.dart';
import '../Texts.dart';

class Deposits extends StatelessWidget {
  const Deposits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FTContainer.white(
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
    );
  }
}

class Total extends StatelessWidget {
  const Total({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FTContainer.white(
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
    );
  }
}

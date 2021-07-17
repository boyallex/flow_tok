import 'package:flow_tok/widgets/FTContainer.dart';
import 'package:flow_tok/widgets/Profile/ReferralLink.dart';
import 'package:flow_tok/widgets/Texts.dart';
import 'package:flutter/material.dart';

class ReferralProgram extends StatelessWidget {
  const ReferralProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FTContainer.white(
      Column(
        children: [
          FTText.casual(
            "Реферальная программа",
          ),
          SizedBox(
            height: 25,
          ),
          ReferralLink("https://flowtok.com/ref/5f3eba819845264b903e746f"),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              FTText.grey("_text")
            ],
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

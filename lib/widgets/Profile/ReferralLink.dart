import 'package:flutter/material.dart';

class ReferralLink extends StatelessWidget {
  String link;
  ReferralLink(this.link);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.link),
      decoration: BoxDecoration(
        color: Colors.greenAccent.shade400,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );
  }
}

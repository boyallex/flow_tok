import 'package:flutter/material.dart';

class ReferralLink extends StatelessWidget {
  String link;
  ReferralLink(this.link);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(this.link)),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        
      ),
      height: 36,
    );
  }
}

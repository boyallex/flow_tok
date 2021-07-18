import 'package:flow_tok/widgets/Settings/Account.dart';
import 'package:flutter/material.dart';


class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Account(),
        ),

      ],
    );
  }
}
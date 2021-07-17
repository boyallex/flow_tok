// import 'dart:js';
import 'package:flow_tok/routes/profile.dart';
import 'package:flow_tok/widgets/AppHeader.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  void changePage(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    Profile(),  
    Text("Здесь будут задания"),
    Text("Здесь будут настройки"),
  ];

  final _pageNames = [
    "Профиль",
    "Задания",
    "Настройки",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(_pageNames[_pageIndex]),
      body: Container(
        child: _widgetOptions[_pageIndex],
        color: Colors.grey[350],
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _pageIndex,
        onTap: changePage,
        items: const [
          BottomNavigationBarItem(
            label: "Профиль",
            icon: Icon(Icons.account_circle),
          ),
          BottomNavigationBarItem(
            label: "Задания",
            icon: Icon(Icons.sailing_sharp),
          ),
          BottomNavigationBarItem(
            label: "Настройки",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader("Профиль"),
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
        items: const <BottomNavigationBarItem>[
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

// class AppBarDecorationButton extends StatelessWidget implements PreferredSizeWidget {
//   const AppBarDecorationButton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 15,
//       decoration: BoxDecoration(
//         color: Colors.red,
//         borderRadius: BorderRadius.only(bottomRight: Radius.circular(11), bottomLeft: Radius.circular(11)),
//       ),
//     );
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(5);
// }

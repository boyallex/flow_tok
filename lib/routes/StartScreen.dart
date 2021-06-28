// import 'dart:html';

import 'package:flutter/material.dart';

class Entering extends StatefulWidget {
  const Entering({Key? key}) : super(key: key);

  @override
  _EnteringState createState() => _EnteringState();
}

class _EnteringState extends State<Entering> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isTouched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        children: [
          AnimatedContainer(
            // curve: Curves.bounceOut,
            height: !isTouched
                ? MediaQuery.of(context).size.height / 2
                : MediaQuery.of(context).size.height,
            duration: Duration(milliseconds: 600),
            child: Container(
              color: Colors.blue,
              child: Center(
                child: isTouched
                    ? Container()
                    : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: SizedBox(
                            child: Text(
                              "Хочу разместить рекламу",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            width: 204,
                          ),
                        ),
                        FloatingActionButton.extended(
                            backgroundColor: Colors.white,
                            onPressed: () {
                              setState(() {
                                isTouched = true;
                              });
                              scaffoldKey.currentState!
                                  .showBottomSheet(
                                    (context) {
                                      return Container(
                                        height: 300,
                                      );
                                    },
                                  )
                                  .closed
                                  .whenComplete(
                                    () => setState(
                                      () {
                                        isTouched = false;
                                      },
                                    ),
                                  );
                            },
                            label: Text(
                              "Я рекламодатель",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
              ),
            ),
          ),
          AnimatedContainer(
            // curve: Curves.bounceOut,
            height: isTouched ? 0 : MediaQuery.of(context).size.height / 2,
            duration: Duration(milliseconds: 600),
            child: Container(
              color: Colors.deepOrangeAccent,
              child: Center(
                child: SizedBox(
                  width: 175,
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        isTouched = true;
                      });
                      scaffoldKey.currentState!
                          .showBottomSheet(
                            (context) {
                              return Container(
                                height: 300,
                              );
                            },
                          )
                          .closed
                          .whenComplete(
                            () => setState(
                              () {
                                isTouched = false;
                              },
                            ),
                          );
                    },
                    label: Text(
                      "Я блогер",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}

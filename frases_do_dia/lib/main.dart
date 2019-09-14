import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: Container(
      //color: Colors.white,
      margin: EdgeInsets.only(top: 40),
      decoration:
          BoxDecoration(border: Border.all(width: 3, color: Colors.white)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("T1"),
          Text("t2"),
          Text("t3"),
        ],
      ),
    ),
  ));
}

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedra papel tesoura"),
      ),
      body: Column(
        children: <Widget>[
          //text
          //img
          //text resultado
          //linha 3 imgs
        ],
      ),
    );
  }
}
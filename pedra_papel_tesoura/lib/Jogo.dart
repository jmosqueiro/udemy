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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //text
          //img
          //text resultado
          //linha 3 imgs
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Image.asset("assets/padrao.png"),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha uma opção",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Row(
            mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("assets/pedra.png", height: 100,),
              Image.asset("assets/papel.png",height: 100),
              Image.asset("assets/tesoura.png",height: 100),
            ],
          )
        ],
      ),
    );
  }
}
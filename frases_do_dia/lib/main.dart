//Starting app from scratch (frades do dia)
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases =[
    "Frase do José:",
    "Frase do Carlos:",
    "Frase do Tino:",
    "Frase do DT:",
    "Frase do Mário:",
    "Frase do Gonçalo:",
  ];

  var _fraseGerada = "Clique para gerar uma frase";

  void _gerarFrase(){
    // 0, 1, 2, 3, 4, 5
    var numeroSorteado = Random().nextInt(_frases.length);
    //print(numeroSorteado);
    setState(() {
    _fraseGerada = _frases[ numeroSorteado ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(16),
        //width: double.infinity,
        /* decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ), */
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("resources/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
          ],
        ),
      ),
      ),
    );
  }
}
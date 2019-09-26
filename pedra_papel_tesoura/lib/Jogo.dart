import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

var _imagemApp = AssetImage("assets/padrao.png");
var _mensagem = "Escolha uma opçao abaixo";

void _opcaoSelecionada(String escolhaUser){
  
  var opcoes = ["pedra", "papel" , "tesoura"];
  var numero = Random().nextInt(3);
  var escolhaApp = opcoes[numero];

  print("Escolha de App: " + escolhaApp);
  print("Escolha do User: " + escolhaUser);

  //exibiçao da img escolhida pelo App
  switch( escolhaApp ){
    case "pedra" :
      setState(() {
        this._imagemApp = AssetImage("assets/pedra.png");
      });
      break;
      case "papel" :
      setState(() {
        this._imagemApp = AssetImage("assets/papel.png");
      });
      break;
      case "tesoura" :
      setState(() {
        this._imagemApp = AssetImage("assets/tesoura.png");
      });
      break;
  }

  //Validação do ganhador
  if (
    (escolhaUser == "pedra" && escolhaApp =="tesoura") ||
    (escolhaUser == "tesoura" && escolhaApp =="papel") ||
    (escolhaUser == "papel" && escolhaApp =="pedra") 
  ){
    setState(() {
      this._mensagem = "WIN";
    });
  }else if (
      (escolhaApp == "pedra" && escolhaUser == "tesoura") ||
    (escolhaApp == "tesoura" && escolhaUser == "papel") ||
    (escolhaApp == "papel" && escolhaUser == "pedra") 
    ){
    setState(() {
      this._mensagem = "LOSE";
    });
    } else {
    setState(() {
      this._mensagem = "DRAW";
    });

    }

}

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
              this._mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Image(image: this._imagemApp,), // Img de cima
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
              GestureDetector(
                onTap: () => _opcaoSelecionada("pedra"),
                child: Image.asset("assets/pedra.png", height: 100,),
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("papel"),
                child: Image.asset("assets/papel.png", height: 100,),
                ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("tesoura"),
                child: Image.asset("assets/tesoura.png", height: 100,),
                ),
              /*
              Image.asset("assets/pedra.png", height: 100,),
              Image.asset("assets/papel.png",height: 100),
              Image.asset("assets/tesoura.png",height: 100),
              */
            ],
          )
        ],
      ),
    );
  }
}
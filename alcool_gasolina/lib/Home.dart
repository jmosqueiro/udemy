import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alcool ou gasosa"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset("assets/logo.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Saiba qual a melhor opção",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preco do alcool, ex : 1.53"
              ),
              style: TextStyle(
                fontSize: 23,
              ),
              controller: _controllerAlcool,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preco da gasolina, ex : 1.53"
              ),
              style: TextStyle(
                fontSize: 23,
              ),
              controller: _controllerGasolina,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                onPressed: (){},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "#Resultado"
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
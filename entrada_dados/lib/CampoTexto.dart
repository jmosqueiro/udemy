import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              // text type = text , number, email, datetime
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Valor"
              ),
              //enabled: false,
              maxLength: 3,
            ),
          )
        ],
      )
    );
  }
}
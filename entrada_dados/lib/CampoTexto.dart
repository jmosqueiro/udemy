import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

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
              //maxLength: 3,
              //maxLengthEnforced: false,
              //obscureText: true,
              
              style: TextStyle(
                fontSize: 50,
                color: Colors.green
              ),
              /* onChanged: (String texto){
                  print("valor dig" + texto);
              }, */
              onSubmitted: (String texto){
                print("valor dig" + texto);
              },
              controller: _textEditingController,
            ),
          ),
          RaisedButton( //capturar texto com um botao - uso do controller e onSubmitted
            child: Text("Save"),
            color: Colors.lightGreen,
            onPressed: (){
              print("valor dig" + _textEditingController.text );
            },
          )
        ],
      )
    );
  }
}
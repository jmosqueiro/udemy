import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
    ),
  );
}

/*
var nome = "lee";
*/


class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState(); // => means return
}

class _HomeStatefulState extends State<HomeStateful> {
      var _texto = "dev";

  @override
  Widget build(BuildContext context) {
    print("Build Chamado");
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                setState(() {
                  _texto = "Curso Flutter";
                });
              },
              color: Colors.amber,
              child: Text("Click here"),
            ),
            Text("Nome: $_texto")
          ],
        ),
      )
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /*var _titulo = "Instagram";

    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("3"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text("Texto 1"),
              Text("Texto 1"),
            ],
          ),
        ),
      ),
      
      
    );*/
  }
}
import 'package:flutter/material.dart';
import 'package:Mascotas/colores.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Felicitaciones",
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, .9),
              fontFamily: "flower",
              fontSize: 30,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Image.asset("imagenes/pp.png"),
                height: 100,
                margin: EdgeInsets.only(top: (heightApp * .1)),
              ))
            ],
          ),
        ],
      ),
    );
  }
}

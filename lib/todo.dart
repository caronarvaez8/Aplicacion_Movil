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
          "Descripción",
          style: TextStyle(color: Colors.white),
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
          Row(
            children: <Widget>[
              Expanded(
                  child: Center(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: (heightApp * 0.05)),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Color.fromRGBO(99, 182, 233, .9),
                    child: Text('Atras',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}

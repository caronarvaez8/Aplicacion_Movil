import 'package:Mascotas/animales.dart';
import 'package:flutter/material.dart';
import 'package:Mascotas/colores.dart';
import 'package:Mascotas/expli.dart';
import 'package:Mascotas/animales.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inicio",
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
                child: Image.asset("imagenes/inicio.jpg"),
                height: 180,
                margin: EdgeInsets.only(top: (heightApp * .05)),
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    width: widthApp * 0.8,
                    child: Column(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: (heightApp * 0.05)),
                            child: Text(
                              "   Adopta\n" + "no compra",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 35,
                                  color: Color.fromRGBO(22, 114, 170, .9)),
                            ))
                      ],
                    )),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: (heightApp * 0.03)),
                    child: Text(
                      "Encuentra  el próximo integrante de la\n" +
                          "fammilia  entre   diferentes  mascotas\n" +
                          "disposibles para adoptar en tu ciudad ",
                      style: TextStyle(
                          fontSize: 17, color: Color.fromRGBO(22, 112, 170, 5)),
                    )),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Center(
                child: Container(
                    margin: EdgeInsets.only(top: (heightApp * 0.05)),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: RaisedButton(
                            color: Color.fromRGBO(99, 182, 233, .9),
                            child: Text("¿Por qué adoptar?",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Expli()),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: (heightApp * 0.02)),
                          child: RaisedButton(
                            color: Color.fromRGBO(99, 182, 233, .9),
                            child: Text("ver mascotas",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Animales()),
                              );
                            },
                          ),
                        ),
                      ],
                    )),
              ))
            ],
          )
        ],
      ),
    );
  }
}

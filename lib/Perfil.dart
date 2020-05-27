import 'package:flutter/material.dart';
import 'package:Mascotas/colores.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Perfil",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "flower",
                fontSize: 30,
                fontWeight: FontWeight.w800),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    width: widthApp * 0.9,
                    alignment: Alignment.center,
                    child: Image.asset("imagenes/porque.jpg"),
                    height: 180,
                    margin: EdgeInsets.only(top: (heightApp * .05)),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                            width: widthApp * 0.8,
                            margin: EdgeInsets.only(top: (heightApp * 0.06)),
                            child: Text(
                              "Hola",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "flower",
                                  color: Color(0xFF840D99)),
                            )),
                        Container(
                            alignment: Alignment.center,
                            width: widthApp * 0.8,
                            margin: EdgeInsets.only(top: (heightApp * 0.03)),
                            child: Text(
                              "",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(48, 48, 48, .8)),
                            ))
                      ],
                    ),
                  ))
                ],
              ),
            ],
          ),
        ));
  }
}

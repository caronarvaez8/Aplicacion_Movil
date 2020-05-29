import 'package:flutter/material.dart';
import 'package:Mascotas/colores.dart';

class Expli extends StatefulWidget {
  @override
  _ExpliState createState() => _ExpliState();
}

class _ExpliState extends State<Expli> {
  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "¿Por qué adoptar?",
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
                    child: Image.asset("imagenes/pe.png"),
                    height: 200,
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
                            margin: EdgeInsets.only(top: (heightApp * 0.04)),
                            child: Text(
                              "¿Por qué estas salvando una vida?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "flower",
                                  color: Color(0xFF5C7E1F)),
                            )),
                        Container(
                            alignment: Alignment.center,
                            width: widthApp * 0.8,
                            margin: EdgeInsets.only(top: (heightApp * 0.03)),
                            child: Text(
                              "Cada  año, millones  de  animales  nacen en las calles o terminan  siendo  abandonados.  Los refugios  de  animales  y  las organizaciones de cuidado no satisfacen la demanda. Si más  personas adoptan en lugar de  comprar, ese número rebajar considerablemente.  Unanimal adoptado en  un refugio  deja  el espacio  para  que otro sea rescatado. \n",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "cormorant",
                              ),
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

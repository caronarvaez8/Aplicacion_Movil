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
          style: TextStyle(color: Color.fromRGBO(174, 79, 18, .9),
          fontFamily: "flower",
          fontSize: 30,
          fontWeight: FontWeight.w800
          ),
        ),
        
      ),
     
      body: Column(
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
                  child: Center(
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Container(
                        width: widthApp * 0.85,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: (heightApp * 0.05)),
                        child: Text(
                          "   ¿Por  qué  estas    salvando una vida?",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 35,
                              color: Color.fromRGBO(22, 114, 170, .9)),
                        ))
                  ],
                )),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Center(
                child: Container(
                  width: widthApp * 0.85,
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: (heightApp * 0.03)),
                        child: Text(
                            "Cada  año, millones  de  animales  nacen\n" +
                                "en las calles o terminan  siendo  abando-\n" +
                                "nados.  Los refugios  de  animales  y  las\n" +
                                "organizaciones de cuidado no satisfacen\n" +
                                "la demanda. Si más  personas adoptaran\n" +
                                "en lugar de  comprar, ese número rebajar\n" +
                                "considerablemente.  Unanimal adoptado\n" +
                                "en  un refugio  deja  el espacio  para  que\n" +
                                "otro sea rescatado.\n",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromRGBO(22, 114, 170, 5))),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}

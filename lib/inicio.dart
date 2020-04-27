
import 'package:flutter/material.dart';


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
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, .9),
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
        ],
      ),
    );
  }
}

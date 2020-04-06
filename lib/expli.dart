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
          "Adopción de Mascotas",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                alignment: Alignment.topRight,
                child: Image.asset("imagenes/gg.png"),
                height: 100,
                margin: EdgeInsets.only(top: (heightApp * .1)),
              )),
              Expanded(
                  child: Container(
                alignment: Alignment.topLeft,
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
                    width: widthApp * 0.8,
                    child: Column(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: (heightApp * 0.05)),
                            child: Text(
                              "¿Por qué estas salvando una vida?",
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
                  width: widthApp * 0.8,
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: (heightApp * 0.05)),
                        child: Text(
                            "Cada año,  millones de  animales  nacen en  las  calles o" +
                                "terminan  siendo  abandonados. Los  refugios  de animales" +
                                "y las organizaciones de cuidado no  satisfacen la demanda." +
                                "Si más personas adoptaran en lugar de comprar, ese número" +
                                "disminuiría considerablemente. Un  animal  adoptado en un " +
                                "refugio deja el espacio para que otro sea rescatado.",
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
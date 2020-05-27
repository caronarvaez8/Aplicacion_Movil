import 'package:flutter/material.dart';
import 'package:Mascotas/Ppregunta.dart';

class Animales extends StatefulWidget {
  @override
  _AnimalesState createState() => _AnimalesState();
}

class _AnimalesState extends State<Animales> {
  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Adopcion de Perros",
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, .9),
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
                    alignment: Alignment.center,
                    child: Image.asset("imagenes/criollo.jpg"),
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
                            width: widthApp * 0.8,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: (heightApp * 0.06)),
                            child: Text(
                              "Elige tu mejor compañia, para que te diviertas jugando",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "cormorant",
                                  color: Color.fromRGBO(48, 48, 48, .8)),
                            )),
                        Container(
                          height: 50.0,
                          margin: EdgeInsets.only(top: (heightApp * 0.07)),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Ppregunta()),
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(243, 197, 127, .6),
                                      Color.fromRGBO(243, 197, 127, .8),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth: 200.0, minHeight: 70.0),
                                alignment: Alignment.center,
                                child: Text(
                                  "Comenzar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "flower"),
                                ),
                              ),
                            ),
                          ),
                        )
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

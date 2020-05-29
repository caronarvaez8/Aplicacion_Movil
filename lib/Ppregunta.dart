import 'dart:convert';

import 'package:Mascotas/colores.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;
import 'package:Mascotas/Spregunta.dart';

class Ppregunta extends StatefulWidget {
  @override
  final pregunta;

  const Ppregunta({Key key, this.pregunta}) : super(key: key);
  _PpreguntaoState createState() => new _PpreguntaoState(pregunta);
}

class _PpreguntaoState extends State<Ppregunta> {
  @override
  final pregunta;
  _PpreguntaoState(this.pregunta);
  String use = "Selecione la raza";

  /// MARCAS
  Future<List> marcas() async {
    final reponde =
        await http.post("http://3.16.167.111/Aplicacion_Movil/marcas.php");

    var dataMar = json.decode(reponde.body);

    if (dataMar.length > 0) {
      return dataMar;
    } else {
      Toast.show("error", context,
          duration: 1,
          gravity: Toast.CENTER,
          backgroundColor: Color.fromRGBO(132, 13, 153, .9),
          textColor: Color.fromRGBO(225, 225, 225, .9));
    }
  }

  List<String> marcas1 = ["Selecione la raza"];
  @override
  void initState() {
    super.initState();
    marcas().then((value) {
      setState(() {
        value.forEach((val) {
          marcas1.add(val);
        });
      });
    });
  }

  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Raza",
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, .9),
                fontFamily: "cormorant",
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
                    child: Image.asset("imagenes/per.png"),
                    height: 180,
                    margin: EdgeInsets.only(top: (heightApp * .05)),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: (heightApp * 0.06)),
                      child: Text('¿Qué raza de perro quieres?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32,
                              fontFamily: "flower",
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF5C7E1F))),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: widthApp * 0.8,
                          margin: EdgeInsets.only(top: (heightApp * 0.06)),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            iconEnabledColor: Color(0xFF776016),
                            style: new TextStyle(
                                color: Color(0xFF776016),
                                fontSize: 21,
                                fontFamily: "cormorant"),
                            value: use,
                            items: marcas1.map((String e) {
                              return DropdownMenuItem<String>(
                                child: Text(e),
                                value: e,
                              );
                            }).toList(),
                            onChanged: (mostrar) {
                              setState(() {
                                use = mostrar;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    height: 50.0,
                    margin: EdgeInsets.only(top: (heightApp * 0.3)),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Spregunta(pregunta: use)),
                        );
                      },
                      child: new Icon(
                        Icons.arrow_forward,
                        color: Color(0xFFF3C57F),
                        size: 26.0,
                      ),
                      shape: new CircleBorder(),
                      color: Color(0xFF776016),
                    ),
                  ))
                ],
              )
            ],
          ),
        ));
  }
}

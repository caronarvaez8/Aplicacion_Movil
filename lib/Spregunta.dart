import 'dart:convert';

import 'package:Mascotas/todo.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;
import 'package:Mascotas/todo.dart';

class Spregunta extends StatefulWidget {
  @override
  final String pregunta, pregunta1;
  Spregunta({Key key, @required this.pregunta, this.pregunta1})
      : super(key: key);

  _SpreguntaoState createState() => _SpreguntaoState(pregunta, pregunta1);
}

class _SpreguntaoState extends State<Spregunta> {
  @override
  final pregunta, pregunta1;
  _SpreguntaoState(this.pregunta, this.pregunta1);
  String use1 = "Selecione el tamaño";

  /// MARCAS
  Future<List> marcas() async {
    final reponde =
        await http.post("http://3.16.167.111/Aplicacion_Movil/tipos.php");

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

  List<String> marcas1 = ["Selecione el tamaño"];
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
    print(pregunta);
  }

  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Tamaño",
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
                    child: Image.asset("imagenes/expli.png"),
                    height: 180,
                    margin: EdgeInsets.only(top: (heightApp * .05)),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: (heightApp * 0.07)),
                      child: Text('¿De que tamaño quieres el perro?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32,
                              fontFamily: "cormorant",
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
                          margin: EdgeInsets.only(top: (heightApp * 0.09)),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: use1,
                            iconEnabledColor: Color(0xFF776016),
                            style: new TextStyle(
                                color: Color(0xFF776016),
                                fontSize: 21,
                                fontFamily: "cormorant"),
                            items: marcas1.map((String e) {
                              return DropdownMenuItem<String>(
                                child: Text(e),
                                value: e,
                              );
                            }).toList(),
                            onChanged: (mostrar) {
                              setState(() {
                                use1 = mostrar;
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
                    margin: EdgeInsets.only(top: (heightApp * 0.25)),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Todo(pregunta: pregunta, pregunta1: use1)),
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

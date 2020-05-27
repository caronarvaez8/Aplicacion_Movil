import 'dart:convert';

import 'package:Mascotas/todo.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;
import 'package:Mascotas/todo.dart';

class Spregunta extends StatefulWidget {
  @override
  _SpreguntaoState createState() => _SpreguntaoState();
}

class _SpreguntaoState extends State<Spregunta> {
  @override
  String use = "Selecione el tamaño";

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
                          margin: EdgeInsets.only(top: (heightApp * 0.1)),
                          alignment: Alignment.center,
                          child: const Text('¿De que tamaño desea el perro?',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "flower",
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF5C7E1F))),
                        ),
                      ],
                    ),
                  )),
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
                            value: use,
                            iconEnabledColor: Color(0xFF776016),
                            style: new TextStyle(
                                color: Color(0xFF776016),
                                fontSize: 20,
                                fontFamily: "cormorant"),
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
                    margin: EdgeInsets.only(top: (heightApp * 0.25)),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Todo()),
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

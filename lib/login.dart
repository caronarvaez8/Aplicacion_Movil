import 'dart:convert';

import 'package:Mascotas/inicio.dart';
import 'package:flutter/material.dart';
import 'package:Mascotas/registro.dart';
import 'package:Mascotas/BottomNavBar.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controllerUser = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();

  Future<List> loginU() async {
    final reponde = await http.post(
        "http://3.16.167.111/Aplicacion_Movil/login.php",
        body: {"correo": controllerUser.text, "contra": controllerPass.text});

    var dataUser = json.decode(reponde.body);
    if (dataUser["status"]) {
      /*
      Toast.show("LOGIN CORRECTO", context,
          duration: Toast.LENGTH_LONG,
          gravity: Toast.CENTER,
          backgroundColor: Colors.blue,
          textColor: Colors.white);
          */
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomNavBar()),
      );
    } else if (!dataUser["status"]) {
      Toast.show("Login incorrecto", context,
          duration: Toast.LENGTH_LONG,
          gravity: Toast.CENTER,
          backgroundColor: Color.fromRGBO(131, 78, 198, .9),
          textColor: Colors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: AnimatedContainer(
                duration: Duration(seconds: 5),
                width: widthApp * 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(131, 78, 198, .6),
                      Color.fromRGBO(131, 78, 198, .9),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          child: Image.asset("imagenes/perro.png"),
                          height: 300,
                        ),
                        Container(
                          child: Text(
                            "AdopDOG",
                            style: TextStyle(
                              fontFamily: "flower",
                              color: Color.fromRGBO(255, 255, 255, .9),
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          alignment: Alignment.topRight,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Center(
              child: Container(
                margin: EdgeInsets.only(top: (heightApp * 0.06)),
                width: widthApp * 0.75,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: controllerUser,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: (heightApp * 0.02)),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: controllerPass,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                                labelText: 'Contraseña',
                                prefixIcon: Icon(Icons.lock)),
                          ),
                        ],
                      ),
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
                height: 50.0,
                margin: EdgeInsets.only(top: (heightApp * 0.05)),
                child: RaisedButton(
                  onPressed: () {
                    loginU();
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(131, 78, 198, .6),
                            Color.fromRGBO(131, 78, 198, .9),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 225.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Iniciar sesión",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "flower",
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
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
                      margin: EdgeInsets.only(top: (heightApp * 0.07)),
                      child: Text(
                        "Si no tienes una cuenta puedes crearla aquí:",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(48, 48, 48, .7)),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: (heightApp * 0.02)),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Registro()),
                          );
                        },
                        child: const Text('Registrarse',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "flower",
                                fontWeight: FontWeight.w900,
                                color: Color(0xFFF5BA42))),
                      ))
                ],
              ),
            ))
          ],
        ),
      ],
    )));
  }
}

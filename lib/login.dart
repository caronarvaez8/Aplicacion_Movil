import 'package:flutter/material.dart';

import 'package:Mascotas/registro.dart';
import 'package:Mascotas/BottomNavBar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
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
                      Color.fromRGBO(132, 13, 153, .6),
                      Color.fromRGBO(132, 13, 153, .9),
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
                              color: Color.fromRGBO(0, 0, 0, .9),
                              fontSize: 35,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          alignment: Alignment.topRight,
                          //margin: EdgeInsets.only(top: (heightApp * 0.05))
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
                margin: EdgeInsets.only(top: (heightApp * 0.05)),
                width: widthApp * 0.75,
                child: Column(
                  children: <Widget>[
                    TextFormField(
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
                margin: EdgeInsets.only(top: (heightApp * 0.03)),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(132, 13, 153, .6),
                            Color.fromRGBO(132, 13, 153, .9),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Iniciar sesión",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            //  fontFamily: "flower",
                            fontSize: 20,
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
                    margin: EdgeInsets.only(top: (heightApp * 0.035)),
                    alignment: Alignment.center,
                    child: const Text('Olvidé mi contraseña',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(48, 48, 48, .9))),
                  ),
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
                                color: Color.fromRGBO(132, 13, 153, .9))),
                      ))
                ],
              ),
            ))
          ],
        ),
      ],
    ));
  }
}

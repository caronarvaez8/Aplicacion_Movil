import 'package:flutter/material.dart';
import 'package:Mascotas/colores.dart';
import 'package:Mascotas/registro.dart';
import 'package:Mascotas/inicio.dart';

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
        appBar: AppBar(
          title: Text(
            "Adopción de Mascotas",
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white
            ),
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
                  height: 130,
                  margin: EdgeInsets.only(top: (heightApp * .1)),
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset("imagenes/pp.png"),
                  height: 130,
                  margin: EdgeInsets.only(top: (heightApp * .1)),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        child: Text(
                          "Mascotas",
                          style: TextStyle(
                            color: Color.fromRGBO(184, 77, 231, .5),
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: (heightApp * 0.05))))
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
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Contraseña',
                              prefixIcon: Icon(Icons.lock)),
                        ),
                        Container(
                          height: 50.0,
                          margin: EdgeInsets.only(top: (heightApp * 0.05)),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Inicio()),
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(255, 81, 0, .5),
                                      Color.fromRGBO(128,0,128, .9),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth: 200.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: Text(
                                  "Iniciar sesión",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: (heightApp * 0.03)),
                          alignment: Alignment.center,
                          child: const Text('Olvidé mi contraseña',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(48, 48, 48, .9))),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: (heightApp * 0.05)),
                            child: Text(
                              "Si no tienes una cuenta puedes crearla aquí:",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(48, 48, 48, .7)),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: (heightApp * 0.01)),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Registro()),
                                );
                              },
                              child: const Text('Registrarse',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(99, 182, 233, .9))),
                            ))
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ],
        ));
  }
}

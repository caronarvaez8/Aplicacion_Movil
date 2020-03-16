import 'package:flutter/material.dart';
import 'package:mascotas/colores.dart';
import 'package:mascotas/registro.dart';

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
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  child: Image.asset("imagenes/aa.png"),
                  height: 100,
                  margin: EdgeInsets.only(top: (heightApp * .1)),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        child: Text(
                          "Iniciar Sesión",
                          style: TextStyle(
                              color: Color.fromRGBO(198, 145, 184, 1),
                              fontSize: 30),
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
                          decoration: InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Contraseña', prefixIcon: Icon(Icons.lock)),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: (heightApp * 0.05)),
                            child: RaisedButton(
                              color: Color.fromRGBO(198, 145, 184, 1),
                              onPressed: () {},
                              child: const Text('Iniciar Sesión',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: (heightApp * 0.05)),
                            child: Text(
                              "Si no tienes una cuenta puedes crearla aqui:",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(198, 145, 184, 1)),
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
                                      color: Color.fromRGBO(198, 145, 184, 1))),
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

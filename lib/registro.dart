import 'package:flutter/material.dart';
import 'package:mascotas/colores.dart';

class Registro extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
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



      body:Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: Container(
                alignment: Alignment.center,
                child: Image.asset("imagenes/aa.png"),
                height: 100,
                margin: EdgeInsets.only(top: (heightApp * .1)),
              ))
            ],
          ),
           Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Container(
                    width: widthApp * 0.8,
                    margin: EdgeInsets.only(top:heightApp*0.05),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                
                          decoration: InputDecoration(labelText: 'Nombre',prefixIcon: Icon(Icons.person)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Apellido',prefixIcon: Icon(Icons.person)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Celular',prefixIcon: Icon(Icons.phone_android)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Contraseña', prefixIcon: Icon(Icons.lock)),
                        ),
                         Container(
                            margin: EdgeInsets.only(top: (heightApp * 0.02)),
                            child: RaisedButton(
                              color: Color.fromRGBO(198, 145, 184, 1),
                              onPressed: () {},
                              child: const Text('Crear cuenta',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            )),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
        ],
      ),
    );
  }
}

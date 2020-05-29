import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Inicio extends StatefulWidget {
  @override
  final pregunta;

  const Inicio({Key key, this.pregunta}) : super(key: key);
  _InicioState createState() => _InicioState(pregunta);
}

class _InicioState extends State<Inicio> {
  final pregunta;
  _InicioState(this.pregunta);
  SharedPreferences sharedPreferences;
  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        title: Text(
          "Inicio",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "flower",
              fontSize: 35,
              fontWeight: FontWeight.w900),
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
                child: Image.asset("imagenes/in.png"),
                height: 180,
                margin: EdgeInsets.only(top: (heightApp * 0.05)),
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
                        margin: EdgeInsets.only(top: (heightApp * 0.06)),
                        child: Text(
                          "Adopta no compra",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              fontFamily: "flower",
                              color: Color(0xFF5C7E1F)),
                        )),
                    Container(
                        alignment: Alignment.center,
                        width: widthApp * 0.8,
                        margin: EdgeInsets.only(top: (heightApp * 0.03)),
                        child: Text(
                          "Encuentra el próximo integrante de la familia entre diferentes mascotas disposibles para adoptar en tu ciudad",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "cormorant",
                          ),
                        ))
                  ],
                ),
              ))
            ],
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  SharedPreferences sharedPreferences;
  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Inicio",
          
          style: TextStyle(color: Color.fromRGBO(1, 255, 255, .9),
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
                child: Image.asset("imagenes/chi.jpg"),
                height: 180,
                margin: EdgeInsets.only(top: (heightApp * .13)),
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
                      width: widthApp*0.5,
                        margin: EdgeInsets.only(top: (heightApp * 0.06)),
                        child: Text(
                          "Adopta no compra",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              fontFamily: "flower",
                              color: Color(0xFF840D99)),
                        )),
                    Container(
                      alignment: Alignment.center,
                  width: widthApp*0.8,
                    
                    margin: EdgeInsets.only(top: (heightApp * 0.03)),
                    child: Text(
                      "Encuentra el próximo integrante de la familia entre diferentes mascotas disposibles para adoptar en tu ciudad",
                      style: TextStyle(
                          fontSize: 20, color: Colors.black),
                    )
                        )
                  ],
                ),
              ))
            ],
          ),
        ],
      )
      ),
    );
  }
}


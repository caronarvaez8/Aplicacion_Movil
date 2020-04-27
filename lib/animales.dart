import 'package:flutter/material.dart';
import 'package:Mascotas/colores.dart';
import 'package:Mascotas/todo.dart';

class Animales extends StatefulWidget {
  @override
  _AnimalesState createState() => _AnimalesState();
}

class _AnimalesState extends State<Animales> {
  List<Map<String, String>> map1 = [
    {'Nombre': 'Dubli',
    'Edad': '2 Años',
    'Raza': 'Criollo'},
    {'Nombre': 'Muñeco',
    'Edad': '1 Años',
    'Raza': 'Pug'},
    {'Nombre': 'Milan',
    'Edad': '6 Meses',
    'Raza': 'chihuahua'}

  ];
  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adopción de Mascotas",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, .9),
          fontFamily: "flower",
          fontSize: 30,
          fontWeight: FontWeight.w800
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
        ),
        itemCount: map1.length,
        itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(2.0),
            child: Column(
             
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      child: Image.asset("imagenes/pp.png"),
                      height: 100,
                      margin: EdgeInsets.only(top: (heightApp * .02)),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Center(
                      child: Container(
                        
                          child: Column(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: (heightApp * 0.03)),
                              child: Text(
                                "Nombre: ${map1[index]['Nombre']}\n"+
                                "Edad: ${map1[index]['Edad']}\n"+
                                "Raza: ${map1[index]['Raza']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                    color: Color.fromRGBO(22, 114, 170, .9)),
                              ))
                        ],
                      )),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Center(
                            child: Container(
                      
                      margin: EdgeInsets.only(top: (heightApp * 0.02)),
                      child: RaisedButton(
                        color: Color.fromRGBO(99, 182, 233, .9),
                        child: Text('ver mas',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Todo()),
                          );
                        },
                      ),
                    ),))
                  ],
                )
              ],
            )),
      ),
    );
  }
}
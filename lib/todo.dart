import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  @override
  final String pregunta, pregunta1;
  Todo({Key key, @required this.pregunta, this.pregunta1}) : super(key: key);
  _TodoState createState() => _TodoState(pregunta, pregunta1);
}

class _TodoState extends State<Todo> {
  @override
  final pregunta, pregunta1;
  _TodoState(this.pregunta, this.pregunta1);
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Felicitaciones",
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, .9),
              fontFamily: "cormorant",
              fontSize: 30,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Image.asset("imagenes/gif.gif"),
                height: 210,
                margin: EdgeInsets.only(top: (heightApp * .03)),
              ))
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
                        width: widthApp * 0.8,
                        margin: EdgeInsets.only(top: (heightApp * 0.04)),
                        child: Text(
                          "Acabas de adoptar un perrito con esta especificaciones:",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              fontFamily: "cormorant",
                              color: Color(0xFF5C7E1F)),
                        )),
                    Container(
                        width: widthApp * 0.8,
                        margin: EdgeInsets.only(top: (heightApp * 0.02)),
                        child: Text(
                          " ${pregunta.toString()} y ${pregunta1.toString()}",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w900,
                            fontFamily: "cormorant",
                          ),
                        )),
                    Container(
                        width: widthApp * 0.8,
                        margin: EdgeInsets.only(top: (heightApp * 0.02)),
                        child: Text(
                          "gracias por la adopción",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              fontFamily: "cormorant",
                              color: Color(0xFF5C7E1F)),
                        ))
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}

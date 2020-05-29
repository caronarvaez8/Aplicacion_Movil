import 'package:flutter/material.dart';
import 'package:Mascotas/colores.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Tener en cuenta",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "cormorant",
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
                    width: widthApp * 0.8,
                    alignment: Alignment.center,
                    child: Image.asset("imagenes/cui.png"),
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
                            margin: EdgeInsets.only(top: (heightApp * 0.06)),
                            child: Text(
                              "¿Son tus hábitos de vida adecuados para el animal que tienes en mente?",
                              textAlign: TextAlign.center,
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
                              " El tamaño del mismo no es la única variable en la que tienes que pensar aquí­. Por ejemplo, algunos perros pequeños como los terriers son muy activos. Necesitan mucho ejercicio para poder calmarse, y generalmente ladran con cualquier ruido. Por otro lado, algunos perros grandes son muy tranquilos y están felices y contentos con sólo dormir en el sofá todo el dí­a. Antes de adoptar haz algo de investigación",
                              style: TextStyle(
                                  fontSize: 21, fontFamily: "cormorant"),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: (heightApp * 0.06)),
                            child: Text(
                              "¿Son tus hábitos de vida adecuados para el animal que tienes en mente?",
                              textAlign: TextAlign.center,
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
                              "Necesitarás tener amigos o vecinos de confianza o dinero para pagar a un refugio o un hostal.",
                              style: TextStyle(
                                fontSize: 21,
                                fontFamily: "cormorant",
                              ),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: (heightApp * 0.06)),
                            child: Text(
                              "¿Podrás ser un adoptante responsable?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "cormorant",
                                  color: Color(0xFF5C7E1F)),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: (heightApp * 0.02)),
                            width: widthApp * 0.8,
                            child: Text(
                              "Tener tu nuevo amigo esterilizado o castrado, obedecer las leyes comunitarias o las licencias, mantener puestos los chips de identificación en el animal son cosas que forman parte de ser un adoptante responsable. Por supuesto, dar al nuevo integrante de tu familia amor, compañerismo, ejercicio, una dieta sana y cuidado veterinario regular también son esenciales.",
                              style: TextStyle(
                                fontSize: 21,
                                fontFamily: "cormorant",
                              ),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: (heightApp * 0.06)),
                            child: Text(
                              "Por favor, Piensa antes de adoptar. Compartir tu vida con un compañero animal puede traer compensaciones increí­bles, pero sólo si estás dispuesto a dedicarle el necesario tiempo, dinero, responsabilidad y amor por el resto de su vida.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "cormorant",
                                  color: Color(0xFF776016)),
                            )),
                      ],
                    ),
                  ))
                ],
              ),
            ],
          ),
        ));
  }
}

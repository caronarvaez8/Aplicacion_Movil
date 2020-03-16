import 'package:flutter/material.dart';
import 'package:mascotas/login.dart';
import 'package:mascotas/colores.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: colorCustom,
      ),
      home:Login(),
    );
  }
}

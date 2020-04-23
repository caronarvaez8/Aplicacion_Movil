import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:Mascotas/expli.dart';
import 'package:Mascotas/inicio.dart';
import 'package:Mascotas/animales.dart';
void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  //GlobalKey _bottomNavigationKey = GlobalKey();

  int pageIndex = 0;
  final Inicio _inicio = Inicio();
  final Expli _expli = Expli();
  final Animales _animales = Animales();

  Widget _showPage = new Inicio();
  Widget todos(int index) {
    switch (index) {
      case 0:
        return _inicio;
      case 1:
        return _expli;
      case 2:
        return _animales;

        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(

         // initialIndex : 0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.pets, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Color(0xFFFAC921),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = todos(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Color(0xFFFAC921),
          child: Center(
            
            child: _showPage,
          ),
        ));
  }
}
import 'package:flutter/material.dart';
import 'package:Mascotas/expli.dart';
import 'package:Mascotas/inicio.dart';
import 'package:Mascotas/todo.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _selectedTab = 0;
  final _pageOptions = [
    Inicio(),
    Todo(),
    Expli(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _pageOptions[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Perros'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Por que'),
          ),
        ],
      ),
    );
  }
}

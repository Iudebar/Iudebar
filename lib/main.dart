import 'package:flutter/material.dart';
import 'sintomas.dart';
import 'tela_login.dart';
import 'escolha.dart';
import 'prevencao.dart';

void main() {
  runApp(MaterialApp(
    home: MeuApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MeuApp extends StatefulWidget {
  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  int indiceAtual = 0;

  List telas = [
    TelaLogin(),
    Escolha(),
    Sintomas(),
    Prevencao(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: telas[indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indiceAtual,
        onTap: quandoClicar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.login, color: Colors.white),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Escolha',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info, color: Colors.white),
            label: 'Sintomas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety, color: Colors.white),
            label: 'Prevenção',
          ),
        ],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  void quandoClicar(int index) {
    setState(() {
      indiceAtual = index;
    });
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      
        appBar: AppBar(
          title: Text('Contador de Clicks'), 
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text('Número de clicks: $contador'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: aumentaContador, 
          child: Text('+')
        ),
      ),
    );
  }

  void aumentaContador() {
    setState(() { // Ele chama o metodo build novamente: 'renderiza a tela'
      contador++;
    });
  }
}
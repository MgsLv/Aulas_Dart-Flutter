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
  int pontosNos = 0, pontosEles = 0, partidasNos = 0, partidasEles = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Marcador Truco ♠️♥️♣️♦️'),
          backgroundColor: Colors.blueAccent[700],
          actions: [Icon(Icons.refresh)],
        ),
        body: Center(

          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Nós',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$pontosNos',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: () => aumentaPontosNos(1), child: Text('+1')),
                        ElevatedButton(onPressed: () => aumentaPontosNos(3), child: Text('+3')),
                        ElevatedButton(onPressed: diminuiPontosNos, child: Text('-1')),
                      ],
                    ),
                    SizedBox(height: 40),
                    Text('Partidas $partidasNos', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Eles',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$pontosEles',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: () => aumentaPontosEles(1), child: Text('+1')),
                        ElevatedButton(onPressed: () => aumentaPontosEles(3), child: Text('+3')),
                        ElevatedButton(onPressed: diminuipontosEles, child: Text('-1')),
                      ],
                    ),
                    SizedBox(height: 40),
                    Text('Partidas $partidasNos', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void refresh() {
    pontosNos = 0;
    pontosEles = 0;
    partidasNos = 0;
    partidasEles = 0;
  }

  void aumentaPontosNos(int pontos) {
    setState(() {
      pontosNos += pontos;
      if (pontosNos >= 12) {
        pontosNos = 0;
        pontosEles = 0;
        partidasNos++;
      }
    });
  }

  void diminuiPontosNos() {
    setState(() {
      pontosNos--;
      pontosNos = pontosNos < 0 ? 0 : pontosNos; 
    });
  }

  void aumentaPontosEles(int pontos) {
    setState(() {
      pontosEles += pontos;
      if (pontosEles >= 12) {
        pontosEles = 0;
        pontosEles = 0;
        partidasEles++;
      }
    });
  }

  void diminuipontosEles() {
    setState(() {
      pontosEles--;
      pontosEles = pontosEles < 0 ? 0 : pontosEles; 
    });
  }
}

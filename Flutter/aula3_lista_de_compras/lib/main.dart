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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Lista de Compras ✅", 
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 55, 42, 232),  
          
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'produto',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(90)),
                  ),
                ),
                ElevatedButton(onPressed: null, child: Text('Adicionar')),
                Expanded(
                  child: ListView.builder(
                    itemCount: 6, // quantidade de itens
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text('$index'),
                        title: Text('Protudo $index'),
                        subtitle: Text('Qtd $index'),
                        trailing: IconButton(onPressed: null, icon: Icon(Icons.delete)),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}

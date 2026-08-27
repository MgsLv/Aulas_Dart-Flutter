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
  List produtos = [];
  // identificação do TextView
  TextEditingController produtoControler = TextEditingController(); 

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
              spacing: 20,
              children: [
                TextField(
                  controller: produtoControler,
                  decoration: InputDecoration(
                    labelText: 'produto',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(90)),
                  ),
                ),
                ElevatedButton(onPressed: adicionarProduto, child: Text('Adicionar')),
                Expanded(
                  child: ListView.builder(
                    itemCount: produtos.length, // quantidade de itens
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Text('${index + 1}'),
                          title: Text('${produtos[index]}'),
                          trailing: IconButton(onPressed: () => removerProduto(index), icon: Icon(Icons.delete)),
                        ),
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

  void adicionarProduto() {
    // limpem o campo apos add
    // nao add produto vazio

    setState(() {
      String produto = produtoControler.text;
      if (produto.trim().isNotEmpty) {
        produtos.add(produto);
      }
      // produtoControler.text = ""; equivalente
      produtoControler.clear();
    });
    
    // print(produtos); ?
  }

  void removerProduto(int index) {
    setState(() {
      produtos.removeAt(index);
    });
  }

}

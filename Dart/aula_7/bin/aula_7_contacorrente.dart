import 'dart:collection';

class ContaCorrente{
  // Classes são utilizadas para organizar informações de um sistema
  // É composta de: atributos (variáveis da classe declaradas no seu início) e métodos (ações)

  // atributos: informações da classe
  double saldo = 0;

  // late é usado para inicializar um atributo (variável específica da classe) mais tarde
  late String titular;

  List ops = [];

  //ContaCorrente(this.titular, this.saldo);

  // métodos: ações
  void depositar(double valor){
    // Parâmetro "()" é o que precisa para se usar o método,
    // o que o método precisa receber para ser executado
    saldo += valor;
    ops.add('Depósito: $valor');
  }

  void sacar(double valor){
    if (saldo >= valor){
      saldo -= valor;
      ops.add('Saque: $valor');
    } else {
      print("Saldo insuficiente!");
    }
  }

  void transferir(double valor, ContaCorrente contaDest){
    if (saldo >= valor){
      saldo -= valor; // sai da minha conta // entra na conta de destino
      ops.add('Tranferência: $valor - Para: ${contaDest.titular}');
      contaDest.ops.add('Tranferência: $valor - De: $titular');
    } else {
      print("Saldo insuficiente!");
    }
  }

  imprimirEstrato(ContaCorrente conta) {
    print("***************Estrato de ${conta.titular}***************");
    for (var operacao in ops) {
      print(operacao);
    }
  }
}

void main(List<String> args) {
  /*ContaCorrente c1 = ContaCorrente('Daniel', 0);
  c1.depositar(500);

  print("Saldo de ${c1.titular} : ${c1.saldo}");
  
  ContaCorrente c2 = ContaCorrente('Samuel', 1000);
  c2.depositar(1000);

  c2.transferirMiguel(c2, c1, 500);*/

  // Lado esquerdo é para criar um variável da classe para chamar seus métodos e atributos
  // Lado direito é para inicializar a classe para o objeto ser criado
  ContaCorrente c1 = ContaCorrente();
  c1.titular = "Daniel";
  c1.depositar(500);
  c1.depositar(700);
  print("Saldo de ${c1.titular}: ${c1.saldo}");

  ContaCorrente c2 = ContaCorrente();
  c2.titular = "Samuel";
  c2.depositar(500);
  c2.depositar(700);
  print("Saldo de ${c2.titular}: ${c2.saldo}");

  print("Após a tranferência:");
  
  c2.transferir(250, c1);
  print("Saldo de ${c2.titular}: ${c2.saldo}");
  print("Saldo de ${c1.titular}: ${c1.saldo}");

  c1.transferir(350, c2);
  print("Saldo de ${c1.titular}: ${c1.saldo}");
  print("Saldo de ${c2.titular}: ${c2.saldo}");

  // Estratos bancários da conta c1
  c1.imprimirEstrato(c1);

  // Estratos bancários da conta c2
  c2.imprimirEstrato(c2);
}

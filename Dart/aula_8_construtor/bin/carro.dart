class Carro {
  late String modelo;
  late String marca;
  late double veloMax;
  double veloAtual = 0;
  bool ligado = false;

  /*
    Carro(String nomeMod, double veloMaxP){
      modelo = nomeMod;
      veloMax = veloMaxP;
      print("Passando por aqui...");
    }
  */

  // Contrutor formal initializing: equivalente ao de cima
  Carro({this.modelo : "", this.marca : ""}, this.veloMax);
  // O que estiver dentro das chaves ({}) é opicional 
  // (se o usuario digitar, então é o que ele deu, se não, a variável fica vazia)

  void ligar(){
    ligado = true;
    print("Carro ligado.");
  }

  void desligar(){
    ligado = false;
    veloAtual = 0;
    print("Carro desligado.");
  }

  void frear(double qtd){
    veloAtual -= qtd;
    veloAtual = veloAtual < 0 ? 0 : veloAtual;
    print("Freio ativado. Velocidade atual do ${modelo}: $veloAtual");
  }

  void acelerar(double qtd){
    if (ligado) {
      veloAtual += qtd;
      veloAtual = veloAtual > veloMax ? veloMax : veloAtual;
      print("Acelerador ativado. Velocidade atual do ${modelo}: $veloAtual");
    } else {
      print("O carro não está ligado.");
    }
  } 
}
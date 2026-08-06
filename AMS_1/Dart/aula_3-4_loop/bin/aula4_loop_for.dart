import 'dart:io';

void main(List<String> arguments) {
  loop6();
}

void loop1() {
  for(int i = 1; i <= 10; i++) {
    print('Nº exec: $i ');
  }
}

void loop2() {
  // Contagem regressiva
  // 10, 9, 8... LANÇAR
  print('Lançamento em T-:');
  for(int i = 10; i >= 0; i--) {
    print('$i');
  }
  print('LANÇAR');
}

void loop3() {
  // Imprimir a somatória de 1 a 100
  // 1 + 2 (3) + 3 (6) + 4 (10)...
  int val = 0;
  for(int i = 1; i <= 100; i++) {
    val = val + i;
    //print('$val'); imprime todas as somas
  }
  print('$val'); // Imprime apenas o valor final (5050)
}

void loop4() {
  // Tabuada
  int numero = 4;
  print('TABUADA DO $numero');
  for (int i = 1; i <= 10; i++) {
    // int resultado = numero * i;
    // print('$numero x $i = $resultado');
    print('$numero x $i = ${numero*i}');
  }
}

void loop5() {
  for (int n = 1; n <= 10; n++) {
    print('Tabuada do $n');
    for (int i= 1; i <= 10; i++){
      print('$n x $i = ${n*i}');
    }
    print('\n');
  }
}

void loop6() {
  // Imprimir a sequencia de fibonacci até a 20ª casa
  int ant = 0, atual = 1;
  for (int i = 0; i <= 20; i++) {
    stdout.write('$atual, ');
    int temp = atual;
    atual = atual + ant;
    ant = temp;
  }
}
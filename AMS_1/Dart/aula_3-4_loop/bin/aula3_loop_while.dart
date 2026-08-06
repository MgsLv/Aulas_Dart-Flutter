import 'dart:io';

void main(List<String> arguments) {
  desafio1();
}

void loop1(){
  /* 
  Loop infinito
    while(true) {
      print('Dart');
    }
    while(2 > 1) {
      print('Dart');
    }
    int i = 1;
    while(i <= 10){
    print('Dart');
    } 
  */

  // Valor inicial, condição de parada e incremento
  int i = 1;
  while(i <= 10){
    print('Dart');
    i++;
  }
}

void loop2() {
  // Imprima uma contagem regressiva:
  // 10, 9, 8 ... 0 LANÇAR
  /*int i = 10;
  while(i >= 0){
    print(i);
    if (i == 0){
      print('LANÇAR!');
    }
    i--;
  }
  OU*/
  int i = 10;
  while(i >= 0){
    stdout.write('$i ');
    i--;
  }
  print('LANÇAR!');
} 

void loop3(){
  // NÚMEROS PARES DE 1 A 100
  int i = 1;
  while(i <= 1000) {
    if (i%2 == 0){
      stdout.write('$i ');
    }
    i++;
  }
  /*OU
  int i = 2;
  while (i <= 100){
    print('$i);
    i = i + 2;
  }*/
}

void loop4() {
  // Imprima a somatória dos números de 1 a 10, na seguinte forma:
  // 1 3 6 10 ... 
  int i = 1;
  int total = 0;
  while (i <= 10){
    total = total + i;
    print(total);
    i++;
  }
}

void loop5(){
  int mist = 1;
  int i = 5;
  while(i >= 1) {
    mist = mist * i;
    i--;
  }
  print(mist);
  // Ao usar um debug, a linha com o breakpoint ainda não foi executada
}

void desafio1(){
  // Pirâmide de Pascal
  int i = 1;
  while (i <= 20) {
    int j = 1;
    while (j <= i) {
      stdout.write(j);
      j++;
    }
    print('');
    i++;
  }
}

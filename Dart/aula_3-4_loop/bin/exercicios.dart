import 'dart:vmservice_io';

void main(List<String> arguments){
  ex10();
}

void ex1() {
  double saldo = 500.50;
  if (saldo >= 0) {
    print('Saldo Atual: $saldo, POSITIVO.');
  } else {
    print('Saldo Atual: $saldo, NEGATIVO.');
  }
}

void ex2() {
  int n1 = 4, n2 = 8, n3 = 7, n4 = 10;
  double media = (n1 + n2 + n3 + n4)/4;
  if (media >= 7) {
    print('Média: $media, ALUNO APROVADO.');
  } else if (media >= 5) {
    print('Média: $media, EXAME DE RECUPERAÇÃO.');
  } else {
    print('Média: $media, ALUNO REPROVADO.');
  }
}

void ex3() {
  int peso = 45, idade = 17;

  if (peso >= 50 && idade >= 18) {
    print('Doação Aprovada.');
  } else if (peso < 50 && idade >= 18) {
    print('Idade inválida! Doação Reprovada.');
  } else if (peso > 50 && idade < 18) {
    print('Idade inválida! Doação reprovada.');
  } else {
    print('Doação Reprovada.');
  }
}

void ex4() {
  int l1 = 5, l2 = 3, l3 = 2;

  if (l1 == l2 && l1 == l3) {
    print('O triangulo é equilátero.');
  } else {
    print('O triangulo não é equilátero.');
  }
}

void ex5() {
  int v1 = 5, v2 = 5;
  if (v1 > v2) {
    print('O número $v1 é MAIOR que $v2.');
  } else if (v1 < v2) {
    print('O número $v2 é MAIOR que $v1');
  } else {
    print('Os números $v1 e $v2 são IGUAIS.');
  }
}

void ex6() {
  int v1 = 3, v2 = 3, v3 = 5;
  if (v1> v2 && v1 > v3) {
    print('O número $v1 é MAIOR.');
  } else if (v2 > v1 && v2 > v3) {
    print('O número $v2 é MAIOR');
  } else if (v3 > v1 && v3 > v2) {
    print('O número $v3 é MAIOR');
  } else if (v1 == v2 && v2 == v3) {
    print('Os números $v1, $v2 e $v3 são todos IGUAIS.');
  } else if (v1 == v2 || v1 == v3 && v1 > v3 || v1 > v2) {
    print('O número $v1 é MAIOR.');
  }
}

void ex7() {
  int l1 = 5, l2 = 3, l3 = 2;

  if (l1 == l2 && l1 == l3) {
    print('Triangulo equilátero.');
  } else if (l1 == l2 || l2 == l3) {
    print('Triangulo Isócels');
  } else {
    print('Triangulo de lados diferentes');
  }
}

void ex8 () {
  int v1 = -10, v2 = 3, v3 = 5, v4 = -4, v5 = 9;

  if (v1 < 0) {
    print('Primeiro valor: $v1');
  } else {
    print('O primeiro valor não é negativo.');
  }
  if (v2 < 0) {
    print('Segundo valor: $v2');
  } else {
    print('O segundo valor não é negativo.');
  } 
  if (v3 < 0) {
    print('Terceiro valor: $v3');
  } else {
    print('O terceiro valor não é negativo.');
  }
  if (v4 < 0) {
    print('Quarto valor: $v4');
  } else {
    print('O quarto valor não é negativo.');
  }
  if (v5 < 0) {
    print('Quinto valor: $v5');
  } else {
    print('O quinto valor não é negativo.');
  }
}

void ex9() {
  int idade = 17;

  if (idade < 18) {
    print('Voto proibido.');
  } else if (idade >= 70) {
    print('Voto opcional.');
  } else {
    print('Voto obrigatório.');
  }
}

void ex10() {
  int mes = 2;

  switch (mes) {
    case 1:
      print('Janeiro');
      break;
    case 2:
      print('Fevereiro');
      break;
    case 3:
      print('Março');
      break;
    case 4:
      print('Abril');
      break;
    case 5:
      print('Maio');
      break;
    case 6:
      print('Junho');
      break;
    case 7:
      print('Julho');
      break;
    case 8:
      print('Agosto');
      break;
    case 9:
      print('Setembro');
      break;
    case 10:
      print('Outubro');
      break;
    case 11:
      print('Novembro');
      break;
    case 12:
      print('Dezembro');
      break;
  }
}

void ex11() {
  int mes = 2;

  switch (mes) {
    case 1:
      print('Janeiro');
      break;
    case 2:
      print('Fevereiro');
      break;
    case 3:
      print('Março');
      break;
    case 4:
      print('Abril');
      break;
    case 5:
      print('Maio');
      break;
    case 6:
      print('Junho');
      break;
    case 7:
      print('Julho');
      break;
    case 8:
      print('Agosto');
      break;
    case 9:
      print('Setembro');
      break;
    case 10:
      print('Outubro');
      break;
    case 11:
      print('Novembro');
      break;
    case 12:
      print('Dezembro');
      break;
    default:
      print('Opção inválida! Use números de 1 a 12.');
      break;
  }
}
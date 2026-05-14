void main(List<String> arguments) {
  exemplo8();
}

//

void exemplo1(){
  double n1 = 7;
  double n2 = 9;
  double media = (n1 + n2) / 2;

  // Quando o if tem apenas um comando (e apenas se), 
  // não é necessário que use chaves, 
  // mas é uma boa prática
  if (media >= 6){
    print('Aprovado.');
  } 
  else {
    print('Reprovado.');
  }
}
 
void exemplo2(){
  double n1 = 7;
  double n2 = 9;
  double media = (n1 + n2) / 2;
  int faltas = 30;

  // aprovado: media >= 6 e faltas < 20
  if (media >= 6 && faltas < 20){
    print('Aprovado.');
  } 
  else {
    print('Reprovado.');
  }
}

void exemplo3() {
  // Dados a idade e se o cliente é amigo do dono
  // imprima pode entrar se ele for maior de idade ou se for amigo do dono

  int idade = 18;
  bool amigo = false;

  if (idade >= 18 || amigo) {
    print('Pode entrar.');
  } else {
    print('Não pode entrar.');
  }
}

void exemplo4() {
  // Dados 3 números inteiros distintos, imprima-os em ordem crescente
  int v1 = 7, v2 = 3, v3 = 4;
  
  // Maneira errada, que gasta processamento (cada if é processado de forma independente)
  /* if (v1 <= v2 && v1 <= v3){
    if (v2 <= v3){
      print('$v1 - $v2 - $v3');
    } else {
      print('$v1 - $v3 - $v2');
    }
  } 
  if (v2 <= v1 && v2 <= v3){
    if (v1 <= v3){
      print('$v2 - $v1 - $v3');
    } else {
      print('$v2 - $v3 - $v1');
    }
  } 
  if (v3 <= v2 && v3 <= v1){
    if (v1 <= v2){
      print('$v3 - $v1 - $v2');
    } else {
      print('$v3 - $v2 - $v1');
    }
  } */

  // Maneira correta (todos os if's, else's e else if's fazem parte da mesma estrutura if)
  if (v1 <= v2 && v1 <= v3){
    if (v2 <= v3){
      print('$v1 - $v2 - $v3');
    } else {
      print('$v1 - $v3 - $v2');
    }
  } 
  else if (v2 <= v1 && v2 <= v3){
    if (v1 <= v3){
      print('$v2 - $v1 - $v3');
    } else {
      print('$v2 - $v3 - $v1');
    }
  } 
  else {
    if (v1 <= v2){
      print('$v3 - $v1 - $v2');
    } else {
      print('$v3 - $v2 - $v1');
    }
  }
}

void exemplo5() {
  // Dada a media, imprima o conceito 
  // >= 9 - MB
  // >= 7 - B
  // >= 5 - R
  //  < 5 - I
  double media = 10;

  if (media >= 9) {
    print('Nota: MB - Parabéns, continue assim! :D');
  } 
  else if(media >= 7) {
    print('Nota: B - Muito bem, mas dá para melhorar. ;');
  } 
  else if(media >= 5) {
    print('Nota: R - Dava para ser mais, não acha? :|');
  } 
  else {
    print('Nota: I - Não foi dessa vez. :(');
  }
}

void exemplo6() {
  // Dada a sigla dos estados do sudeste, imprima o número inteiro
  // ex: SP - São Paulo
  String uf = 'SP';

  switch (uf) {
    case 'ES':
      print('Espirito Santo');
      break;
    case 'MG':
      print('Minas Gerais');
      break;
    case 'RJ':
      print('Rio de Janeiro');
      break;
    case 'SP':
      print('São Paulo');
      break;
    case '':
      print('Nenhum UF inserido.');
    default:
      print('Opção inválida!');
  }
}

void exemplo7() {
  // Dado o número do mês, imprima o seu nome
  // ex: 3 - Março

  int mes = 13;

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
      print('Número inválido.');
  }
}

void exemplo8() {
  // Operador ternário: if else simples, com apenas uma codição
  // Dado a idade imprimir se a pessoa é maior ou menor de idade
  int idade = 18;
  print(idade >= 18 ? 'Maior de Idade.' : 'Menor de Idade.');

  // Não permita valor negativo
  idade = -4;
  idade = idade < 0 ? 0 : idade;

  /* No flutter vamos usar assim:

    body(
      Center: lista.isEmpty ? "vazia" : lista
    );
  */
}


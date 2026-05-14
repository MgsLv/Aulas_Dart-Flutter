import 'dart:async';

main() {
  int cem, cinq, vinte, dez, cinco, dois, valor, total;
  valor = 975;

  cem = (valor/100).toInt();
  valor = valor % 100;
  cinq = (valor/50).toInt();
  valor = valor % 50;
  vinte = (valor/20).toInt();
  valor = valor % 20;
  dez = (valor/10).toInt();
  valor = valor % 10;
  cinco = (valor/5).toInt();
  valor = valor % 5;
  dois = (valor/2).toInt();

  total = cem + cinq + vinte + dez + cinco + dois;

  print('Cédulas a serem usadas:');
  print('=======================================');   
  print('Notas de R\$100:  $cem');
  print('Notas de R\$50:   $cinq');
  print('Notas de R\$20:   $vinte');
  print('Notas de R\$10:   $dez');
  print('Notas de R\$5:    $cinco');
  print('Notas de R\$2:    $dois');
  print('Total de notas:  $total');

}
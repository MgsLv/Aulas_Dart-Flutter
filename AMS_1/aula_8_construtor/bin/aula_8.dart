import 'package:aula_8/aula_8.dart' as aula8_construtor;
import 'carro.dart';

void main(List<String> arguments){
  Carro carro1 = Carro(modelo: "Fusca", 250.00);
  Carro carro2 = Carro(modelo: "Chevete", marca: "Chevrolet", 250.00);
  Carro carro3 = Carro(250.00);

  print("===============================================");
  print("Modelo: ${carro1.modelo} ");
  print("Velocidade Máxima: ${carro1.veloMax}");
  print("===============================================");
  
  carro1.acelerar(100);  

  carro1.ligar();
  carro1.acelerar(100);

  carro1.acelerar(200);
  
  carro1.frear(50);
  carro1.frear(70);
  
  carro1.desligar();
}
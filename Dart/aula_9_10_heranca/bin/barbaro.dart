import 'personagem.dart';
class Barbaro extends Personagem{
  late int furia;

  // A classe filha tem que repassar os atributos para a classe Mãe
  //  usando o 'super' para diferenciar os atributos da Mãe e os seus próprios
  
  // Barbaro(super.nome, super.vida, super.forca, super.defesa) - versão "completa"
  
  // nome vai ter que ser informado ao instanciar o barbaro
  //  o resto é passado direto para a classe mãe
  Barbaro(String nome):super(nome, 1000, 200, 120); // versão simplificada passando alguns valores obrigatórios
  
  
  // Atributos que não foram declarados na classe são indicativos de que ela é 
  //  uma classe filha (se extende de uma classe Mãe)
  void furiaAlta(Personagem oponente){
    int dano = forca * furia - oponente.defesa;
    dano = dano <= 0 ? 0 : dano;
    oponente.vida -= dano;
    if(oponente.vida <= 0){
      print('${oponente.nome} morreu.');
    }
  }
  
  @override
  void golpeEspecial() {
    print("Golpe especial do bárbaro");
  }
}
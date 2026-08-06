// abstract: não pode instanciar essa classe
abstract class Personagem{
  late String nome;
  late int vida;
  late int forca;
  late int defesa;

  // Todos os atributos dentro das chaves "{}" é obrigatório
  Personagem(this.nome, this.vida, this.forca, this.defesa);

  // Ao colocar o construtor com valores obrigatórios, é necessário 
  //  as classes filhas repassarem esse valores para a classe Mãe

  // Na Classe Mãe não tem nenhum indicativo de que ela é uma Classe Mãe 
  void socoForte(Personagem oponente) {
    int dano = forca - oponente.defesa;
    dano = dano <= 0 ? 0 : dano;
    oponente.vida -= dano;
    if(oponente.vida <= 0){
      print('${oponente.nome} morreu.');
    }
  }

  // Método abstrato 
  void golpeEspecial();
  // não tem corpo e precisa ser reescrito (em todas as classes)

  /*
    ->  Herança: 
      - Não repetir código
      - Manutenção mais fácil
      - Usar um único parâmetro (classe Mãe) ao invés   
        de todas as classes como parâmetros separados

      * Tipos de erros (cai na prova):
        - Criei uma herança e deu um erro, o que pode ser:

          - Classe abstrata
          - Método abstrato faltando
  
    -> Polimorfismo
      - Referenciar um personagem de formas diferentes 
        (barbaro, mago etc)
      - 
  */
  
}
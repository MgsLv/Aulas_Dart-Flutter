import 'personagem.dart';
class Boss extends Personagem{
  Boss(String nome):super(nome, 3000, 300, 140); 
  
  // Se os métodos da classe Mãe e classe Filha tem o (exato) mesmo nome
  //  passa a valer o da Filha: REESCRITA (@override)
  
  // Não é obrigatório, mas dá erro em outras linguagens se não
  //  for exatamente o mesmo nome, além de ser recomendado como boa prática

  @override 
  void socoForte(Personagem oponente){
    int dano = 2*forca - oponente.defesa;
    dano = dano <= 0 ? 0 : dano;
    oponente.vida -= dano;
    if(oponente.vida <= 0){
      print('${oponente.nome} morreu.');
    }
  }
}
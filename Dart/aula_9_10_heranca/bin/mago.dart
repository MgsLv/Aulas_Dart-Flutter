import 'personagem.dart';

class Mago extends Personagem {
  Mago(String nome):super(nome, 700, 150, 100);

  int mana = 0;

  // Generic: List<Tipo> - A lista só recebe aquele tipo
  void armageddon(List<Personagem> oponentes) {
    // Verificação para clean code: só continua se for true,
    // se não, para o código aqui mesmo, sem precisar usar um
    // monte de else
    if (mana < 67) return;
    for (Personagem oponente in oponentes) {
      int dano = forca * mana - oponente.defesa;
      dano = dano <= 0 ? 0 : dano;
      if (oponente.vida <= 0) {
        print('${oponente.nome} morreu.');
      }
    }
    // Atalho para tabular todo o código: Shift + Alt + F
    mana -= 67;
  }
}

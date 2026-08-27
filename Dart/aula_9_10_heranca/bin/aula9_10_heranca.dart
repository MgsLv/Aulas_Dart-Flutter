import 'package:aula9_10_heranca/aula9_10_heranca.dart' as aula9_10_heranca;
import 'personagem.dart';
import 'barbaro.dart';
import 'mago.dart';

void main(List<String> arguments) {
  
  // Não pode instanciar classe abstract (proposital para evitar erros)
  // Personagem p = Personagem();
  
  /** Antes do método construtor
    Barbaro b1 = Barbaro();
    b1.nome = 'Soluço';
    b1.vida = 1000;
    b1.forca = 200;
    b1.defesa = 100;

    Barbaro b2 = Barbaro();
    b2.nome = 'Tobias';
    b2.vida = 1000;
    b2.forca = 200;
    b2.defesa = 100;

    Mago m1 = Mago();
    m1.nome = 'Merlin';
    m1.vida = 135;
    m1.forca = 50;
    m1.defesa = 700;
    m1.mana = 67; 
  */

  // Depois do método construtor
  Barbaro barbaro1 = Barbaro('Soluço');
  Barbaro barbaro2 = Barbaro('Tobias');

  Mago mago1 = Mago('Merlin');

  mago1.socoForte(barbaro1);
  mago1.mana = 67;
  mago1.armageddon([barbaro1, barbaro2]);
  print(barbaro1.vida);
  print(barbaro2.vida);

  barbaro1.socoForte(mago1);
  print(mago1.vida);
  barbaro1.furia = 5;
  barbaro1.furiaAlta(mago1);

  // Herança de Herança pode, classe com mais de uma classe Mãe (Herança multipla) 
  // não pode (exceto em uma bibliotena do Flutter)
}

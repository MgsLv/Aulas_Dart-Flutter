import 'package:aula_9/aula_9.dart' as aula_9;
import 'play_list.dart';

void main(List<String> arguments) {
  List lista_musicas = [];

  lista_musicas.add("Through Heaven's Eyes");
  lista_musicas.add("Folow the Light");
  lista_musicas.add("Deliver Us");
  lista_musicas.add("Miracle Child");
  lista_musicas.add("Why my God");
  lista_musicas.add("The Plagues");
  lista_musicas.add("When you belive");

  Player player1 = Player(lista_musicas);

  // Player ligado

  player1.ligar();
  player1.ligar();
  player1.mostrarMusicasPlayList();
  
  player1.pausar();
  player1.continuar();
  
  player1.aumentarVolume(1000);
  player1.diminuirVolume(70);
  player1.diminuirVolume(30);

  player1.aumentarVolume(-10);
  player1.diminuirVolume(-10);

  player1.prox_mus();
  player1.prox_mus();
  player1.prox_mus();
  player1.ant_mus();
  
  player1.mostrarMusicasPlayList();
  player1.irParaMus(4);
  player1.irParaMus(-3);
  player1.irParaMus(200);
  player1.irParaMus(-200);

  // Player desligado

  player1.desligar();
  player1.desligar();

  player1.tocandoAgora();
  player1.mostrarMusicasPlayList();
  player1.pausar();
  player1.continuar();
  player1.aumentarVolume(100);
  player1.diminuirVolume(100);
  player1.prox_mus();
  player1.ant_mus();
  player1.irParaMus(5);
}

/*
  +================================+    |   ATIVIDADE COMPLEMENTAR (Nota adicional para a P1):
  |Player (PlayList):              |    |   * Declarar a Classe Player
  +================================+    |   * Testar todos os métodos
  |- playList: List                |    |   * Em dupla (max)
  |- id_Musica_Atual: int          |    |   * Terminou, me chama
  |- volume_Atual: int             |    |   * Não sei de nada!
  |- volume_Max: int               |    |   * Se usar IA, vou saber (E ZERAR)
  +================================+    |   * Se mandarem uns p/ os outros, vou saber (E ZERAR)
  | aumentar(int) \ Mostrar        |    |   * Usem os 2 ex. das aulas
  | diminuir(int) / volume após    |    |
  | prox_mus()      \              |    |
  | ant_mus()        + Mostrar     |    |
  | irParaMus(int)  /  nom musica  |    |
  |                    apos        |    |
  +================================+    |
*/

import 'dart:async';

class Player{
  late List playList = [];
  int id_Musica_Atual = 0;
  bool ligado = false;
  bool pausado = false;
  int volume_Atual = 0;
  int volume_Max = 200;

  String separador = "+=================================================+";

  Player(this.playList);

  void ligar(){
    if (!ligado){
      ligado = true;
      print("| Player ligado. Tocando agora a música: ${playList[id_Musica_Atual]}");
    } else {
      print("=> O Player já está ligado.");
    }
  }

  void desligar(){
    if (ligado){
      ligado = false;
      print("| Desligando Player.");
    } else {
      print("=> O Player já está desligado.");
    }
  }

  void tocandoAgora(){
    if (ligado){
      print("Tocando agora música ${id_Musica_Atual + 1}: ${playList[id_Musica_Atual]}");
    } else {
      print("=> O Player está desligado. Nenhuma música sendo tocada no momento.");
    }
  }

  void mostrarMusicasPlayList(){
    if (ligado){
      print(separador);
      print("| Musicas da PlayList:");
      print(separador);
      for (int id = 0; id < playList.length; id++){
        print("| - Musica ${id + 1}: ${playList[id]}");
      }
      print(separador);
      tocandoAgora();
    } else {
      print("=> O Player não está ligado.");
    }
  }

  void pausar(){
    if (ligado) {
      pausado = true;
      print("|| Música ${playList[id_Musica_Atual]} pausada");
    } else {
      print("=> O Player está desligado. Nenhuma música sendo tocada no momento.");
    }
  }

  void continuar(){
    if (ligado){
      pausado = false;
      print("|> Continuar música ${playList[id_Musica_Atual]}");
    } else {
      print("=> O Player está desligado. Nenhuma música sendo tocada no momento.");
    }
  }

  void aumentarVolume(int valor) {
    valor = valor > 0 ? valor : valor *= -1;
    if (ligado){
      volume_Atual += valor;
      volume_Atual = volume_Atual > volume_Max ? volume_Max : volume_Atual;
      print("++ Aumentando volume em $valor. Volume atual: $volume_Atual");
    } else {
      print("=> O Player está desligado.");
    }
  }

  void diminuirVolume(int valor) {
    valor = valor > 0 ? valor : valor *= -1;
    if (ligado){
      volume_Atual -= valor;
      volume_Atual = volume_Atual < 0 ? 0 : volume_Atual;
      print("Diminuindo volume em $valor. Volume atual: $volume_Atual");
    } else {
      print("=> O Player está desligado.");
    }
  }

  void prox_mus(){
    if (ligado){
      tocandoAgora();
      id_Musica_Atual += 1;
      print("> Mudando agora para música ${id_Musica_Atual + 1}: ${playList[id_Musica_Atual]}");
    } else {
      print("O Player está desligado.");
    }
  }

  void ant_mus(){
    if (ligado){
      tocandoAgora();
      id_Musica_Atual -= 1;
      print("< Mudando agora para música ${id_Musica_Atual + 1}: ${playList[id_Musica_Atual]}");
    } else {
      print("=> O Player está desligado.");
    }
  }

  void irParaMus(int id){
    if (id > 0) {
      id = id;
    } else {
      id *= -1;
    }
    if (ligado){
      if (id <= playList.length){
        tocandoAgora();
        id_Musica_Atual = id - 1;
        print("<> Mudando agora para música ${(id_Musica_Atual + 1)}: ${playList[id_Musica_Atual]}");
      } else {
        print("Valor inválido, essa música não está na playlist!");
      }
    } else {
      print("=> O Player está desligado.");
    }
  }
}
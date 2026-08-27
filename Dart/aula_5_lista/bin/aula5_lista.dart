void listaExemplo() {
  List alunos = []; // Lista vazia chamada "alunos"

  alunos.add('Ana'); // Adiciona o elemento "Ana" do tipo string no indice (index) 0
  alunos.add('João');
  alunos.add('Maria');
  alunos.add('Carlos');

  // Em todas as linguagens de programação, as listas começam no índice 0
  // Posição N = N - 1. Ex posição 4 == indice 3

  // print(alunos[4]); O sistema encerra se tentar usar um indice que não existe
  // Posição vazia = Crasha

  // Nos vetores (só em outras linguagens, não existe no Dart) tinha que colocar 
  // diretamente os valores em cada índice:
  // alunos[1] = 'João'
  // Pode sobstituir um valor se não colocar corretamente cada valor em seu respectivo indice
}

void lista1() {
  // List é uma classe (primeira letra maiúscula) porque tem métodos próprios
  List alunos = ['Aline', 'Carlos']; // Com valores
  alunos.add('Zé');
  alunos.add('João');
  alunos.add('Ana');
  alunos.add('João');

  print(alunos[2]); // Acessando uma posição com o index 2
  print(alunos); // Imprime a lista inteira
}

// Método remove

void lista2() {
  // List é uma classe (primeira letra maiúscula) porque tem métodos próprios
  List alunos = ['Aline', 'Carlos']; // Com valores
  alunos.add('Zé');
  alunos.add('João');
  alunos.add('Ana');
  alunos.add('João');

  /* Exemplo 2

    print(alunos); // Imprime a lista inteira
    print(alunos[0]);
    alunos.remove('Aline'); // Remove um valor da lista quando ele está contido nela
    print(alunos);
    print(alunos[0]); // Ao remover um item da lista, os itens restantes passam para frente

    alunos.remove('Daniel'); // Quando o valor não está contido na lista, o remove retorna 'false' e a lista continua igual
    print(alunos);
    print(alunos[0]);
  
  */

  /* Exemplo 3
    print(alunos); // Imprime a lista inteira
    // alunos.removeAt(1);
    alunos.removeRange(1, 3); // Remove os valores entre o intervalo 1 e 3 [ini, fim] 
                              // fim = fim - 1, 
                              //ou seja, 1, 7 == 1 a 6
    print(alunos);

    alunos.removeRange(1, alunos.length); 
    print(alunos);
  */

    print(alunos);
    alunos.remove('João'); // Quando tem elemento repetido, o remove tira o que aparecer primeiro na lista
    print(alunos);
}

void lista3() {
  List alunos = ['Aline', 'Carlos', 'Zé', 'João', 'Ana', 'João'];

  // Percorrendo uma lista
  for (int i = 0; i < alunos.length; i++) { // Se fosse i <= alunos.length daria erro, porque chega no valor da lista (lista = lista -1)
    print(alunos[i]);
  }
}

void lista3Each() {
  List alunos = ['Aline', 'Carlos', 'Zé', 'João', 'Ana', 'João'];

  // Percorrendo uma lista
  for (String aluno in alunos) { 
    print(aluno);
  }
}

void lista4() {
  List alunos = ['Aline', 'Carlos', 'Zé', 'João', 'Ana', 'João'];

  // Percorrendo uma lista ao contrário
  for (int i = alunos.length - 1; i >= 0; i--) { // Se fosse i = alunos.length (sem o -1) daria erro, porque passa o valor da lista (lista = lista -1)
    print(alunos[i]);
  }
}

void lista5() {
  List notas = [7.3, 8, 5, 9, 4, 2, 10, 3, 7];
  // Imprima quantos alunos tiveram nota >= 6

  int aprovados = 0;

  for (int i = 0; i < notas.length; i++) {
    if (notas[i] >= 6) {
      aprovados++; 
    }
  }
  print("Nº de alunos aprovados: $aprovados");
}

void lista5Each() {
  List notas = [7.3, 8, 5, 9, 4, 2, 10, 3, 7];
  // Imprima quantos alunos tiveram nota >= 6

  int aprovados = 0;

  for (var nota in notas) {
    if (nota >= 6) {
      aprovados++; 
    }
  }
  print("Nº de alunos aprovados: $aprovados");
}

void lista6() {
  // Laço for próprio para listas:
  List alunos = ['Aline', 'Carlos', 'Zé', 'João', 'Ana', 'João'];

  // for in ou for each
  for (String aluno in alunos) {
    print(aluno);
  }
}

void mist() {
  int mist = 0;
  List val = [7, 3, 1, 5, 6, 7, 10, 4, 2];

  // Procura o maior número em uma lista e o imprime
  for (int i = 0; i < val.length; i++) {
    if (val[i] >= mist) {
      mist = val[i];
    }
  }
  print(mist);
}

void main(List<String> arguments) {
  lista3Each();
}
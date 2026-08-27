void exemplo1() {
  // Tipos primitivos (principais) de variáveis
  int inteiro = -1, inteiro2 = 1;
  double num = 1.0;
  bool boolean = true;
  String meuNome = 'Miguel';

  // Identação é separar o bloco de código com chaves ({}) 
  // e tabs ou espaços:
  
  if (boolean == true) {
    print("É verdadeiro.");
  } else {
    print("É falso.");
  }

  /* Padrões de nomeclatura:
     - Arq -> snake_case     = aula6_resumo...
     - var/met -> Camel_Case = calcularResultado 
          (métodos tem parênteses '()' e variáveis não)
     - Classe -> Pascal_Case = PersonagemPrincipal */

  /* Interpolação 
    Colocar um '$' na frente da váriável dentro de um texto 
    ou, no caso de um cálculo, colocar ${variável + <operação> + 
    valor} ou, no caso de uma lista, colocar ${nomes[0]}
  */ 

  double salarioMes = 1500.12;
  List meses = ['Jan', 'Fev', 'Mar', 'Abr'];
  print("salário Mensal: $salarioMes");
  print("Salario Anual: ${salarioMes*13}");
  print("Mês do : ${meses[2]}");

  // Resto de divisão (MOD, %)

  int conta = 7%3; // = 1
  print("O resto de 7 / 3 é: $conta");

    /* As operações do Dart seguem o padrão da matemática
      / e * -> + e -
      Ex: 4+3*2 = 10 (3*2 (6) primeiro e depois 4+6)
    */ 

  /* Operadores Relacionais: 
    - <  : menor que
    - >  : maior que
    - >= : maior ou igual a
    - <= : menor ou igual a
    - == : igual a (o valor é o mesmo, o "=" 
        só passa o valor de uma variável para outra)
    - !  : falso (!não = sim)
  */
  
  int val = 10;
  if (val >= 7) {
    print("Aprovado");
  } else if (val >= 5) {
    print("Em recuperação");
  } else {
    print("Reprovado");
  }

  // Também o if else pode ser usado de uma terceira forma (Ternário):
  // "a > b ? p(a) : p(b)" ----> Se a for maior do que b, print a, se não (:) print b
  // Exemplo Flutter: Retunr isLoading ? CircularBar() : body;
  // |-> Se estiver carregando, mostrar barra circular, se não, mostrar o corpo da tela

  /* If, else e else if 
    if + if + if são idependentes, ou seja, cada um vai
      ser analisado separadamente, consumindo processamento 
      atoa

    if + else if + else é relacionado, ou seja, se naõ for if, 
      vai para else if, e se não for else if, vai para else  
  */

  /* Operadores Lógicos 
      - && : E (se tal condição E tal concição {})
      - || : Ou (se tal condição OU tal condição)
      -  ! : Não (se (!)variável NÃO for true)
  */

  /* Debug 
  
    Usando um breakpoint, podemos parar o código em pontos específicos para analisar a lógica e
    conferir na prática como ela está sendo implementada, analisando cada variável quando sendo
    atualizada em cada brakpoint
  
  */

  // Comandos de repetição
  int contador = 100;

  // While é usado para momentos específicos, como quando um programa está rodando ou 
  // um loading está sendo carregado, por exemplo

  while (contador >= 1) {
    print("Contador");
    contador--;
  }

  /* 
    while (resposta != fechar) {
      programa continua rodando
    } 

    ou 

    while (isLoading) {
      mostrar barra de carregamento
    }
  */

  // For é usado em listas e coleções

  for (int i = 0; i < 100; i++) {
    print("Valor atual: $i");
  } 

  // Usado especificamente para coleções em que o contador não é essencial
  List nomes = ['Samuel', 'Joabe', 'Davi', 'Abraão'];
  for (String nome in nomes) {
    print("Olá, $nome");
  }

  // OBS: A lista não pode ter elementos vazios, diferente do vetor. 
  // Quando um valor sai da lista e tem outros elementos antes dele, 
  // o que es atrás vem para frente, ex: 0, __, 2, 3... -> 0, 1, 2...  

  // OBS2: Uma lista sempre terá o número de elementos + 1 em relação 
  //    às suas posições (todas as listas começam em 0, dando erro quando
  //    se usa uma posição que não existe) 
  // Ex: Tamanho lista = 5 (0, 1, 2, 3, 4). Se usar print(lista[5]), vai 
  //      dar erro (OUT OF BOUNDS ou OUT OF RANGE no Dart)



}

// Método principal que vai ser rodado primeiro,
// independente se está antes ou depois de todos os outros métodos
void main(List<String> arguments) {
  
}

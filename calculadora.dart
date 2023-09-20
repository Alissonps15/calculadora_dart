//Importando a biblioteca:
import "dart:io";

//As variaveis:
int n1 = 0; // Numero 1;
int n2 = 0; // Numero 2;
int somar = 0; //de soma;
int subtrair = 0; //de subtração;
double dividir = 0; // de divisão;
int multiplicar = 0; //de multiplicação;
var op = " "; //Variavel em string para a Operação.
void soma(int a, int b) {
  //função de soma
  somar = a + b; //Calculo da função
  print("$a + $b = $somar"); //Resultado da soma
}

Future<void> subt(int a, int b) async {
  // função de subtração
  subtrair = a - b;
  print("$a - $b = $subtrair"); //Resultado da subtração
}

Future<void> divi(int a, int b) async {
  // função de divisão
  dividir = a / b;
  print("$a + $b = $dividir"); //Resulato da divisão
}

Future<void> mult(int a, int b) async {
  // função de multiplicação
  multiplicar = a * b;
  print("$a x $b = $multiplicar"); //Resultado multiplicação
}

void main() {
  // captura de dados do teclado:
  stdout.write("Informe o primeiro numero  "); //o que a pessoa tem que fazer;
  final entradaDoUsuario1 =
      stdin.readLineSync()!; //Função de captura do que o usuario;
  final int n1 = int.parse(entradaDoUsuario1); //Armazena o valor numero 1.

  stdout.write("Informe o segundo numero  ");
  final entradaDoUsuario2 = stdin.readLineSync()!;
  final int n2 = int.parse(entradaDoUsuario2); //Armazena o valor numero 2.

  stdout.write(
      "Informe a operação [digite: 'somar' para soma, 'subtrair' para subtração, 'dividir' para divisão e 'multiplicar' para multiplicação]: ");
  op = stdin.readLineSync().toString(); //Armazena a operação em string

  //Função de switch case para as operações:
  switch (op) {
    case "somar": //soma;
      soma(n1, n2);
      break;
    case "subtrair": //subtrai;
      subt(n1, n2);
      break;
    case "dividir": //divide;
      divi(n1, n2);
      break;
    case "multiplicar": //Multiplica;

      mult(n1, n2);
      break;
  }
}

import 'dart:io';
import '../exercicios/exercicio1/exercicio1.dart';
import '../exercicios/exercicio2/exercicio2.dart';
import '../exercicios/exercicio3/exercicio3.dart';
import '../exercicios/exercicio4/exercicio4.dart';
import '../exercicios/exercicio5/exercicio5.dart';

void main() {
  while (true) {
    print('==== MENU ====');
    print('1 - Exercício 1');
    print('2 - Exercício 2');
    print('3 - Exercício 3');
    print('4 - Exercício 4');
    print('5 - Exercício 5');
    print('0 - Sair');
    stdout.write('Escolha uma opção: ');
    String? opcao = stdin.readLineSync();
    switch (opcao) {
      case '1':
        exercicio1();
        break;
      case '2':
        exercicio2();
        break;
      case '3':
        exercicio3();
        break;
      case '4':
        exercicio4();
        break;
      case '5':
        exercicio5();
        break;
      case '0':
        print('Encerrando...');
        return;
      default:
        print('Opção inválida!');
    }
    print('');
  }
}

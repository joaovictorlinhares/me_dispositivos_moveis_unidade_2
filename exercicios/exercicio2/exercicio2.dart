import 'dart:io';
import 'bebe.dart';
import 'maternidade.dart';

void exercicio2() {
  final maternidade = Maternidade();

  while (true) {
    stdout.write("Digite o nome do recém-nascido (ou 'fim' para encerrar): ");
    String? nome = stdin.readLineSync();
    if (nome == null || nome.toLowerCase() == 'fim') break;

    stdout.write("Digite o sexo (M/F): ");
    String? sexo = stdin.readLineSync()?.toUpperCase();

    stdout.write("Digite o peso (em kg): ");
    double peso = double.parse(stdin.readLineSync()!);

    final bebe = Bebe(nome, sexo ?? '', peso);
    maternidade.adicionarBebe(bebe);
  }

  maternidade.imprimirDados();
  maternidade.imprimirMaiorFeminino();
  maternidade.imprimirPercentuais();
}

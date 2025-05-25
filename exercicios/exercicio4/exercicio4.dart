import 'dart:io';
import 'candidato.dart';
import 'empresa.dart';

void exercicio4() {
  final empresa = Empresa();

  while (true) {
    stdout.write("Digite o nome do candidato (ou 'FIM' para encerrar): ");
    String? nome = stdin.readLineSync();
    if (nome == null || nome.toUpperCase() == 'FIM') break;

    stdout.write("Sexo (M/F): ");
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write("Idade: ");
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write("Tem experiência? (S/N): ");
    String exp = stdin.readLineSync()!.toUpperCase();
    bool experiencia = exp == 'S';

    final candidato = Candidato(nome, sexo, idade, experiencia);
    empresa.adicionar(candidato);
  }

  empresa.gerarRelatorios();
}

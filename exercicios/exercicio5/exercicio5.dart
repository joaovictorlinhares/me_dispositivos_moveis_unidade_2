import 'dart:io';
import 'professor.dart';
import 'universidade.dart';

void exercicio5() {
  final universidade = Universidade();

  while (true) {
    stdout.write("Digite o código do professor (ou '9999' para encerrar): ");
    String? codigo = stdin.readLineSync();
    if (codigo == null || codigo == '9999') break;

    stdout.write("Digite o nome: ");
    String nome = stdin.readLineSync()!;

    stdout.write("Digite o sexo (M/F): ");
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write("Digite o número de horas de aula no mês: ");
    int horas = int.parse(stdin.readLineSync()!);

    final professor = Professor(codigo, nome, sexo, horas);
    universidade.adicionarProfessor(professor);
  }

  universidade.listarProfessores();
  universidade.calcularMediasPorSexo();
}

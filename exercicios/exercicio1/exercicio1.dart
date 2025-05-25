import 'dart:io';
import 'aluno.dart';
import 'turma.dart';

void exercicio1() {
  Turma turma = Turma();

  while (true) {
    stdout.write("Digite a matrícula (ou '00000' para encerrar): ");
    String? matricula = stdin.readLineSync();
    if (matricula == '00000') break;

    stdout.write("Digite o nome do aluno: ");
    String? nome = stdin.readLineSync();

    stdout.write("Digite o sexo (M/F): ");
    String? sexo = stdin.readLineSync()?.toUpperCase();

    List<double> notas = [];
    for (int i = 1; i <= 3; i++) {
      stdout.write("Digite a nota $i: ");
      double nota = double.parse(stdin.readLineSync()!);
      notas.add(nota);
    }

    stdout.write("Digite o número de faltas: ");
    int faltas = int.parse(stdin.readLineSync()!);

    turma.adicionarAluno(Aluno(matricula!, nome!, sexo!, notas, faltas));
  }

  turma.exibirResultados();
}

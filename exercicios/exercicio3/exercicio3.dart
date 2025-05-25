import 'dart:io';
import 'candidato.dart';
import 'vestibular.dart';

void exercicio3() {
  final vestibular = Vestibular();

  while (true) {
    stdout.write("Digite o código do candidato (ou '0000' para encerrar): ");
    String? codigo = stdin.readLineSync();
    if (codigo == null || codigo == '0000') break;

    stdout.write("Digite o curso (CC ou SI): ");
    String curso = stdin.readLineSync()!.toUpperCase();

    stdout.write("Digite o nome: ");
    String nome = stdin.readLineSync()!;

    stdout.write("Digite o sexo (M ou F): ");
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write("Digite a pontuação (0 a 5000): ");
    int pontuacao = int.parse(stdin.readLineSync()!);

    final candidato = Candidato(codigo, curso, nome, sexo, pontuacao);
    vestibular.adicionar(candidato);
  }

  vestibular.imprimirCandidatosCCAcima2500();
  vestibular.imprimirMenorPontuacaoMasculino();
  vestibular.imprimirMaiorPontuacaoSIHomem();
  vestibular.imprimirPercentualPorSexo();
}

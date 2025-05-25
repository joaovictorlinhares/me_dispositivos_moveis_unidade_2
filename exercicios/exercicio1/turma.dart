import 'aluno.dart';

class Turma {
  List<Aluno> alunos = [];

  void adicionarAluno(Aluno aluno) {
    alunos.add(aluno);
  }

  double calcularMediaTurma() {
    return alunos.isNotEmpty
        ? alunos.map((a) => a.media).reduce((a, b) => a + b) / alunos.length
        : 0;
  }

  double percentualAprovados() {
    var aprovados = alunos.where((a) => a.aprovado).toList();
    return alunos.isNotEmpty ? (aprovados.length / alunos.length) * 100 : 0;
  }

  Aluno? melhorAlunoPorSexo(String sexo) {
    var aprovados = alunos.where((a) => a.aprovado && a.sexo == sexo).toList();
    if (aprovados.isEmpty) return null;
    aprovados.sort((a, b) => b.media.compareTo(a.media));
    return aprovados.first;
  }

  double mediaAlunas() {
    var alunas = alunos.where((a) => a.sexo == 'F').toList();
    return alunas.isNotEmpty
        ? alunas.map((a) => a.media).reduce((a, b) => a + b) / alunas.length
        : 0;
  }

  void exibirResultados() {
    print("\nRESULTADOS:");
    print("a) Média da turma: ${calcularMediaTurma().toStringAsFixed(2)}");
    print(
      "b) Percentual de alunos aprovados: ${percentualAprovados().toStringAsFixed(2)}%",
    );
    var melhorM = melhorAlunoPorSexo('M');
    var melhorF = melhorAlunoPorSexo('F');
    if (melhorM != null) {
      print(
        "c) Matrícula do aluno masculino com maior média aprovado: ${melhorM.matricula} (Média: ${melhorM.media.toStringAsFixed(2)})",
      );
    } else {
      print("c) Nenhum aluno masculino aprovado.");
    }
    if (melhorF != null) {
      print(
        "   Matrícula da aluna com maior média aprovada: ${melhorF.matricula} (Média: ${melhorF.media.toStringAsFixed(2)})",
      );
    } else {
      print("   Nenhuma aluna aprovada.");
    }
    print("d) Média das alunas: ${mediaAlunas().toStringAsFixed(2)}");
  }
}

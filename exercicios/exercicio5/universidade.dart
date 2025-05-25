import 'professor.dart';

class Universidade {
  List<Professor> professores = [];

  void adicionarProfessor(Professor p) {
    professores.add(p);
  }

  void listarProfessores() {
    print("\nListagem de Professores:");
    for (var p in professores) {
      print(p);
    }
  }

  void calcularMediasPorSexo() {
    var homens = professores.where((p) => p.sexo == 'M');
    var mulheres = professores.where((p) => p.sexo == 'F');

    double mediaHomens =
        homens.isNotEmpty
            ? homens.map((p) => p.salarioLiquido).reduce((a, b) => a + b) /
                homens.length
            : 0;

    double mediaMulheres =
        mulheres.isNotEmpty
            ? mulheres.map((p) => p.salarioLiquido).reduce((a, b) => a + b) /
                mulheres.length
            : 0;

    print("\nMédia dos salários líquidos:");
    print("- Homens: R\$ ${mediaHomens.toStringAsFixed(2)}");
    print("- Mulheres: R\$ ${mediaMulheres.toStringAsFixed(2)}");
  }
}

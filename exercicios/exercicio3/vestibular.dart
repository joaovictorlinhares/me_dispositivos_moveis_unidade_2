import 'candidato.dart';

class Vestibular {
  List<Candidato> candidatos = [];

  void adicionar(Candidato c) {
    candidatos.add(c);
  }

  void imprimirCandidatosCCAcima2500() {
    print(
      "\nA) Candidatos de Ciência da Computação com pontuação acima de 2500:",
    );
    for (var c in candidatos) {
      if (c.curso == "CC" && c.pontuacao > 2500) {
        print(
          "- Código: ${c.codigo}, Nome: ${c.nome}, Pontuação: ${c.pontuacao}",
        );
      }
    }
  }

  void imprimirMenorPontuacaoMasculino() {
    var homens = candidatos.where((c) => c.sexo == 'M');
    if (homens.isEmpty) {
      print("\nB) Nenhum candidato do sexo masculino cadastrado.");
      return;
    }

    var menor = homens.reduce((a, b) => a.pontuacao < b.pontuacao ? a : b);
    print("\nB) Candidato do sexo masculino com menor pontuação:");
    print("- Nome: ${menor.nome}, Pontuação: ${menor.pontuacao}");
  }

  void imprimirMaiorPontuacaoSIHomem() {
    var homensSI = candidatos.where((c) => c.sexo == 'M' && c.curso == 'SI');
    if (homensSI.isEmpty) {
      print("\nC) Nenhum homem inscrito no curso de SI.");
      return;
    }

    var maior = homensSI.reduce((a, b) => a.pontuacao > b.pontuacao ? a : b);
    print(
      "\nC) Código do candidato do sexo masculino com maior pontuação em SI:",
    );
    print("- Código: ${maior.codigo}, Pontuação: ${maior.pontuacao}");
  }

  void imprimirPercentualPorSexo() {
    int total = candidatos.length;
    int masculinos = candidatos.where((c) => c.sexo == 'M').length;
    int femininos = candidatos.where((c) => c.sexo == 'F').length;

    double percM = total > 0 ? (masculinos / total) * 100 : 0;
    double percF = total > 0 ? (femininos / total) * 100 : 0;

    print("\nD) Percentual de candidatos por sexo:");
    print("- Masculino: ${percM.toStringAsFixed(2)}%");
    print("- Feminino: ${percF.toStringAsFixed(2)}%");
  }
}

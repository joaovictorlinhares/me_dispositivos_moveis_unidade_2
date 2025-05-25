import 'bebe.dart';

class Maternidade {
  List<Bebe> bebes = [];
  Map<String, int> contagemClassificacao = {
    "Baixo peso": 0,
    "Peso normal": 0,
    "Alto peso": 0,
  };

  Bebe? maiorFeminino;

  void adicionarBebe(Bebe bebe) {
    bebes.add(bebe);
    contagemClassificacao[bebe.classificacao] =
        (contagemClassificacao[bebe.classificacao] ?? 0) + 1;

    if (bebe.sexo == 'F') {
      if (maiorFeminino == null || bebe.peso > maiorFeminino!.peso) {
        maiorFeminino = bebe;
      }
    }
  }

  void imprimirDados() {
    print("\nA) Dados dos recém-nascidos:");
    for (var bebe in bebes) {
      print(bebe);
    }
  }

  void imprimirMaiorFeminino() {
    print("\nB) Recém-nascida do sexo feminino com maior peso:");
    if (maiorFeminino != null) {
      print(
        "- Nome: ${maiorFeminino!.nome}, Peso: ${maiorFeminino!.peso.toStringAsFixed(2)} kg",
      );
    } else {
      print("- Nenhuma recém-nascida cadastrada.");
    }
  }

  void imprimirPercentuais() {
    print("\nC) Percentual por classificação de peso:");
    int total = bebes.length;
    contagemClassificacao.forEach((classe, qtd) {
      double percentual = total > 0 ? (qtd / total) * 100 : 0;
      print("- $classe: ${percentual.toStringAsFixed(2)}%");
    });
  }
}

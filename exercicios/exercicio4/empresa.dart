import 'candidato.dart';

class Empresa {
  List<Candidato> candidatos = [];

  void adicionar(Candidato c) {
    candidatos.add(c);
  }

  void gerarRelatorios() {
    int totalHomens = 0;
    int totalMulheres = 0;
    int somaIdadeHomensExperientes = 0;
    int qtdHomensExperientes = 0;
    int qtdHomensAcima45 = 0;
    int qtdMulheresMenor30ComExperiencia = 0;
    Candidato? mulherMaisJovemComExperiencia;

    for (var c in candidatos) {
      if (c.sexo == 'M') {
        totalHomens++;
        if (c.experiencia) {
          somaIdadeHomensExperientes += c.idade;
          qtdHomensExperientes++;
        }
        if (c.idade > 45) {
          qtdHomensAcima45++;
        }
      } else if (c.sexo == 'F') {
        totalMulheres++;
        if (c.idade < 30 && c.experiencia) {
          qtdMulheresMenor30ComExperiencia++;
        }
        if (c.experiencia) {
          if (mulherMaisJovemComExperiencia == null ||
              c.idade < mulherMaisJovemComExperiencia.idade) {
            mulherMaisJovemComExperiencia = c;
          }
        }
      }
    }

    double mediaIdadeHomensExperientes =
        qtdHomensExperientes > 0
            ? somaIdadeHomensExperientes / qtdHomensExperientes
            : 0;

    double percHomensAcima45 =
        totalHomens > 0 ? (qtdHomensAcima45 / totalHomens) * 100 : 0;

    // Resultados
    print("\nA) Número de candidatos:");
    print("- Masculino: $totalHomens");
    print("- Feminino: $totalMulheres");

    print(
      "\nB) Idade média dos homens com experiência: ${mediaIdadeHomensExperientes.toStringAsFixed(2)} anos",
    );

    print(
      "\nC) Porcentagem de homens com mais de 45 anos: ${percHomensAcima45.toStringAsFixed(2)}%",
    );

    print(
      "\nD) Mulheres com menos de 30 anos e com experiência: $qtdMulheresMenor30ComExperiencia",
    );

    print("\nE) Candidata com menor idade e com experiência:");
    if (mulherMaisJovemComExperiencia != null) {
      print(
        "- Nome: ${mulherMaisJovemComExperiencia.nome}, Idade: ${mulherMaisJovemComExperiencia.idade}",
      );
    } else {
      print("- Nenhuma candidata com experiência encontrada.");
    }
  }
}

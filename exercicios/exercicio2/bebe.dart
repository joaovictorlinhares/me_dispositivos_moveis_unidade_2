class Bebe {
  String nome;
  String sexo;
  double peso;
  String classificacao;

  Bebe(this.nome, this.sexo, this.peso) : classificacao = classificarPeso(peso);

  static String classificarPeso(double peso) {
    if (peso < 2.5) {
      return "Baixo peso";
    } else if (peso <= 4.0) {
      return "Peso normal";
    } else {
      return "Alto peso";
    }
  }

  @override
  String toString() {
    return "- Nome: $nome, Sexo: $sexo, Classificação: $classificacao";
  }
}

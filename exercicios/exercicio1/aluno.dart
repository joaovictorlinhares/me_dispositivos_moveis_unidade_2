class Aluno {
  String matricula;
  String nome;
  String sexo;
  List<double> notas;
  int faltas;
  double media;
  bool aprovado;

  Aluno(this.matricula, this.nome, this.sexo, this.notas, this.faltas)
    : media = notas.reduce((a, b) => a + b) / notas.length,
      aprovado =
          (notas.reduce((a, b) => a + b) / notas.length >= 7.0 && faltas <= 18);
}
